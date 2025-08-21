-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-02-13
-- Description:   Подготовка данных для витрины pbi.[Application]
-- =============================================
CREATE PROCEDURE pbi.ApplicationPrepare
	  @BatchId      BIGINT
	, @ACCOUNT_RK   BIGINT = NULL
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
		DELETE FROM ap FROM pbi.ApplicationByDate ap WHERE ap.BatchId = @BatchId;
		INSERT INTO pbi.ApplicationByDate (BatchId, Account_RK, EffectiveDate)
		SELECT DISTINCT @BatchId, s.Account_RK, MIN(s.EffectiveDateFrom) AS EffectiveDateFrom
		FROM (
			SELECT app.Account_RK, app.EffectiveDateFrom
			FROM tz_dds.[Application] app
			WHERE   app.BatchId           = @BatchId
				AND app.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.Contact       c
			INNER JOIN tz_dds.[Application] app ON app.Customer_RK = c.Customer_RK
			WHERE   c.BatchId           =  @BatchId
				AND c.EffectiveDateFrom >  @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.VwCheckBankScoringValue c
			WHERE   c.BatchId           = @BatchId
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.Verification c
			WHERE   c.BatchId           = @BatchId
				AND c.Account_RK        IS NOT NULL
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.Application_final c
			WHERE   c.BatchId           = @BatchId
				AND c.Account_RK        IS NOT NULL
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.PaymentSchedule c
			WHERE   c.BatchId           = @BatchId
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ContactIntegration c
			INNER JOIN tz_dds.[Application]        app ON app.Customer_RK = c.Customer_RK
			WHERE   c.BatchId           =  @BatchId
				AND c.EffectiveDateFrom >  @MARTS_INITIAL_DATE 
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.AgredatorServiceLog c
			WHERE   c.BatchId           = @BatchId
				AND c.Account_RK        IS NOT NULL
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT asl.Account_RK, arl.EffectiveDateFrom
			FROM       tz_dds.AgredatorRequestLog arl
			INNER JOIN tz_dds.AgredatorServiceLog asl ON asl.AgredatorServiceLog_RK = arl.AgredatorServiceLog_RK
			WHERE   arl.BatchId           = @BatchId
				AND asl.Account_RK        IS NOT NULL
				AND arl.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM tz_dds.ApplicationApproval c
			WHERE   c.BatchId           = @BatchId
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT app.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ContactAddress c
			INNER JOIN tz_dds.[Application]    app ON app.Customer_RK = c.Customer_RK
			WHERE   c.BatchId           =  @BatchId
				AND c.EffectiveDateFrom >  @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.ApplicationIntegration c
			WHERE   c.BatchId           =  @BatchId
				AND c.EffectiveDateFrom >  @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.SandboxInputLog c
			WHERE   c.BatchId           = @BatchId
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT c.Account_RK, c.EffectiveDateFrom
			FROM       tz_dds.PersCabFile c
			WHERE   c.BatchId           = @BatchId
				AND c.Account_RK        IS NOT NULL
				AND c.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT app.Account_RK, bd.EffectiveDateFrom
			FROM       tz_dds.BD_MaxContactDeals bd
			INNER JOIN tz_dds.Contact            c   ON bd.FIO = c.FIO
			INNER JOIN tz_dds.[Application]      app ON app.Customer_RK = c.Customer_RK
			WHERE   bd.BatchId           = @BatchId
				AND bd.EffectiveDateFrom > @MARTS_INITIAL_DATE
				AND ABS(DATEDIFF(DAY, TRY_CAST(c.BirthDate AS DATETIME), TRY_CAST(bd.BirthDate AS DATETIME)))<=1
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
			UNION
			SELECT app.Account_RK, bd.EffectiveDateFrom
			FROM       tz_dds.[Application]              app
			INNER JOIN tz_dds.BD_MaxContactDeals bd ON bd.PassportSeries = app.ContactDocumentSeries COLLATE DATABASE_DEFAULT
    											   AND bd.PassportNumber = app.ContactDocumentNumber COLLATE DATABASE_DEFAULT
			WHERE   bd.BatchId           =  @BatchId
				AND bd.EffectiveDateFrom >  @MARTS_INITIAL_DATE
				AND (@ACCOUNT_RK IS NULL OR Account_RK = @ACCOUNT_RK)
		) s
		INNER JOIN tz_dds.[Application] app ON app.Account_RK = s.Account_RK
		GROUP BY s.Account_RK, app.CreatedOn
		HAVING app.CreatedOn <= MIN(s.EffectiveDateFrom);

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