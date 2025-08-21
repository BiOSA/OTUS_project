-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2023-12-29
-- Description: Чистка устаревших пачек в слое STG
-- EXEC dbo.StageClearHistory
CREATE PROCEDURE dbo.StageClearHistory
AS BEGIN
	DECLARE
	      @STG_SRV                    sysname       = CAST(prm.RegisterGet('STAGE_DB_NAME', LEFT(DB_NAME(), 1) + 'Z_STG') AS sysname)
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @CrsStageTableName          sysname
		, @CrsSaveDepth               INT
		, @LogMessageText             XML
		, @CurrentQuery               NVARCHAR(MAX)
		, @CurrentParams              NVARCHAR(MAX) = N'@SaveDepth INT'
		, @MessageText                VARCHAR(500)
		, @ParentLogId                BIGINT;

	SET @LogMessageText = NULL;
    EXEC log.RegisterInsert
          @BatchId          = NULL
        , @ObjectRegisterId = NULL
        , @StatusCode       = 'MNT_CLEAR_STG_START'
        , @MessageText      = @LogMessageText
        , @Sender           = @Sender
        , @Params           = NULL
        , @ErrorLevel       = 0
        , @ParentLogId      = NULL
		, @ResultId         = @ParentLogId OUT;

	DECLARE crs CURSOR LOCAL READ_ONLY FORWARD_ONLY STATIC FOR
	    SELECT ISNULL(org.StageTableName, org.[Name]) AS StageTableName, ISNULL(org.SaveDepth, 10) AS SaveDepth
		FROM       dbo.ObjectRegister org
	OPEN crs;
	WHILE 1=1 BEGIN
	    FETCH NEXT FROM crs INTO @CrsStageTableName, @CrsSaveDepth;
		IF @@FETCH_STATUS!=0
		    BREAK;

		SET @CurrentQuery = N'
DELETE
FROM <@STG_SRV>.<@StageTableName>
WHERE BatchId<=(
	SELECT MAX(BatchId) AS MaxBatchId
	FROM (
		SELECT BatchId, ROW_NUMBER() OVER (ORDER BY BatchId DESC) AS rn
		FROM <@STG_SRV>.<@StageTableName>
		GROUP BY BatchId
	) s 
	WHERE rn > @SaveDepth
);';
		SET @CurrentQuery = REPLACE(REPLACE(@CurrentQuery
		                             , '<@STG_SRV>',        @STG_SRV)
									 , '<@StageTableName>', @CrsStageTableName)

		SET @LogMessageText = (
			    SELECT 
				      @STG_SRV           AS STG_SRV
					, @CrsStageTableName AS StageTableName
				    , @CurrentQuery      AS Query 
					, @CurrentParams     AS Params
					, (SELECT @CrsSaveDepth AS SaveDepth FOR XML PATH('Params'), TYPE)
			    FOR XML PATH('Params')
			);

		EXEC log.RegisterInsert
			  @BatchId          = NULL
			, @ObjectRegisterId = NULL
			, @StatusCode       = 'MNT_CLEAR_STG_OBJ_START'
			, @MessageText      = @LogMessageText
			, @Sender           = @Sender
			, @Params           = NULL
			, @ErrorLevel       = 0
			, @ParentLogId      = @ParentLogId;

		BEGIN TRY
            EXEC master.dbo.sp_executesql
		          @Query     = @CurrentQuery
		    	, @Params    = @CurrentParams
		    	, @SaveDepth = @CrsSaveDepth;
		END TRY
		BEGIN CATCH
		    SET @MessageText    = ERROR_MESSAGE();
		    SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

			EXEC log.RegisterInsert
		    	  @BatchId          = NULL
		    	, @ObjectRegisterId = NULL
		    	, @StatusCode	    = 'ERROR'
		    	, @MessageText      = @LogMessageText
		    	, @Sender           = @Sender
		    	, @Params           = NULL
		    	, @ErrorLevel       = 0
		    	, @ParentLogId      = @ParentLogId;
		    RETURN 1;
		END CATCH;
	END;
	CLOSE crs;
	DEALLOCATE crs;

	SET @LogMessageText = NULL;
	EXEC log.RegisterInsert
		  @BatchId          = NULL
		, @ObjectRegisterId = NULL
		, @StatusCode       = 'MNT_CLEAR_STG_FINISH'
		, @MessageText      = @LogMessageText
		, @Sender           = @Sender
		, @Params           = NULL
		, @ErrorLevel       = 0
		, @ParentLogId      = @ParentLogId;
END;
GO
GRANT EXEC ON dbo.StageClearHistory TO tz_report;