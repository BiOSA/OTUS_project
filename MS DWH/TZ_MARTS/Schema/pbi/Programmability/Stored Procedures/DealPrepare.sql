-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-02-21
-- Description:   Подготовка данных для витрины pbi.Deal
-- =============================================
CREATE PROCEDURE pbi.DealPrepare
	@BatchId BIGINT
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

	DECLARE 
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @BDS_ERROR                  BIGINT        = (SELECT BatchDetailStatusId FROM tz_work.dbo_BatchDetailStatus WHERE [Name] = 'ERROR')
		, @MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
		, @CurrentParams              NVARCHAR(MAX) = '@BatchId BIGINT';

	BEGIN TRY
		SET @LogMessageText = (
            SELECT
                  @Sender        AS Sender
                , @CurrentParams AS Params
                , (SELECT @BatchId AS BatchId FOR XML PATH('Params'), TYPE)
            FOR XML PATH('Params')
        );

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_PREPARE_START'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0
            , @ParentLogId      = NULL;

		DECLARE @TRANCOUNT INT = @@TRANCOUNT;

		BEGIN TRAN
		DELETE FROM ap FROM pbi.DealByDate ap WHERE ap.BatchId = @BatchId;
		INSERT INTO pbi.DealByDate (BatchId, Account_RK, EffectiveDate)
		SELECT @BatchId, s.Account_RK, MIN(s.EffectiveDateFrom) AS EffectiveDateFrom
		FROM (
			SELECT app.Account_RK, app.EffectiveDateFrom
			FROM tz_dds.Application app
			WHERE app.BatchId = @BatchId
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.Contact     c
			INNER JOIN tz_dds.Application app ON app.Customer_RK     = c.Customer_RK
			                                 AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE   c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.VwCheckBankScoringValue c
			INNER JOIN tz_dds.Application             app ON app.Account_RK      = c.Account_RK
						                                 AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.Verification c
			INNER JOIN tz_dds.Application  app ON app.Account_RK      = c.Account_RK
						                      AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.Application_final c
			INNER JOIN tz_dds.Application       app ON app.Account_RK      = c.Account_RK
						                           AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.PaymentSchedule c
			INNER JOIN tz_dds.Application     app ON app.Account_RK      = c.Account_RK
						                         AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ContactIntegration c
			INNER JOIN tz_dds.Application        app ON app.Customer_RK     = c.Customer_RK
						                            AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.AgredatorServiceLog c
			INNER JOIN tz_dds.Application         app ON app.Account_RK      = c.Account_RK
						                             AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE   c.BatchId = @BatchId
			UNION
			SELECT asl.Account_RK, arl.EffectiveDateFrom
			FROM       tz_dds.AgredatorRequestLog arl
			INNER JOIN tz_dds.AgredatorServiceLog asl ON asl.AgredatorServiceLogId = arl.ServiceLogId
			INNER JOIN tz_dds.Application         app ON app.Account_RK            = asl.Account_RK
						                             AND arl.EffectiveDateFrom     BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE arl.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ApplicationApproval c
			INNER JOIN tz_dds.Application         app ON app.Account_RK      = c.Account_RK
						                             AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ContactAddress c
			INNER JOIN tz_dds.Application    app ON app.Customer_RK  = c.Customer_RK
						                     AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ApplicationIntegration c
			INNER JOIN tz_dds.Application app ON app.Account_RK      = c.Account_RK
						                     AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE   c.BatchId           = @BatchId
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.SandboxInputLog c
			INNER JOIN tz_dds.Application app ON app.Account_RK      = c.Account_RK
						                     AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.PersCabFile c
			INNER JOIN tz_dds.Application app ON app.Account_RK      = c.Account_RK
						                     AND c.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE c.BatchId = @BatchId
			UNION
			SELECT app.Account_RK, bd.EffectiveDateFrom
			FROM       tz_dds.BD_MaxContactDeals bd
			INNER JOIN tz_dds.Contact                  c   ON bd.FIO               = c.FIO
			INNER JOIN tz_dds.Application              app ON app.Customer_RK      = c.Customer_RK
						                                  AND bd.EffectiveDateFrom BETWEEN app.EffectiveDateFrom AND app.EffectiveDateTill
			WHERE bd.BatchId = @BatchId
				AND ABS(DATEDIFF(DAY, TRY_CAST(c.BirthDate AS DATETIME), TRY_CAST(bd.BirthDate AS DATETIME)))<=1
			UNION
			SELECT app.Account_RK, bd.EffectiveDateFrom
			FROM       tz_dds.Application              app
			INNER JOIN tz_dds.BD_MaxContactDeals bd ON bd.PassportSeries = app.ContactDocumentSeries COLLATE DATABASE_DEFAULT
    											   AND bd.PassportNumber = app.ContactDocumentNumber COLLATE DATABASE_DEFAULT
			WHERE bd.BatchId = @BatchId
		) s
		INNER JOIN tz_dds.[Application] app ON app.Account_RK = s.Account_RK
		WHERE   s.Account_RK    IS NOT NULL
		    AND app.PaymentDate IS NOT NULL
			AND app.CreatedOn   <= s.EffectiveDateFrom
		GROUP BY s.Account_RK
		HAVING MIN(s.EffectiveDateFrom) >  @MARTS_INITIAL_DATE;

		UPDATE dbo.MartRegistry SET LastPrepareBatchId = @BatchId WHERE OBJECT_ID(DataPrepareProcedure) = OBJECT_ID(@Sender);

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_PREPARE_FINISH'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'ERROR'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

        RETURN 1;
	END CATCH;

	RETURN 0;
END;