-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2024-02-20
-- Description: Очистка историчных пачек слоя STAGE
-- Запуск из джоба
-- EXEC dbo.StageHistoryClear
-- EXEC dbo.StageHistoryClear 'tz.Application'
CREATE PROCEDURE mnt.StageHistoryClear
     @ObjectRegisterName VARCHAR(50) = NULL
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT, XACT_ABORT ON;

    DECLARE 
	      @SaveDepth           INT
		, @StageTableName      sysname
		, @STAGE_DB_NAME       sysname       = CAST(prm.RegisterGet('STAGE_DB_NAME', LEFT(DB_NAME(), 1) + 'Z_STG') AS sysname)
		, @CurrentQuery        NVARCHAR(MAX)
		, @DeleteQueryTemplate NVARCHAR(MAX) = N'
DELETE FROM <STAGE_DB_NAME>.<TableName>
WHERE BatchId<
	(
		SELECT MAX(BatchId)
		FROM  (
			SELECT BatchId, ROW_NUMBER() OVER (ORDER BY BatchId DESC) AS rn
			FROM <STAGE_DB_NAME>.<TableName> c (NOLOCK) 
			GROUP BY BatchId
		) s
		WHERE rn><SaveDepth>
	)';

	DECLARE crs CURSOR LOCAL STATIC READ_ONLY FORWARD_ONLY FOR 
	    SELECT r.SaveDepth, ISNULL(r.StageTableName, r.[Name]) AS StageTableName
	    FROM dbo.ObjectRegister r
		WHERE (@ObjectRegisterName IS NULL OR r.Name = @ObjectRegisterName);
	OPEN crs;
	WHILE 1=1 BEGIN
	    FETCH NEXT FROM crs INTO @SaveDepth, @StageTableName;
		SET @CurrentQuery = NULL;
		IF @@FETCH_STATUS!=0
		    BREAK;

		SELECT @CurrentQuery = REPLACE(REPLACE(REPLACE(@DeleteQueryTemplate
		                               ,'<TableName>',     @StageTableName)
									   ,'<SaveDepth>',     CAST(@SaveDepth AS VARCHAR(10)))
									   ,'<STAGE_DB_NAME>', @STAGE_DB_NAME);
		EXEC master.dbo.sp_executesql
		   @statement = @CurrentQuery;
	END;
	CLOSE crs;
	DEALLOCATE crs;
END