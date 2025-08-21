-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2023-12-14
-- Description:	Выгрузка объекта синхронизации слоя STG
-- EXEC dbo.AbstractObjectStageProcess 1, 'tz.Application'
CREATE PROCEDURE dbo.AbstractObjectStageProcess
       @BatchId            BIGINT
	 , @ObjectRegisterName VARCHAR(50)
	 , @IsForcedLoad       BIT         = 0 --Если объект выключен в ObjectRegister, то установка этого параметра позволяет принудительно провести обработку
	 , @IsDebug            BIT         = 0 --Печать отладочной информации
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE
		  @DateFrom                  DATE
		, @DateTill                  DATE
		, @DateFromDT                DATETIME
        , @DateTillDT                DATETIME
		, @ObjectRegisterId          BIGINT
		, @BatchDetailId             BIGINT
		, @BDS_PROCESS_STAGE         BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'PROCESS_STAGE')
		, @BDS_ERROR                 BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'ERROR')
		, @RowAffectedCount          BIGINT
		, @LogParentId               BIGINT
		, @MessageText               VARCHAR(500)
		, @LogMessageText            XML
		, @Sender                    sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @TargetTableName           sysname
		, @SourceTableName           sysname
		, @TableNamePrefix           sysname
		, @ExtendedQueryPre          NVARCHAR(MAX)
		, @STGAdditionalPredicate    NVARCHAR(MAX)
		, @DataChangeFieldPredicate  NVARCHAR(MAX)
		, @DataChangeField           sysname
		, @IsEnabled                 BIT
		, @DDSFullTableName          sysname
		, @StageTableName            sysname
		, @STG_SRV                   sysname       = CAST(prm.RegisterGet('STAGE_DB_NAME', LEFT(DB_NAME(), 1) + 'Z_STG') AS sysname)
        , @DDS_SRV                   sysname       = CAST(prm.RegisterGet('DDS_DB_NAME',   LEFT(DB_NAME(), 1) + 'Z_DDS') AS sysname)
		, @DDSTableName              sysname
		, @TargetFields              NVARCHAR(MAX)
		, @SourceFields              NVARCHAR(MAX)
		, @SourceSRV                 sysname
		, @STGPostProcedure          sysname
		, @IsLastBatch               BIT           = IIF((SELECT MAX(BatchId) FROM dbo.Batch) = @BatchId, 1, 0)                                                                                                    -- Признак, что совершается текущая выгрузка, а не задним числом.       
		, @HasSTGCodeTranslate       BIT
		--, @TargetSRV                 sysname       = CAST(prm.RegisterGet('STAGE_DB_NAME', 'TZ_STG') AS sysname)
		, @DeleteQueryTemplate       NVARCHAR(MAX) = N'DELETE FROM <@TRG_SRV>.<@TargetTableName> WHERE BatchId = @BatchId'
		, @SelectQueryTemplateWDate  NVARCHAR(MAX) = 
	N'SELECT @BatchId AS BatchId, <@SourceFields>
	FROM <@SourceTableName> <@TableNamePrefix>
	WHERE <@DataChangeFieldPredicate>
		AND <@STGAdditionalPredicate>'
		, @SelectQueryTemplateWODate NVARCHAR(MAX) = N'
	SELECT @BatchId AS BatchId, <@SourceFields>
	FROM <@SourceTableName> <@TableNamePrefix>
	WHERE <@STGAdditionalPredicate>'
		, @InsertQueryTemplate       NVARCHAR(MAX) = N'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	INSERT INTO <@TRG_SRV>.<@TargetTableName>(BatchId, <@TargetFields>)
	EXEC <@SRC_SRV>.master.dbo.sp_executesql
		  @stmt     = N''<@SelectQuery>''
		, @Params   = N''@BatchId BIGINT, @DateFrom DATETIME, @DateTill DATETIME''
		, @BatchId  = @BatchId
		, @DateFrom = @DateFrom
		, @DateTill = @DateTill;'
		, @CurrentQuery        NVARCHAR(MAX)
		, @CurrentParams       NVARCHAR(MAX)
		, @ParentLogId         BIGINT;

	SET @IsForcedLoad = ISNULL(@IsForcedLoad, 0);

	SELECT @DateFrom = DateFrom, @DateTill = DateTill
	FROM dbo.Batch b
	WHERE BatchId = @BatchId;

	IF @@ROWCOUNT = 0
	    THROW 50001, 'Пачка не найдена в dbo.Batch. Выгрузка невозможна', 1;

	--Приведение периода к формату со временем
	SELECT @DateFromDT = CAST(@DateFrom AS DATETIME), @DateTillDT = DATEADD(ms, -2, DATEADD(DAY, 1, CAST(@DateTill AS DATETIME)));

	SELECT 
		  @ObjectRegisterId       = sr.ObjectRegisterId
		, @TargetTableName        = ISNULL(sr.StageTableName, sr.[Name])
		, @ExtendedQueryPre       = sr.ExtendedQueryPre
		, @SourceTableName        = SourceTableName
		, @DDSTableName           = ISNULL(sr.DDSTableName, sr.[Name])
        , @StageTableName         = ISNULL(sr.StageTableName, sr.[Name])
		, @TableNamePrefix        = ISNULL(sr.TableNamePrefix, '')
		, @DataChangeField        = NULLIF(LTRIM(RTRIM(sr.DataChangeField)), '')
		, @STGAdditionalPredicate = ISNULL(NULLIF(REPLACE(sr.STGAdditionalPredicate, '''',''''''), ''), '(1=1)')
		, @SourceSRV              = ds.Prefix1
		, @IsEnabled              = sr.IsEnabled
		, @HasSTGCodeTranslate    = sr.HasSTGCodeTranslate
		, @STGPostProcedure       = sr.STGPostProcedure
	FROM       dbo.ObjectRegister sr
	INNER JOIN dbo.DataSource     ds ON ds.DataSourceId = sr.DataSourceId
	WHERE sr.[Name] = @ObjectRegisterName;

	SET @LogMessageText = (
		SELECT (SELECT @BatchId AS BatchId, @ObjectRegisterName AS ObjectRegisterName FOR XML PATH('Params'), TYPE)
		FOR XML PATH('Params')
	);
	EXEC log.RegisterInsert
	      @BatchId          = @BatchId
		, @ObjectRegisterId = @ObjectRegisterId
		, @StatusCode	    = 'STAGE_OBJECT_START'
		, @MessageText      = @LogMessageText
		, @Sender           = @Sender
		, @Params           = NULL
		, @ErrorLevel       = 0
		, @ParentLogId      = NULL
		, @ResultId         = @ParentLogId OUT;

	BEGIN TRY
		IF @IsEnabled = 0 AND @IsForcedLoad = 0
			THROW 50001, 'Объект отключен для выгрузки', 1;

		SELECT @BatchDetailId = bd.BatchDetailId
		FROM dbo.BatchDetail bd
		WHERE   bd.BatchId          = @BatchId
			AND bd.ObjectRegisterId = @ObjectRegisterId;

		--Создание, если не было запуска ранее
		IF @BatchDetailId IS NULL BEGIN
			INSERT INTO dbo.BatchDetail (BatchId, ObjectRegisterId, StatusId)
			SELECT @BatchId, @ObjectRegisterId, @BDS_PROCESS_STAGE;
			SET @BatchDetailId = SCOPE_IDENTITY();
		END ELSE BEGIN
		    --очистка объекта от предыдущего запуска
		    SELECT 
			      @CurrentQuery  = REPLACE(REPLACE(
				                             @DeleteQueryTemplate
				                           , '<@TargetTableName>', ISNULL(NULLIF(@TargetTableName, ''), '<NULL>'))
										   , '<@TRG_SRV>.',        ISNULL(@STG_SRV+'.',                 '<@TRG_SRV>.'))
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
		    	, @StatusCode	    = 'STAGE_CLEAR_PRIOR_START'
		    	, @MessageText      = @LogMessageText
		    	, @Sender           = @Sender
		    	, @Params           = NULL
		    	, @ErrorLevel       = 0
		    	, @ParentLogId      = @ParentLogId;

			IF @IsDebug = 1 BEGIN
                SET @MessageText = '@CurrentQuery = ' + @CurrentQuery;
                PRINT @MessageText;
				SET @MessageText = '@CurrentParams = ' + @CurrentParams;
                PRINT @MessageText;
            END;
		    EXEC master.dbo.sp_executesql
		    	  @stmt    = @CurrentQuery
		    	, @Params  = @CurrentParams
		    	, @BatchId = @BatchId;

		    UPDATE dbo.BatchDetail SET Message = NULL WHERE BatchDetailId = @BatchDetailId;
		END;

		--Внесение новых записей
		--список полей через запятую в получателе
		SELECT @TargetFields =  tz_dwh.XMLParseBack(STUFF((
			SELECT ',['+TargetFieldName+']'
			FROM dbo.ObjectRegisterField srf
			WHERE   srf.ObjectRegisterId = @ObjectRegisterId
			    AND IsEnabled            = 1
				AND IsStageProcessed     = 1
			ORDER BY ObjectRegisterFieldId
			FOR XML PATH('')
		),1,1,''))
		--список полей в источнике
		, @SourceFields =  tz_dwh.XMLParseBack(STUFF((
			SELECT ','+SourceQuery
			FROM dbo.ObjectRegisterField srf
			WHERE   srf.ObjectRegisterId = @ObjectRegisterId
			    AND IsEnabled            = 1
				AND IsStageProcessed     = 1
			ORDER BY ObjectRegisterFieldId
			FOR XML PATH('')
		),1,1,''));

		SET @CurrentQuery = IIF(@DataChangeField IS NOT NULL, @SelectQueryTemplateWDate, @SelectQueryTemplateWODate);

		--Если текуща выгрузка, то копируем всё, что накопилось после ДАТЫ ДО. Если зданим числом, то 
		--SET @DataChangeFieldPredicate = tz_dwh.XMLParseBack(STUFF((SELECT ' OR (' + Name + IIF(@IsLastBatch = 1, ' >= @DateFrom)', ' BETWEEN @DateFrom AND @DateTill)') FROM tz_dwh.dbo.fnSplitStringId(@DataChangeField, '|') FOR XML PATH('')), 1, 4, ''));
		SET @CurrentQuery = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(--REPLACE(--REPLACE(
		    	  @CurrentQuery
		    	, '<@TargetTableName>',          ISNULL(NULLIF(@TargetTableName,         ''), '<NULL>'))
		    	, '<@SourceFields>',             ISNULL(NULLIF(@SourceFields,            ''), '<NULL>'))
		    	, '<@TableNamePrefix>',          ISNULL(NULLIF(@TableNamePrefix,         ''), '<NULL>'))
		    	, '<@SourceTableName>',          ISNULL(NULLIF(@SourceTableName,         ''), '<NULL>'))
		    	, '<@STGAdditionalPredicate>',   ISNULL(NULLIF(@STGAdditionalPredicate,  ''), '<NULL>'));

		--делаем несколько запросов для каждого поля дат через UNION для возможной оптимизации через индексы
		IF @DataChangeField IS NOT NULL
			SELECT @CurrentQuery = tz_dwh.XMLParseBack(STUFF((
				SELECT 'UNION '+REPLACE(
							  @CurrentQuery
							, '<@DataChangeFieldPredicate>'
							, '(' + Name + IIF(@IsLastBatch = 1, ' >= @DateFrom)', ' BETWEEN @DateFrom AND @DateTill)')
						)
				FROM tz_dwh.fnSplitStringId(@DataChangeField, '|')
				FOR XML PATH('')
			), 1, 6, ''));

		SET @CurrentQuery = @ExtendedQueryPre + CHAR(10)+CHAR(13) + @CurrentQuery;
		SELECT @CurrentQuery = REPLACE(@InsertQueryTemplate, '<@SelectQuery>', @CurrentQuery);

		SELECT @CurrentQuery = REPLACE(REPLACE(REPLACE(REPLACE(
				  @CurrentQuery
				, '<@TargetFields>',    ISNULL(NULLIF(@TargetFields,     ''), '<NULL>'))
				, '<@TargetTableName>', ISNULL(NULLIF(@TargetTableName,  ''), '<NULL>'))
				, '<@SRC_SRV>.',        ISNULL(@SourceSRV+'.',                '<@SRC_SRV>.'))
				, '<@TRG_SRV>.',        ISNULL(@STG_SRV+'.',                  '<@TRG_SRV>.'))
		      , @CurrentParams =  N'@BatchId BIGINT, @DateFrom DATETIME, @DateTill DATETIME';

		SET @LogMessageText = (
		    SELECT 
			      @CurrentQuery  AS Query 
				, @CurrentParams AS Params
				, (
				      SELECT
					        @BatchId    AS BatchId
					      , @DateFromDT AS DateFrom
					      , @DateTillDT AS DateTill
					  FOR XML PATH('Params'), TYPE
				  )
			FOR XML PATH('Params')
	    );
		EXEC log.RegisterInsert
			  @BatchId          = @BatchId
			, @ObjectRegisterId = @ObjectRegisterId
			, @StatusCode	    = 'STAGE_INSERT_START'
			, @MessageText      = @LogMessageText
			, @Sender           = @Sender
			, @Params           = NULL
			, @ErrorLevel       = 0
			, @ParentLogId      = @ParentLogId;

		DECLARE @TRANCOUNT INT = @@TRANCOUNT;
		BEGIN TRAN

		IF @IsDebug = 1 BEGIN
            SET @MessageText = '@CurrentQuery = ' + @CurrentQuery;
            PRINT @MessageText;
			SET @MessageText = '@CurrentParams = ' + @CurrentParams;
            PRINT @MessageText;
			SET @MessageText = '@DateFromDT = ' + CONVERT(VARCHAR(10), @DateFromDT, 120)
			PRINT @MessageText;
			SET @MessageText = '@DateTillDT = ' + CONVERT(VARCHAR(10), @DateTillDT, 120)
            PRINT @MessageText;
        END;
		EXEC master.dbo.sp_executesql
			  @stmt     = @CurrentQuery
			, @Params   = @CurrentParams
			, @BatchId  = @BatchId
			, @DateFrom = @DateFromDT
			, @DateTill = @DateTillDT;
		SET @RowAffectedCount = @@ROWCOUNT;

		UPDATE dbo.BatchDetail SET 
			StageRowAffectedCount = @RowAffectedCount
		WHERE BatchDetailId = @BatchDetailId;

		--Постобработка
        --Трансляция Id во внутренние RK-ключи
		SELECT @DDSFullTableName = @DDS_SRV+'.'+@DDSTableName, @StageTableName = @STG_SRV+'.'+@DDSTableName;
        IF (@HasSTGCodeTranslate = 1) BEGIN
			IF @IsDebug = 1 BEGIN
				SET @MessageText = 'EXEC tz_dds.CodeTranslate
                  @SourceTableName = ''' + @DDSFullTableName+'''
                , @ParentLogId     = '   + ISNULL(CAST(@ParentLogId AS VARCHAR(MAX)), 'NULL')+'
				, @ResultTableName = ''' + ISNULL(@StageTableName, 'NULL')+''';';
				PRINT @MessageText;
			END;
            EXEC tz_dds.CodeTranslate
                  @SourceTableName = @DDSFullTableName
                , @ParentLogId     = @ParentLogId
				, @ResultTableName = @StageTableName;
		END;

		--Процедура постобработки
		IF OBJECT_ID(@STGPostProcedure) IS NOT NULL BEGIN
			IF @IsDebug = 1 BEGIN
				SET @MessageText = '@STGPostProcedure = ' + @STGPostProcedure;
				PRINT @MessageText;
			END;
			EXEC @STGPostProcedure
				@BatchDetailId = @BatchDetailId;
		END;

		COMMIT TRAN;

		SET @LogMessageText = (SELECT @RowAffectedCount AS RowAffectedCount FOR XML PATH('Params'));
		EXEC log.RegisterInsert
			  @BatchId          = @BatchId
			, @ObjectRegisterId = @ObjectRegisterId
			, @StatusCode	    = 'STAGE_OBJECT_FINISH'
			, @MessageText      = @LogMessageText
			, @Sender           = @Sender
			, @Params           = NULL
			, @ErrorLevel       = 0
			, @ParentLogId      = @ParentLogId;
	END TRY
	BEGIN CATCH
		SET @MessageText    = ERROR_MESSAGE();
		SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));
		THROW 50001, @MessageText, 1;

		UPDATE dbo.BatchDetail SET 
			  StatusId              = @BDS_ERROR 
			, StageRowAffectedCount = NULL
			, [Message]             = @MessageText
		WHERE BatchDetailId = @BatchDetailId;

		WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		EXEC log.RegisterInsert
			  @BatchId          = @BatchId
			, @ObjectRegisterId = @ObjectRegisterId
			, @StatusCode	    = 'ERROR'
			, @MessageText      = @LogMessageText
			, @Sender           = @Sender
			, @Params           = NULL
			, @ErrorLevel       = 0
			, @ParentLogId      = @ParentLogId;
		RETURN 1;
	END CATCH;

	RETURN 0;
END;
GO
GRANT EXEC ON dbo.AbstractObjectStageProcess TO tz_report;