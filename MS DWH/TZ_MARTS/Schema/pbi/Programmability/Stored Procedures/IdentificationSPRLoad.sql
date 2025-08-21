-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-02-26
-- Description:   Выгрузка витрины идентификаций клиентов pbi.Identification
-- =============================================
CREATE PROCEDURE pbi.IdentificationSPRLoad
	@Reload BIT = 0
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

	DECLARE 
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @BDS_ERROR                  BIGINT        = (SELECT BatchDetailStatusId FROM tz_work.dbo_BatchDetailStatus WHERE [Name] = 'ERROR')
		, @CurrentParams              NVARCHAR(MAX) = NULL
        , @SliceDate                  DATETIME;

	BEGIN TRY
		DECLARE @TRANCOUNT INT = @@TRANCOUNT;
		SET @LogMessageText = (
            SELECT
                  @Sender        AS Sender
                , @CurrentParams AS Params
                , (SELECT NULL FOR XML PATH('Params'), TYPE)
            FOR XML PATH('Params')
        );

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_START'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0
            , @ParentLogId      = NULL;

		IF @Reload = 0
            SELECT @SliceDate = MAX(UpdateDate) FROM pbi.IdentificationSPR;

		DROP TABLE IF EXISTS #pbi_IdentificationSPRLoad_bpm_result;
		CREATE TABLE #pbi_IdentificationSPRLoad_bpm_result
		(
			  ApplicationId  UNIQUEIDENTIFIER     NULL
	        , ContactId      UNIQUEIDENTIFIER     NULL
	        , FillingDate    DATETIME             NULL
	        , PaymentDate    DATETIME             NULL
			, RequestDate    DATETIME             NULL

			, PFRFNSDate     DATETIME             NULL
			, OldGosusDate   DATETIME             NULL
			, CurGosusDate   DATETIME             NULL
			, ScanDate       DATETIME             NULL
			, TinkoffDate    DATETIME             NULL
			, WOScan         DATETIME             NULL
		);
		CREATE CLUSTERED INDEX PK_#pbi_IdentificationSPRLoad_bpm_result ON #pbi_IdentificationSPRLoad_bpm_result(ApplicationId);

		INSERT INTO #pbi_IdentificationSPRLoad_bpm_result(ApplicationId, RequestDate, PFRFNSDate, OldGosusDate, ScanDate, CurGosusDate, TinkoffDate, WOScan)
		EXEC risk_spr.tz_app_IdentificationSPRGet
			 @SliceDate       = @SliceDate;

		UPDATE i SET
			  ContactId   = a.ContactId
			, FillingDate = a.FillingDate
			, PaymentDate = a.PaymentDate
		FROM       #pbi_IdentificationSPRLoad_bpm_result i
		INNER JOIN [$(TZ_DWH_DB)].tz.[Application]       a ON i.ApplicationId = a.Id

		--не ТЗ
		DELETE FROM #pbi_IdentificationSPRLoad_bpm_result WHERE ContactId IS NULL;

		--Поиск пересечений
		DROP TABLE IF EXISTS #pbi_IdentificationSPRLoad_bpm_cross;
		CREATE TABLE #pbi_IdentificationSPRLoad_bpm_cross
		(
		    ApplicationId UNIQUEIDENTIFIER NOT NULL
		);
		CREATE CLUSTERED INDEX PK_#pbi_IdentificationSPRLoad_bpm_cross ON #pbi_IdentificationSPRLoad_bpm_cross(ApplicationId);

		INSERT INTO #pbi_IdentificationSPRLoad_bpm_cross(ApplicationId)
		SELECT r.ApplicationId
		FROM       #pbi_IdentificationSPRLoad_bpm_result r
		INNER JOIN pbi.IdentificationSPR                 i ON i.ApplicationId = r.ApplicationId;

		BEGIN TRAN
		--Обновление тех, которые есть в витрине, но с другими данными
		UPDATE i SET
		      UpdateDate     = GETDATE()
			, ContactId      = r.ContactId
			, FillingDate    = r.FillingDate
			, PaymentDate    = r.PaymentDate

			, PFRFNSDate     = r.PFRFNSDate
			, OldGosusDate   = r.OldGosusDate
			, CurGosusDate   = r.CurGosusDate
			, ScanDate       = r.ScanDate
			, TinkoffDate    = r.TinkoffDate
			, WOScan         = r.WOScan
		FROM (
			SELECT r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.PFRFNSDate, r.OldGosusDate, r.CurGosusDate, r.ScanDate, r.TinkoffDate, r.WOScan
			FROM (
				SELECT r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.PFRFNSDate, r.OldGosusDate, r.CurGosusDate, r.ScanDate, r.TinkoffDate, r.WOScan
				FROM       #pbi_IdentificationSPRLoad_bpm_cross  c
				INNER JOIN #pbi_IdentificationSPRLoad_bpm_result r ON r.ApplicationId = c.ApplicationId
			) r
			EXCEPT
			(
				SELECT r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.PFRFNSDate, r.OldGosusDate, r.CurGosusDate, r.ScanDate, r.TinkoffDate, r.WOScan
				FROM (
					SELECT r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.PFRFNSDate, r.OldGosusDate, r.CurGosusDate, r.ScanDate, r.TinkoffDate, r.WOScan
					FROM       #pbi_IdentificationSPRLoad_bpm_cross c
					INNER JOIN pbi.IdentificationSPR                r ON r.ApplicationId = c.ApplicationId
				) r
			)
		) r 
		INNER JOIN pbi.IdentificationSPR i ON i.ApplicationId = r.ApplicationId;

		--Внесение новых
		INSERT INTO pbi.IdentificationSPR(UpdateDate, ApplicationId, ContactId, FillingDate, PaymentDate, PFRFNSDate, OldGosusDate, CurGosusDate, ScanDate, TinkoffDate, WOScan)
		SELECT GETDATE(), r.ApplicationId, r.ContactId, r.FillingDate, r.PaymentDate, r.PFRFNSDate, r.OldGosusDate, r.CurGosusDate, r.ScanDate, r.TinkoffDate, r.WOScan
		FROM      #pbi_IdentificationSPRLoad_bpm_result r
		LEFT JOIN pbi.IdentificationSPR                 i ON r.ApplicationId = i.ApplicationId
		WHERE i.ApplicationId IS NULL;

		DROP TABLE IF EXISTS #pbi_IdentificationSPRLoad_bpm_result, #pbi_IdentificationSPRLoad_bpm_cross;

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_FINISH'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;
		
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

        WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		DROP TABLE IF EXISTS #pbi_IdentificationSPRLoad_bpm_result, #pbi_IdentificationSPRLoad_bpm_cross;

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'ERROR'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

		THROW 50001, @MessageText, 1;

        RETURN 1;
	END CATCH;

	RETURN 0;
END
GO
GRANT EXEC ON pbi.IdentificationSPRLoad TO tz_report;
