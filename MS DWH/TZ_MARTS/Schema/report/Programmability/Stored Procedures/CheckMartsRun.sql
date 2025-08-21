-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2024-10-10
-- Description: Проверка как прошла выгрузка витрин за день
CREATE PROCEDURE report.CheckMartsRun
	  @ObjectName          sysname = NULL--'pbi.Application'
	, @BatchId             INT     = NULL--(NULL) Все; (-1) только последний; (0+) Все после указанной пачки
	, @ReportView          INT     = 0   --(0) На почту, (1) - на экран
AS BEGIN
	SET NOCOUNT, XACT_ABORT ON;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	DROP TABLE IF EXISTS ##CheckMarts;
	CREATE TABLE ##CheckMarts
	(
		  MartRegisterId    BIGINT		NULL
		, MartName          VARCHAR(50)	NULL
		, BatchId           BIGINT		NULL
		, Amount            BIGINT      NULL DEFAULT(0)
	);
	DECLARE 
		  @TableName sysname
		, @Query     NVARCHAR(MAX) = '';

	INSERT INTO ##CheckMarts(MartRegisterId, MartName, BatchId)
	SELECT obr.MartRegistryId, obr.[Name], b.BatchId
	FROM   dbo.MartRegistry      obr
	CROSS JOIN tz_work.dbo_Batch b
	WHERE obr.IsChecked = 1
	    AND EXISTS(
			SELECT TOP 1 1
			FROM sys.syscolumns    c   
			WHERE OBJECT_ID(obr.Name) = c.id
				AND c.name = 'BatchId'
		)
		AND (@ObjectName IS NULL OR obr.[Name] = @ObjectName)
		AND (
			@BatchId IS NULL--последний
			OR (
				@BatchId = -1 AND b.BatchId = (SELECT MAX(BatchId) FROM tz_work.dbo_Batch)
			)
			OR (
				@BatchId >= 0 AND b.BatchId >= @BatchId
			)
		);

	DECLARE crs CURSOR FOR
		SELECT DISTINCT MartName
		FROM ##CheckMarts;
	OPEN crs;
	WHILE 1=1 BEGIN
		FETCH NEXT FROM crs INTO @TableName
		IF @@FETCH_STATUS!=0
			BREAK;

		SET @Query = N'
	UPDATE d SET
		Amount = t.Amount
	FROM ##CheckMarts d
	INNER JOIN (
		SELECT BatchId, COUNT(*) AS Amount
		FROM '+@TableName+'
		GROUP BY BatchId
	) t ON t.BatchId = d.BatchId
	WHERE d.MartName = '''+@TableName+'''';
		EXEC(@Query);
	END;
	CLOSE crs;
	DEALLOCATE crs

	DROP TABLE IF EXISTS ##CheckMartsResult;

	IF EXISTS(SELECT TOP 1 1 FROM ##CheckMarts) BEGIN
		DECLARE 
			  @Batches      VARCHAR(MAX) = STUFF((SELECT ',['+CAST(BatchId AS VARCHAR(10))+']' FROM (SELECT DISTINCT BatchId FROM ##CheckMarts) s ORDER BY BatchId FOR XML PATH('')),1,1,'')
			, @BatchesINT   VARCHAR(MAX) = (SELECT ',['+CAST(BatchId AS VARCHAR(10))+'] BIGINT' FROM (SELECT DISTINCT BatchId FROM ##CheckMarts) s ORDER BY BatchId FOR XML PATH(''))
			, @BatchesCheck VARCHAR(MAX) = STUFF((SELECT ' OR ['+CAST(BatchId AS VARCHAR(10))+'] = 0' FROM (SELECT DISTINCT BatchId FROM ##CheckMarts) s ORDER BY BatchId FOR XML PATH('')),1,3,'');

		SET @Query = N'
		CREATE TABLE ##CheckMartsResult
		(
			MartName VARCHAR(50)'+@BatchesINT+'
		)';
		EXEC(@Query);

		SET @Query = N'
	INSERT INTO ##CheckMartsResult
	SELECT MartName, '+@Batches+'
	FROM ##CheckMarts
	PIVOT (SUM(Amount) FOR BatchId IN ('+@Batches+')) AS p
	ORDER BY MartName;';
		EXEC(@Query);

		--на почту
		IF @ReportView = 0 BEGIN
			DECLARE 
				  @EmailText      VARCHAR(MAX)
				, @FieldName      VARCHAR(MAX) = 'MartName, '+@Batches
				, @ADMIN_EMAILS   VARCHAR(300) = CAST(tz_work.prm_RegisterGet('ADMIN_EMAILS', 'itimofeev@eqvantalab.ru') AS VARCHAR(300))
				, @Subject        VARCHAR(300) = DB_NAME()+': Потенциальные ошибки в MARTS'
				, @ReportRowCount BIGINT;

			EXEC tz_dwh.Table2HTML
				  @TableName = '##CheckMartsResult'
				, @FieldName = @FieldName
				, @Filter    = @BatchesCheck
				, @Order     = 'MartName'
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
			FROM ##CheckMartsResult
			ORDER BY MartName;
		END;
	END;

	DROP TABLE IF EXISTS ##CheckMarts, ##CheckMartsResult;
END;
GO
GRANT EXEC ON report.CheckMartsRun TO tz_report;