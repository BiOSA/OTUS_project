-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2023-12-25
-- Description: Выгрузка объекта синхронизации слоя DDS
-- EXEC dbo.AbstractObjectDDSProcess 1, 'tz.Application'
CREATE PROCEDURE dbo.AbstractObjectDDSProcess
      @BatchId            BIGINT
    , @ObjectRegisterName VARCHAR(50)
	, @IsForcedLoad       BIT         = 1 --Если объект выключен в ObjectRegister, то установка этого параметра позволяет принудительно провести обработку
    , @IsDebug            BIT         = 1 --Печать отладочной информации
    , @IsReloadMissedOnly BIT         = 1 --Загружать только недостающие в слое DDS записи
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT, XACT_ABORT ON;

    DECLARE
          @MAX_EFFECTIVE_DATE         DATE          = CAST(prm.RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE)
        , @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
        , @BDS_PROCESS_DDS            BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'PROCESS_DDS')
        , @BDS_ERROR                  BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'ERROR')
        , @BDS_DONE                   BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'DONE')
        , @DDSTableName               sysname
        , @DDSPostProcedure           sysname
        , @HasDDSCodeTranslate        BIT
        , @DDSFullTableName           sysname
        , @StageTableName             sysname
        , @IsEnabled                  BIT
        , @ObjectRegisterId           BIGINT
        , @BatchDetailId              BIGINT
        , @DDSChangedRowAffectedCount BIGINT        = 0
        , @DDSNewRowAffectedCount     BIGINT        = 0
        , @LogMessageText             XML
        , @MessageText                VARCHAR(MAX)
        , @KeyField                   NVARCHAR(MAX)
        , @STG_SRV                    sysname       = CAST(prm.RegisterGet('STAGE_DB_NAME', LEFT(DB_NAME(), 1) + 'Z_STG') AS sysname)
        , @DDS_SRV                    sysname       = CAST(prm.RegisterGet('DDS_DB_NAME',   LEFT(DB_NAME(), 1) + 'Z_DDS') AS sysname)
        , @ParentLogId                BIGINT
        , @DDSMainProcedure           sysname
		, @KeyFieldDDSList            NVARCHAR(MAX)
		, @KeyFieldDDSCheckNULLList   NVARCHAR(MAX)
		, @KeyFieldCompare            NVARCHAR(MAX)
		, @MissedRecordDeleteSQL      NVARCHAR(MAX)
        , @DeleteDDSQuery             NVARCHAR(MAX) = N'DELETE FROM <@DDS_SRV>.<@DDSTableName> WHERE BatchId = @BatchId'
        , @SearchChangedQuery         NVARCHAR(MAX) = N'INSERT INTO ##AbstractObjectStageProcess_changed (Id, EffectiveDateTillPrev, EffectiveDateFromCurrent, IsRetroActive)
SELECT 
      dds_old.Id
    --если данные меняются задним числом, причем возможны случаи неоднократного обновления, то дата события не меняется (там не триггер, а дата приходит из клиентского приложения). Сохраняем предыдущие записи, давая им время жизни 0, а последующим записям прибавляем по 2мс от начала
    , IIF(dds.IsRetroActive = 1, dds_old.EffectiveDateFrom,                 DATEADD(ms, -2, stg.EffectiveDate)) AS EffectiveDateTillPrev
    , IIF(dds.IsRetroActive = 1, DATEADD(ms, 2, dds_old.EffectiveDateFrom), stg.EffectiveDate)                  AS EffectiveDateFromCurrent
    , dds.IsRetroActive
FROM       <@STG_SRV>.<@StageTableName> stg 
INNER JOIN 
(
    SELECT <@KeyFieldDDSList>, dds.Id, ROW_NUMBER() OVER (PARTITION BY <@KeyFieldDDSList> ORDER BY dds.EffectiveDateTill DESC, dds.Id DESC) AS rn, IIF(stg.EffectiveDate <= dds.EffectiveDateFrom, 1, 0) AS IsRetroActive
    FROM       <@STG_SRV>.<@StageTableName> stg 
    INNER JOIN <@DDS_SRV>.<@DDSTableName>   dds ON <@KeyFieldCompare>
    WHERE (stg.BatchId = @BatchId)
) dds ON <@KeyFieldCompare>
     AND dds.rn = 1
