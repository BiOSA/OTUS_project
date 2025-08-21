-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2024-10-08
-- Description: Проверка как прошла выгрузка DDS за день
CREATE PROCEDURE report.CheckBatchRun
      @ObjectName          sysname = NULL --'tz.AgredatorRequestLog'
    , @BatchId             INT     = NULL --(NULL) Все; (-1) только последний; (0+) Все после указанной пачки
    , @CriticalObjectsOnly BIT     = 1    --(0) Все объекты; (1) исключить редко наполняемые справочники
    , @ReportView          INT     = 0    --(0) На почту, (1) - на экран
AS BEGIN
    SET NOCOUNT, XACT_ABORT ON;
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DROP TABLE IF EXISTS ##CheckDWH;
    CREATE TABLE ##CheckDWH
    (
          ObjectRegisterId  BIGINT      NULL 
        , ObjectName        VARCHAR(50) NULL 
        , DDSTableName      sysname     NULL 
        , BatchId           BIGINT      NULL 
        , DDSAmount         BIGINT      NULL DEFAULT(0)
    );
    DECLARE 
          @DDSTableName sysname
        , @Query        NVARCHAR(MAX);

    INSERT INTO ##CheckDWH(ObjectRegisterId, ObjectName, DDSTableName, BatchId)
    SELECT obr.ObjectRegisterId, obr.[Name], ISNULL(obr.DDSTableName, obr.[Name]) AS DDSTableName, b.BatchId
    FROM       dbo.ObjectRegister obr
    CROSS JOIN dbo.Batch b
    WHERE 
        (
               @ObjectName IS NULL 
            OR obr.[Name] = @ObjectName
        )
        AND (
            @BatchId IS NULL--последний
            OR (
                @BatchId = -1 AND b.BatchId = (SELECT MAX(BatchId) FROM dbo.Batch)
            )
            OR (
                @BatchId >= 0 AND b.BatchId > =@BatchId
            )
        )
        AND (
               (@CriticalObjectsOnly = 1 AND obr.CheckInBatch = 1)
            OR @CriticalObjectsOnly = 0 
            OR @CriticalObjectsOnly IS NULL    
        );

    DECLARE crs CURSOR FOR
        SELECT DISTINCT DDSTableName
        FROM ##CheckDWH;
    OPEN crs;
    WHILE 1=1 BEGIN
        FETCH NEXT FROM crs INTO @DDSTableName;
        IF @@FETCH_STATUS!=0
            BREAK;

        SET @Query = N'
UPDATE d SET
    DDSAmount = t.Amount
FROM ##CheckDWH d
INNER JOIN (
    SELECT BatchId, COUNT(*) AS Amount
    FROM [$(TZ_DDS_DB)].'+@DDSTableName+'
    GROUP BY BatchId
) t ON t.BatchId = d.BatchId
WHERE d.DDSTableName = '''+@DDSTableName+'''';
        EXEC(@Query);
    END;
    CLOSE crs;
    DEALLOCATE crs

    DROP TABLE IF EXISTS ##CheckDWHResult;

    DECLARE 
          @Batches      VARCHAR(MAX) = STUFF((SELECT ',['+CAST(BatchId AS VARCHAR(10))+']' FROM (SELECT DISTINCT BatchId FROM ##CheckDWH) s ORDER BY BatchId FOR XML PATH('')),1,1,'')
        , @BatchesINT   VARCHAR(MAX) = (SELECT ',['+CAST(BatchId AS VARCHAR(10))+'] BIGINT' FROM (SELECT DISTINCT BatchId FROM ##CheckDWH) s ORDER BY BatchId FOR XML PATH(''))
        , @BatchesCheck VARCHAR(MAX) = STUFF((SELECT ' OR ['+CAST(BatchId AS VARCHAR(10))+'] = 0' FROM (SELECT DISTINCT BatchId FROM ##CheckDWH) s ORDER BY BatchId FOR XML PATH('')),1,3,'');

    SET @Query = N'
    CREATE TABLE ##CheckDWHResult
    (
        ObjectName VARCHAR(50)'+ISNULL(@BatchesINT,'')+'
    )';
    EXEC(@Query);

    SET @Query = N'
INSERT INTO ##CheckDWHResult
SELECT ObjectName, '+@Batches+'
FROM ##CheckDWH
PIVOT (SUM(DDSAmount) FOR BatchId IN ('+@Batches+')) AS p
ORDER BY ObjectName;';
    EXEC(@Query);

    --на почту
    IF @ReportView = 0 BEGIN
        DECLARE 
              @EmailText      VARCHAR(MAX)
            , @FieldName      VARCHAR(MAX) = 'ObjectName, '+@Batches
            , @ADMIN_EMAILS   VARCHAR(300) = CAST(prm.RegisterGet('ADMIN_EMAILS', 'itimofeev@eqvantalab.ru') AS VARCHAR(300))
            , @Subject        VARCHAR(300) = DB_NAME()+': Потенциальные ошибки в DWH'
            , @ReportRowCount BIGINT;
    
        EXEC tz_dwh.Table2HTML
              @TableName = '##CheckDWHResult'
            , @FieldName = @FieldName
            , @Filter    = @BatchesCheck
            , @Order     = 'ObjectName'
            , @Result    = @EmailText      OUT
            , @RowCount  = @ReportRowCount OUT;
    
        IF @ReportRowCount>0
            EXEC tz_dwh.EmailSend
                  @Whom    = @ADMIN_EMAILS
                , @Subject = @Subject
                , @Text    = @EmailText
                , @Format  = 'HTML';
    END;

    --на экран
    IF @ReportView = 1 BEGIN
        SELECT *
        FROM ##CheckDWHResult
        ORDER BY ObjectName;
    END;

    DROP TABLE ##CheckDWH, ##CheckDWHResult;
END;
GO
GRANT EXEC ON report.CheckBatchRun TO tz_report;