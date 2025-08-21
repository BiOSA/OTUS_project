-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2024-06-21
-- Description: Выгрузка объекта синхронизации слоя DDS для tz.ApplicationAudit
-- EXEC dbo.ApplicationAudit_DDSMainProcedure 1, 'tz.ApplicationAudit'
CREATE PROCEDURE tz.ApplicationAuditDDSMainProcedure
      @BatchId            BIGINT
    , @ObjectRegisterName VARCHAR(50) = 'tz.ApplicationAudit'
	, @ParentLogId        BIGINT      = NULL
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE
	      @MAX_EFFECTIVE_DATE         DATE          = CAST(prm.RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE)
		, @STGDataSourceName          VARCHAR(50)   = (
		                                                  SELECT ds.Code
													      FROM       dbo.ObjectRegister org
														  INNER JOIN dbo.DataSource     ds  ON ds.DataSourceId = org.DataSourceId
														  WHERE org.[Name] = @ObjectRegisterName
		                                              )
		, @MessageText                VARCHAR(500)
		, @LogMessageText             XML
		, @ObjectRegisterId           BIGINT
		, @BatchDetailId              BIGINT
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @BDS_ERROR                  BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'ERROR')
		, @BDS_DONE                   BIGINT        = (SELECT BatchDetailStatusId FROM dbo.BatchDetailStatus WHERE [Name] = 'DONE')
		, @TRANCOUNT                  INT           = @@TRANCOUNT
		, @DDSChangedRowAffectedCount BIGINT        = 0
        , @DDSNewRowAffectedCount     BIGINT        = 0;

	SELECT @ObjectRegisterId = sr.ObjectRegisterId
    FROM dbo.ObjectRegister sr
    WHERE sr.[Name] = @ObjectRegisterName;

	SELECT @BatchDetailId = bd.BatchDetailId
    FROM dbo.BatchDetail bd
    WHERE   bd.BatchId          = @BatchId
        AND bd.ObjectRegisterId = @ObjectRegisterId;

	BEGIN TRY
		BEGIN TRAN;
		DELETE FROM tz_dds.ApplicationAudit WHERE BatchId = @BatchId;

		DROP TABLE IF EXISTS #ApplicationAuditDDSMainProcedure;
		SELECT taa.Id, saa.ApplicationId, DATEADD(MS, -2, saa.EffectiveDate) AS EffectiveDateTill
		INTO #ApplicationAuditDDSMainProcedure
		FROM (
			SELECT saa.ApplicationId, saa.EffectiveDate, ROW_NUMBER() OVER (PARTITION BY saa.ApplicationId ORDER BY saa.EffectiveDate) AS rn
			FROM tz_stg.ApplicationAudit saa
			WHERE saa.BatchId = @BatchId
		) saa
		INNER JOIN tz_dds.ApplicationAudit taa ON taa.ApplicationId = saa.ApplicationId
		WHERE   saa.rn                = 1
			AND taa.EffectiveDateTill = @MAX_EFFECTIVE_DATE;
	
		UPDATE taa SET
			EffectiveDateTill = mp.EffectiveDateTill
		FROM #ApplicationAuditDDSMainProcedure mp
		JOIN tz_dds.ApplicationAudit           taa ON taa.Id = mp.Id;
		SET @DDSChangedRowAffectedCount = @@ROWCOUNT;

		INSERT INTO tz_dds.ApplicationAudit(BatchId, EffectiveDateFrom, EffectiveDateTill, DataSourceName, IsNew, ApplicationAuditId, ApplicationId, StatusId_New, StatusId_Old, ChangeDate)
		SELECT @BatchId, saa.EffectiveDate, ISNULL(DATEADD(MS, -2, LEAD(saa.EffectiveDate) OVER (PARTITION BY saa.ApplicationId ORDER BY saa.EffectiveDate)), @MAX_EFFECTIVE_DATE) AS EffectiveDateTill, @STGDataSourceName, IIF(EXISTS(SELECT * FROM #ApplicationAuditDDSMainProcedure mp WHERE mp.ApplicationId = saa.ApplicationId),1,0) AS IsNew, ApplicationAuditId, ApplicationId, StatusId_New, StatusId_Old, ChangeDate
		FROM tz_stg.ApplicationAudit saa
		WHERE saa.BatchId = @BatchId;
		SET @DDSNewRowAffectedCount = @@ROWCOUNT;

		UPDATE dbo.BatchDetail SET 
              StatusId                   = @BDS_DONE
            , DDSRowAffectedCount        = ISNULL(@DDSChangedRowAffectedCount, 0) + ISNULL(@DDSNewRowAffectedCount, 0)
            , DDSChangedRowAffectedCount = @DDSChangedRowAffectedCount
            , DDSNewRowAffectedCount     = @DDSNewRowAffectedCount
            , [Message]                  = @MessageText
        WHERE BatchDetailId = @BatchDetailId;

		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

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

        RETURN 1;
	END CATCH;

	RETURN 0;
	
END