INNER JOIN <@DDS_SRV>.<@DDSTableName> dds_old ON dds_old.Id = dds.Id
WHERE   (stg.BatchId = @BatchId)
    AND (
        <@SearchFields>
    );'
        , @InsertQueryWKF              NVARCHAR(MAX) = N'
DECLARE @DataSourceName VARCHAR(50) = (
    SELECT TOP 1 ds.Code
    FROM       ' + DB_NAME() + '.dbo.ObjectRegister org
    INNER JOIN ' + DB_NAME() + '.dbo.DataSource     ds  ON ds.DataSourceId      = org.DataSourceId
    WHERE org.Name= ''<@ObjectRegisterName>''
);

BEGIN TRAN

--внесение измененных
INSERT INTO <@DDS_SRV>.<@DDSTableName>(EffectiveDateFrom, EffectiveDateTill, BatchId, IsNew, DataSourceName, <@InsertFields>)
SELECT i.EffectiveDateFromCurrent, @MAX_EFFECTIVE_DATE, stg.BatchId, 0, @DataSourceName, <@SelectFields>
FROM       ##AbstractObjectStageProcess_changed i
INNER JOIN <@DDS_SRV>.<@DDSTableName>   dds ON dds.Id          = i.Id
INNER JOIN <@STG_SRV>.<@StageTableName> stg ON <@KeyFieldCompare>
WHERE   (stg.BatchId = @BatchId);
SET @DDSChangedRowAffectedCount = @@ROWCOUNT;

UPDATE dds SET
    EffectiveDateTill = i.EffectiveDateTillPrev
FROM ##AbstractObjectStageProcess_changed i
INNER JOIN <@DDS_SRV>.<@DDSTableName> dds ON dds.Id = i.Id;

--внесение новых
INSERT INTO <@DDS_SRV>.<@DDSTableName>(EffectiveDateFrom, EffectiveDateTill, BatchId, IsNew, DataSourceName, <@InsertFields>)
SELECT stg.EffectiveDate, @MAX_EFFECTIVE_DATE, stg.BatchId, 1, @DataSourceName, <@SelectFields>
FROM      <@STG_SRV>.<@StageTableName> stg
LEFT JOIN <@DDS_SRV>.<@DDSTableName>   dds ON <@KeyFieldCompare>
WHERE   (stg.BatchId = @BatchId)
    AND (dds.Id      IS NULL);
SET @DDSNewRowAffectedCount = @@ROWCOUNT;

COMMIT TRAN;
'
        , @InsertQueryWoKF              NVARCHAR(MAX) = N'
DECLARE @DataSourceName VARCHAR(50) = (
    SELECT TOP 1 ds.Code
    FROM       ' + DB_NAME() + '.dbo.ObjectRegister org
    INNER JOIN ' + DB_NAME() + '.dbo.DataSource     ds  ON ds.DataSourceId      = org.DataSourceId
    WHERE org.Name= ''<@ObjectRegisterName>''
);
BEGIN TRAN

--внесение новых
INSERT INTO <@DDS_SRV>.<@DDSTableName>(EffectiveDateFrom, EffectiveDateTill, BatchId, IsNew, DataSourceName, <@InsertFields>)
SELECT stg.EffectiveDate, @MAX_EFFECTIVE_DATE, stg.BatchId, 1, @DataSourceName, <@SelectFields>
FROM      <@STG_SRV>.<@StageTableName> stg
WHERE   (stg.BatchId     = @BatchId);
SET @DDSNewRowAffectedCount = @@ROWCOUNT;

