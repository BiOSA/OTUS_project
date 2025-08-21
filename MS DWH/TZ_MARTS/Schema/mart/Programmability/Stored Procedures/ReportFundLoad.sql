-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-10-17
-- Description:   Выгрузка данных для витрины mart.ReportFund
-- =============================================
CREATE PROCEDURE mart.ReportFundLoad
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET NOCOUNT, XACT_ABORT ON;

    DECLARE
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MessageText                VARCHAR(500)
		, @CurrentParams              NVARCHAR(MAX) = NULL
        , @MartRegistryId             BIGINT        = (SELECT TOP 1 MartRegistryId FROM dbo.MartRegistry WHERE OBJECT_ID(DataLoadProcedure) = OBJECT_ID(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)))
        , @LastLoadDate               DATETIME

	DROP TABLE IF EXISTS ##martReportFundLoad;
	SELECT TOP 0 * INTO ##martReportFundLoad FROM mart.ReportFund;
	CREATE CLUSTERED INDEX PK_##martReportFundLoad ON ##martReportFundLoad(ACCOUNT_RK);

    BEGIN TRY
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

        SELECT @LastLoadDate = GETDATE();

		INSERT INTO ##martReportFundLoad (Number, ClientType, NumLoans, Product, Channel, AmtRequested, AmtApproved, AmtLoan, VasQnt, VasSum, TermRequested, TermFact, LoanStatus, DateOpen, DateClose, DateSold, Day30, Day31, Day60, Day90, DayX, Delq30, Delq31, Delq60, Delq90, DelqX, DateToClose30, Datetoclose31, DateToClose60, DateToClose90, DateToCloseX, AmtDebt30, AmtDebt31, AmtDebt60, AmtDebt90, AmtDebtX, ProcentPaid90, ProcentPaidX, ProlongationsX, ContactId, ApplicationId)
		EXEC tz.rpt_VasNFeeGet
			@ReportDate = NULL;

		EXEC tz_dds.conv_CodeTranslate
              @SourceTableName  = '$(TZ_MARTS_DB).mart.ReportFund'
			, @ResultTableName  = '##martReportFundLoad';

		UPDATE ##martReportFundLoad SET ReportDate = GETDATE();

        DECLARE @AffectedAmount BIGINT = 0;
	    --1. те, которые есть, обновить, если изменились поля
        UPDATE o SET
	          ReportDate     = n.ReportDate
			, ContactId		 = n.ContactId
			, Number         = n.Number
			, IsPDL          = IIF(n.Product = 'инстолмент', 0, 1)
			, ClientType     = n.ClientType
			, DateOpen       = n.DateOpen
			, DateClose      = n.DateClose
			, DateSold	     = n.DateSold	
			, NumLoans	     = n.NumLoans	
			, Product	     = n.Product	
			, Channel	     = n.Channel	
			, AmtRequested	 = n.AmtRequested	
			, AmtApproved	 = n.AmtApproved	
			, AmtLoan	     = n.AmtLoan	
			, VasQnt	     = n.VasQnt	
			, VasSum	     = n.VasSum	
			, TermRequested	 = n.TermRequested	
			, TermFact	     = n.TermFact	
			, LoanStatus	 = n.LoanStatus	
			, Day30	         = n.Day30	
			, Day31	         = n.Day31	
			, Day60	         = n.Day60	
			, Day90	         = n.Day90	
			, DayX	         = n.DayX	
			, Delq30	     = n.Delq30	
			, Delq31	     = n.Delq31	
			, Delq60	     = n.Delq60	
			, Delq90	     = n.Delq90	
			, DelqX	         = n.DelqX	
			, DateToClose30	 = n.DateToClose30	
			, Datetoclose31	 = n.Datetoclose31	
			, DateToClose60	 = n.DateToClose60	
			, DateToClose90	 = n.DateToClose90	
			, DateToCloseX	 = n.DateToCloseX	
			, AmtDebt30	     = n.AmtDebt30	
			, AmtDebt31	     = n.AmtDebt31	
			, AmtDebt60	     = n.AmtDebt60	
			, AmtDebt90	     = n.AmtDebt90	
			, AmtDebtX	     = n.AmtDebtX	
			, ProcentPaid90	 = n.ProcentPaid90	
			, ProcentPaidX	 = n.ProcentPaidX	
			, ProlongationsX = n.ProlongationsX
        FROM       ##martReportFundLoad n
        INNER JOIN mart.ReportFund      o ON n.ACCOUNT_RK = o.ACCOUNT_RK
        WHERE
			   o.ContactId		              != n.ContactId
			OR o.Number                       != n.Number
			OR o.IsPDL                        != IIF(n.Product = 'инстолмент', 0, 1)
			OR o.ClientType                   != n.ClientType
			OR o.DateOpen                     != n.DateOpen
			OR ISNULL(o.DateClose, '19000101')!= ISNULL(n.DateClose, '19000101')
			OR ISNULL(o.DateSold, '19000101') != ISNULL(n.DateSold, '19000101')
			OR o.NumLoans	                  != n.NumLoans	
			OR o.Product	                  != n.Product	
			OR o.Channel	                  != n.Channel	
			OR o.AmtRequested	              != n.AmtRequested	
			OR o.AmtApproved	              != n.AmtApproved	
			OR o.AmtLoan	                  != n.AmtLoan	
			OR ISNULL(o.VasQnt, -1)           != ISNULL(n.VasQnt, -1)
			OR ISNULL(o.VasSum, -1)           != ISNULL(n.VasSum, -1)
			OR o.TermRequested	              != n.TermRequested	
			OR o.TermFact	                  != n.TermFact	
			OR o.LoanStatus	                  != n.LoanStatus	
			OR o.Day30	                      != n.Day30	
			OR o.Day31	                      != n.Day31	
			OR o.Day60	                      != n.Day60	
			OR o.Day90	                      != n.Day90	
			OR o.DayX	                      != n.DayX	
			OR o.Delq30	                      != n.Delq30	
			OR o.Delq31	                      != n.Delq31	
			OR o.Delq60	                      != n.Delq60	
			OR o.Delq90	                      != n.Delq90	
			OR o.DelqX	                      != n.DelqX	
			OR o.DateToClose30	              != n.DateToClose30	
			OR o.Datetoclose31	              != n.Datetoclose31	
			OR o.DateToClose60	              != n.DateToClose60	
			OR o.DateToClose90	              != n.DateToClose90	
			OR o.DateToCloseX	              != n.DateToCloseX	
			OR o.AmtDebt30	                  != n.AmtDebt30	
			OR o.AmtDebt31	                  != n.AmtDebt31	
			OR o.AmtDebt60	                  != n.AmtDebt60	
			OR o.AmtDebt90	                  != n.AmtDebt90	
			OR o.AmtDebtX	                  != n.AmtDebtX	
			OR o.ProcentPaid90	              != n.ProcentPaid90	
			OR o.ProcentPaidX	              != n.ProcentPaidX	
			OR o.ProlongationsX               != n.ProlongationsX;
        SET @AffectedAmount += @@ROWCOUNT;

        --2. которых нет - внести
	    INSERT INTO mart.ReportFund(ReportDate, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, Number, IsPDL, ClientType, DateOpen, DateClose, DateSold, NumLoans, Product, Channel, AmtRequested, AmtApproved, AmtLoan, VasQnt, VasSum, TermRequested, TermFact, LoanStatus, Day30, Day31, Day60, Day90, DayX, Delq30, Delq31, Delq60, Delq90, DelqX, DateToClose30, Datetoclose31, DateToClose60, DateToClose90, DateToCloseX, AmtDebt30, AmtDebt31, AmtDebt60, AmtDebt90, AmtDebtX, ProcentPaid90, ProcentPaidX, ProlongationsX)
	    SELECT n.ReportDate, n.ApplicationId, n.ACCOUNT_RK, n.ContactId, n.CUSTOMER_RK, n.Number, IIF(n.Product = 'инстолмент', 0, 1) AS IsPDL, n.ClientType, n.DateOpen, n.DateClose, n.DateSold, n.NumLoans, n.Product, n.Channel, n.AmtRequested, n.AmtApproved, n.AmtLoan, n.VasQnt, n.VasSum, n.TermRequested, n.TermFact, n.LoanStatus, n.Day30, n.Day31, n.Day60, n.Day90, n.DayX, n.Delq30, n.Delq31, n.Delq60, n.Delq90, n.DelqX, n.DateToClose30, n.Datetoclose31, n.DateToClose60, n.DateToClose90, n.DateToCloseX, n.AmtDebt30, n.AmtDebt31, n.AmtDebt60, n.AmtDebt90, n.AmtDebtX, n.ProcentPaid90, n.ProcentPaidX, n.ProlongationsX
	    FROM      ##martReportFundLoad n
        LEFT JOIN mart.ReportFund      o ON n.ACCOUNT_RK = o.ACCOUNT_RK
	    WHERE o.ACCOUNT_RK IS NULL;
        SET @AffectedAmount += @@ROWCOUNT;
	
        UPDATE dbo.MartRegistry SET
            LastLoadDate = @LastLoadDate
        WHERE MartRegistryId = @MartRegistryId;

        EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
            , @ObjectRegisterId = NULL
            , @StatusCode       = 'MART_LOAD_FINISH'
            , @MessageText      = @LogMessageText
            , @Sender           = @Sender
            , @Params           = NULL
            , @ErrorLevel       = 0;

		DROP TABLE IF EXISTS ##martReportFundLoad;
	END TRY
	BEGIN CATCH
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

		DROP TABLE IF EXISTS ##martReportFundLoad;

		THROW 50001, @MessageText, 1;

		RETURN 1;
	END CATCH;

	RETURN 0;
END