COMMIT TRAN;
'
        , @CurrentQuery        NVARCHAR(MAX)
        , @CurrentParams       NVARCHAR(MAX)
        , @SearchFields        NVARCHAR(MAX)
        , @SelectFields        NVARCHAR(MAX)
        , @InsertFields        NVARCHAR(MAX);

    SELECT 
          @ObjectRegisterId    = sr.ObjectRegisterId
        , @DDSTableName        = ISNULL(sr.DDSTableName, sr.[Name])
        , @StageTableName      = ISNULL(sr.StageTableName, sr.[Name])
        , @DDSPostProcedure    = sr.DDSPostProcedure
        , @DDSMainProcedure    = sr.DDSMainProcedure
        , @HasDDSCodeTranslate = ISNULL(sr.HasDDSCodeTranslate, 0)
        , @IsEnabled           = sr.IsEnabled
    FROM dbo.ObjectRegister sr
    WHERE sr.[Name] = @ObjectRegisterName;

    SET @DDSFullTableName = @DDS_SRV+'.'+@DDSTableName;
    SET @IsForcedLoad = ISNULL(@IsForcedLoad, 0);

    SELECT @BatchDetailId = bd.BatchDetailId
    FROM dbo.BatchDetail bd
    WHERE   bd.BatchId          = @BatchId
        AND bd.ObjectRegisterId = @ObjectRegisterId;

    IF @@ROWCOUNT = 0
	    THROW 50001, 'Запись не найдена в dbo.BatchDetail. Выгрузка невозможна', 1;

    UPDATE dbo.BatchDetail SET StatusId = @BDS_PROCESS_DDS WHERE BatchDetailId = @BatchDetailId;
	
	SELECT 
		  --список ключевых полей из DDS
		  @KeyFieldDDSList = STRING_AGG('dds.'+NULLIF(LTRIM(RTRIM(srf.TargetFieldName)), ''), ',')
		  --Строка сравнения ключевых полей в STG и DDS
		, @KeyFieldCompare = STRING_AGG('dds.'+NULLIF(LTRIM(RTRIM(srf.TargetFieldName)), '') + ' = stg.'+NULLIF(LTRIM(RTRIM(srf.TargetFieldName)), ''), ' AND ')
		  --список ключевых полей из DDS c спроверкой на NULL
		, @KeyFieldDDSCheckNULLList = STRING_AGG('dds.'+NULLIF(LTRIM(RTRIM(srf.TargetFieldName)) + ' IS NOT NULL', ''), ' AND ')
	FROM dbo.ObjectRegisterField srf
    WHERE srf.ObjectRegisterId = @ObjectRegisterId
        AND srf.IsEnabled      = 1
        AND srf.IsKeyField     = 1;

	--Если надо сделать не полную выгрузку батча, а только перевыгрузить те записи, которых по какой-то причине нет в DDS, то в STG удаляем их.
	SET @MissedRecordDeleteSQL = N'DELETE FROM stg
	FROM ' + @STG_SRV + '.' + @StageTableName + ' stg
	LEFT JOIN ' + @DDS_SRV +'.' + @DDSTableName + ' dds ON ' + @KeyFieldCompare + '
	WHERE (' + @KeyFieldDDSCheckNULLList + ') AND stg.BatchId = ' + CAST(@BatchId AS VARCHAR(10))+';';
	IF @IsReloadMissedOnly = 1 BEGIN
		IF @IsDebug = 1 BEGIN
			SET @MessageText = '--@IsReloadMissedOnly = 1. Удаление из STG' + CHAR(13) +  @MissedRecordDeleteSQL;
			EXEC tz_dwh.dbo_Print @Instr = @MessageText;
		END;
		EXEC(@MissedRecordDeleteSQL);
	END;
	
    BEGIN TRY
        IF @IsEnabled = 0 AND @IsForcedLoad = 0
		    THROW 50001, 'Объект отключен для выгрузки', 1;

        --Выполнение стандартной процедуры DDS или индивидуальной
        IF OBJECT_ID(@DDSMainProcedure) IS NOT NULL BEGIN
            IF @IsDebug = 1 BEGIN
                PRINT 'Выполнение индивидуальной процедуры DDS:'
                SET @MessageText = 'EXEC ' + @DDSMainProcedure + ' @BatchId = ' + CAST(@BatchId AS VARCHAR(10)) + ', @ObjectRegisterName = ''' + @ObjectRegisterName+ ''';';
                EXEC tz_dwh.dbo_Print @Instr = @MessageText;
            END;
            EXEC @DDSMainProcedure
                  @BatchId            = @BatchId
                , @ObjectRegisterName = @ObjectRegisterName;
        END ELSE BEGIN
            --Поиск изменившихся записей
            --реестр измененных
            DROP TABLE IF EXISTS ##AbstractObjectStageProcess_changed;
            CREATE TABLE ##AbstractObjectStageProcess_changed
            (
                  Id                       BIGINT   NULL
                , EffectiveDateTillPrev    DATETIME NULL
            	, EffectiveDateFromCurrent DATETIME NULL
            	, IsRetroActive            BIT      NULL--Признак, что запись была изменена задним числом: у старой и новой записи одинаковые даты изменения. Для старой мы сделаем "Дату до" равной "Дате до", а новой прибавим пару миллисекунд в "Дату от"
            );

            --Подзапрос для поиска полей, которые изменились. В формате поле Stage не равно полю DDS ИЛИ одно из них пустое, а второе не пустое
            SELECT 
                  @SearchFields =  tz_dwh.XMLParseBack((
                                     SELECT STRING_AGG(
												CAST(
													'(stg.['+TargetFieldName+']!= dds_old.['+TargetFieldName+']) OR (stg.['+TargetFieldName+'] IS NULL AND dds_old.['+TargetFieldName+'] IS NOT NULL) OR (stg.['+TargetFieldName+'] IS NOT NULL AND dds_old.['+TargetFieldName+'] IS NULL)'
												AS VARCHAR(MAX))
												,' OR '
											)
										    WITHIN GROUP(ORDER BY ObjectRegisterFieldId)
                                     FROM dbo.ObjectRegisterField srf
                                     WHERE   srf.ObjectRegisterId = @ObjectRegisterId
                                         AND IsEnabled            = 1
                                         AND IsChangesTracked     = 1
                                 ))
                --список полей для выборки из STG
                , @SelectFields =  tz_dwh.XMLParseBack((
                                       SELECT STRING_AGG(
													CAST(
														IIF(srf.IsStageProcessed = 1, 'stg.['+srf.TargetFieldName+']', srf.SourceQuery)--если данные напрямую из STG, то там формула. В ней прописаны алиасы
													AS VARCHAR(MAX))
													,','
											   )
											   WITHIN GROUP(ORDER BY ObjectRegisterFieldId)
                                       FROM dbo.ObjectRegisterField srf
                                       WHERE   srf.ObjectRegisterId = @ObjectRegisterId
                                           AND IsEnabled            = 1
                                           AND IsStage2DDSIgnored   = 0
                                   ))
                --список полей для внесение в DDS
                , @InsertFields =  tz_dwh.XMLParseBack((
                                       SELECT STRING_AGG(
													CAST('['+TargetFieldName+']'
													AS VARCHAR(MAX))
													,','
											   )
											   WITHIN GROUP(ORDER BY ObjectRegisterFieldId)
                                       FROM dbo.ObjectRegisterField srf
                                       WHERE   srf.ObjectRegisterId = @ObjectRegisterId
                                           AND IsEnabled            = 1
                                           AND IsStage2DDSIgnored   = 0
                                   ));

			--Удаление записей от ранее запущенной пачки
            SELECT @CurrentQuery = REPLACE(REPLACE(@DeleteDDSQuery
                                       , '<@DDS_SRV>',        ISNULL(NULLIF(@DDS_SRV,       ''), '<NULL>'))
                                       , '<@DDSTableName>',   ISNULL(NULLIF(@DDSTableName,  ''), '<NULL>'))
                 , @CurrentParams = N'@BatchId BIGINT';

            SET @LogMessageText = (
                    SELECT 
                          @CurrentQuery  AS Query 
                        , @CurrentParams AS Params
                        , (SELECT @BatchId AS BatchId, @ObjectRegisterName AS ObjectRegisterName FOR XML PATH('Params'), TYPE)
                    FOR XML PATH('Params')
                );
            EXEC log.RegisterInsert
                  @BatchId          = @BatchId
                , @ObjectRegisterId = @ObjectRegisterId
                , @StatusCode       = 'DDS_CLEAR_PRIOR_START'
                , @MessageText      = @LogMessageText
                , @Sender           = @Sender
                , @Params           = NULL
                , @ErrorLevel       = 0
                , @ParentLogId      = NULL
                , @ResultId         = @ParentLogId OUT;

			--если проиходит довыгрузка, то удалять всё нельзя, догрузим только то, что осталось в STG
			IF @IsReloadMissedOnly = 0 BEGIN
				IF @IsDebug = 1 BEGIN
					SET @MessageText = '--Удаление из STG для довыгрузки' + CHAR(13) + 'DECLARE @BatchId = ' + CAST(@BatchId AS VARCHAR(10)) + CHAR(13) + @CurrentQuery;
					EXEC tz_dwh.dbo_Print @Instr = @MessageText;
				END;
				EXEC master.dbo.sp_executesql
					  @stmt     = @CurrentQuery
					, @Params   = @CurrentParams
					, @BatchId  = @BatchId;
			END;

            --Только для объектов, у которых есть ключевое поле. Иначе - полная выгрузка за период
            IF (@KeyFieldDDSList IS NOT NULL) BEGIN
                SELECT @CurrentQuery = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@SearchChangedQuery
                                       , '<@STG_SRV>',         ISNULL(NULLIF(@STG_SRV,         ''), '<NULL>'))
                                       , '<@StageTableName>',  ISNULL(NULLIF(@StageTableName,  ''), '<NULL>'))
                                       , '<@DDS_SRV>',         ISNULL(NULLIF(@DDS_SRV,         ''), '<NULL>'))
                                       , '<@DDSTableName>',    ISNULL(NULLIF(@DDSTableName,    ''), '<NULL>'))
                                       , '<@SearchFields>',    ISNULL(NULLIF(@SearchFields,    ''), '<NULL>'))
                                       , '<@KeyFieldDDSList>', ISNULL(NULLIF(@KeyFieldDDSList, ''), '<NULL>'))
									   , '<@KeyFieldCompare>', ISNULL(NULLIF(@KeyFieldCompare, ''), '<NULL>'))
                 , @CurrentParams = N'@BatchId BIGINT';
            
                SET @LogMessageText = (
                    SELECT 
                          @CurrentQuery  AS Query 
                        , @CurrentParams AS Params
                        , (SELECT @BatchId AS BatchId FOR XML PATH('Params'), TYPE)
                    FOR XML PATH('Params')
                );
                EXEC log.RegisterInsert
                      @BatchId          = @BatchId
                    , @ObjectRegisterId = @ObjectRegisterId
                    , @StatusCode       = 'DDS_SEARCH_CHANGED_START'
                    , @MessageText      = @LogMessageText
                    , @Sender           = @Sender
                    , @Params           = NULL
                    , @ErrorLevel       = 0
                    , @ParentLogId      = @ParentLogId;
            
                --Заполнение измененных
                IF @IsDebug = 1 BEGIN
					SET @MessageText = '--Заполнение измененных;' + CHAR(13) + CHAR(10) + 'DECLARE @BatchId INT = ' + CAST(@BatchId AS VARCHAR(10)) + ';' + CHAR(13) + CHAR(10) + @CurrentQuery;
					EXEC tz_dwh.dbo_Print @Instr = @MessageText;
                END;
                EXEC master.dbo.sp_executesql
                      @stmt     = @CurrentQuery
                    , @Params   = @CurrentParams
                    , @BatchId  = @BatchId;
            END;
            
            --Есть или нет ключевое поле - разные запросы
            SELECT @CurrentQuery = IIF(@KeyFieldDDSList IS NOT NULL, @InsertQueryWKF, @InsertQueryWoKF);
            SELECT @CurrentQuery = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@CurrentQuery
                                           , '<@STG_SRV>',              ISNULL(NULLIF(@STG_SRV,            ''), '<NULL>'))
                                           , '<@StageTableName>',       ISNULL(NULLIF(@StageTableName,     ''), '<NULL>'))
                                           , '<@DDS_SRV>',              ISNULL(NULLIF(@DDS_SRV,            ''), '<NULL>'))
                                           , '<@DDSTableName>',         ISNULL(NULLIF(@DDSTableName,       ''), '<NULL>'))
                                           , '<@KeyFieldDDSList>',      ISNULL(NULLIF(@KeyFieldDDSList,    ''), '<NULL>'))
										   , '<@KeyFieldCompare>',      ISNULL(NULLIF(@KeyFieldCompare,    ''), '<NULL>'))
                                           , '<@InsertFields>',         ISNULL(NULLIF(@InsertFields,       ''), '<NULL>'))
                                           , '<@SelectFields>',         ISNULL(NULLIF(@SelectFields,       ''), '<NULL>'))
                                           , '<@ObjectRegisterName>',   ISNULL(NULLIF(@ObjectRegisterName, ''), '<NULL>'));
            
            SELECT @CurrentParams = N'@BatchId BIGINT, @MAX_EFFECTIVE_DATE DATE, @DDSChangedRowAffectedCount BIGINT OUT, @DDSNewRowAffectedCount BIGINT OUT';
            
            SET @LogMessageText = (
                SELECT 
                      @CurrentQuery  AS Query 
                    , @CurrentParams AS Params
                    , (SELECT @BatchId AS BatchId, @MAX_EFFECTIVE_DATE AS MAX_EFFECTIVE_DATE FOR XML PATH('Params'), TYPE)
                FOR XML PATH('Params')
            );
            EXEC log.RegisterInsert
                  @BatchId          = @BatchId
                , @ObjectRegisterId = @ObjectRegisterId
                , @StatusCode       = 'DDS_INSERT_START'
                , @MessageText      = @LogMessageText
                , @Sender           = @Sender
                , @Params           = NULL
                , @ErrorLevel       = 0
                , @ParentLogId      = @ParentLogId;
            
            --Внесение измененных и ни разу не появлявшихся
            IF @IsDebug = 1 BEGIN
				SET @MessageText = '--Внесение измененных и ни разу не появлявшихся' + CHAR(13) + 'DECLARE @BatchId BIGINT = ' + CAST(@BatchId AS VARCHAR(10)) + ', @MAX_EFFECTIVE_DATE DATE = ''' + CAST(@MAX_EFFECTIVE_DATE AS VARCHAR(10)) + ''', @DDSChangedRowAffectedCount BIGINT, @DDSNewRowAffectedCount BIGINT;' + CHAR(13) + @CurrentQuery;
				EXEC tz_dwh.dbo_Print @Instr = @MessageText;
            END;
            EXEC master.dbo.sp_executesql
                  @stmt                       = @CurrentQuery
                , @Params                     = @CurrentParams
                , @BatchId                    = @BatchId
                , @MAX_EFFECTIVE_DATE         = @MAX_EFFECTIVE_DATE
                , @DDSChangedRowAffectedCount = @DDSChangedRowAffectedCount OUT
                , @DDSNewRowAffectedCount     = @DDSNewRowAffectedCount     OUT;
        END;

        --Постобработка
        --Трансляция Id во внутренние RK-ключи
        IF (@HasDDSCodeTranslate = 1) BEGIN
            IF @IsDebug = 1 BEGIN
                SET @MessageText = '--Трансляция Id во внутренние RK-ключи:' + CHAR(13) + 'EXEC tz_dds.CodeTranslate @SourceTableName = '''+@DDSFullTableName+''', @ParentLogId = ' + CAST(@ParentLogId AS VARCHAR(10))+';';
                EXEC tz_dwh.dbo_Print @Instr = @MessageText;
            END;
            EXEC tz_dds.CodeTranslate
                  @SourceTableName = @DDSFullTableName
                , @ParentLogId     = @ParentLogId;
        END;

        --Заполнение дополнительных полей
        IF OBJECT_ID(@DDSPostProcedure) IS NOT NULL BEGIN
            SET @LogMessageText = (SELECT @DDSPostProcedure AS PostProcedure FOR XML PATH('Params'));
            EXEC log.RegisterInsert
                  @BatchId          = @BatchId
                , @ObjectRegisterId = @ObjectRegisterId
                , @StatusCode       = 'DDS_POST_START'
                , @MessageText      = @LogMessageText
                , @Sender           = @Sender
                , @Params           = NULL
                , @ErrorLevel       = 0
                , @ParentLogId      = @ParentLogId;

            IF @IsDebug = 1 BEGIN
                SET @MessageText = '--Заполнение дополнительных полей' + CHAR(13) + 'EXEC ' + @DDSPostProcedure + '@BatchDetailId = ' + CAST(@BatchDetailId AS VARCHAR(10))+';';
                EXEC tz_dwh.dbo_Print @Instr = @MessageText;
            END;
            EXEC @DDSPostProcedure
                @BatchDetailId = @BatchDetailId;
        END;

        SET @LogMessageText = (SELECT @DDSChangedRowAffectedCount AS DDSChangedRowAffectedCount, @DDSNewRowAffectedCount AS DDSNewRowAffectedCount FOR XML PATH('Params'));
        EXEC log.RegisterInsert
                  @BatchId          = @BatchId
                , @ObjectRegisterId = @ObjectRegisterId
                , @StatusCode       = 'DDS_OBJECT_FINISH'
                , @MessageText      = @LogMessageText
                , @Sender           = @Sender
                , @Params           = NULL
                , @ErrorLevel       = 0
                , @ParentLogId      = @ParentLogId;

        UPDATE dbo.BatchDetail SET 
              StatusId                   = @BDS_DONE
            , DDSRowAffectedCount        = ISNULL(@DDSChangedRowAffectedCount, 0) + ISNULL(@DDSNewRowAffectedCount, 0)
            , DDSChangedRowAffectedCount = @DDSChangedRowAffectedCount
            , DDSNewRowAffectedCount     = @DDSNewRowAffectedCount
            , [Message]                  = @MessageText
        WHERE BatchDetailId = @BatchDetailId;

        DROP TABLE IF EXISTS ##AbstractObjectStageProcess_changed;
    END TRY
    BEGIN CATCH
        SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

        IF @IsDebug = 1 BEGIN
            SET @MessageText = 'ERROR: ' + @MessageText;
            PRINT @MessageText;
        END;

        UPDATE dbo.BatchDetail SET 
              StatusId                   = @BDS_ERROR 
            , DDSRowAffectedCount        = NULL
            , DDSChangedRowAffectedCount = NULL
            , DDSNewRowAffectedCount     = NULL
            , [Message]                  = @MessageText
        WHERE BatchDetailId = @BatchDetailId;

        EXEC log.RegisterInsert
              @BatchId          = @BatchId
            , @ObjectRegisterId = @ObjectRegisterId
            , @StatusCode       = 'ERROR'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0
            , @ParentLogId      = @ParentLogId;

        DROP TABLE IF EXISTS ##AbstractObjectStageProcess_changed;

        RETURN 1;
    END CATCH;

    RETURN 0;
END;
GO
GRANT EXEC ON dbo.AbstractObjectDDSProcess TO tz_report;