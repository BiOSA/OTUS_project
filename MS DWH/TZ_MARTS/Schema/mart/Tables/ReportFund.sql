CREATE TABLE mart.ReportFund
(
      ACCOUNT_RK     BIGINT               NULL
    , ApplicationId  UNIQUEIDENTIFIER     NULL
    , ReportDate     DATE                 NULL
    , ContactId      UNIQUEIDENTIFIER     NULL
    , CUSTOMER_RK    BIGINT               NULL
    , Number         VARCHAR(50)          NULL
    , IsPDL          BIT                  NULL
    , ClientType     VARCHAR(10)          NULL
    , DateOpen       DATE                 NULL
    , DateClose      DATE                 NULL
    , DateSold	     DATE                 NULL
    , NumLoans	     SMALLINT             NULL
    , Product	     VARCHAR(500)         NULL
    , Channel	     VARCHAR(500)         NULL
    , AmtRequested	 INT                  NULL
    , AmtApproved	 INT                  NULL
    , AmtLoan	     INT                  NULL
    , VasQnt	     BIGINT               NULL
    , VasSum	     DECIMAL(19,8)        NULL
    , TermRequested	 INT                  NULL
    , TermFact	     INT                  NULL
    , LoanStatus	 VARCHAR(11)          NULL
    , Day30	         DATE                 NULL
    , Day31	         DATE                 NULL
    , Day60	         DATE                 NULL
    , Day90	         DATE                 NULL
    , DayX	         DATE                 NULL
    , Delq30	     INT                  NULL CONSTRAINT DF_mart_ReportFund_Delq30         DEFAULT(0)
    , Delq31	     INT                  NULL CONSTRAINT DF_mart_ReportFund_Delq31         DEFAULT(0)
    , Delq60	     INT                  NULL CONSTRAINT DF_mart_ReportFund_Delq60         DEFAULT(0)
    , Delq90	     INT                  NULL CONSTRAINT DF_mart_ReportFund_Delq90         DEFAULT(0)
    , DelqX	         INT                  NULL CONSTRAINT DF_mart_ReportFund_DelqX          DEFAULT(0)
    , DateToClose30	 DATE                 NULL
    , Datetoclose31	 DATE                 NULL
    , DateToClose60	 DATE                 NULL
    , DateToClose90	 DATE                 NULL
    , DateToCloseX	 DATE                 NULL
    , AmtDebt30	     BIGINT               NULL CONSTRAINT DF_mart_ReportFund_AmtDebt30      DEFAULT(0)
    , AmtDebt31	     BIGINT               NULL CONSTRAINT DF_mart_ReportFund_AmtDebt31      DEFAULT(0)
    , AmtDebt60	     BIGINT               NULL CONSTRAINT DF_mart_ReportFund_AmtDebt60      DEFAULT(0)
    , AmtDebt90	     BIGINT               NULL CONSTRAINT DF_mart_ReportFund_AmtDebt90      DEFAULT(0)
    , AmtDebtX	     BIGINT               NULL CONSTRAINT DF_mart_ReportFund_AmtDebtX	    DEFAULT(0)
    , ProcentPaid90	 BIGINT               NULL CONSTRAINT DF_mart_ReportFund_ProcentPaid90  DEFAULT(0)
    , ProcentPaidX	 BIGINT               NULL CONSTRAINT DF_mart_ReportFund_ProcentPaidX	DEFAULT(0)
    , ProlongationsX BIGINT               NULL CONSTRAINT DF_mart_ReportFund_ProlongationsX DEFAULT(0)
                                               CONSTRAINT UX_mart_ReportFund_ACCOUNT_RK UNIQUE(ACCOUNT_RK)
);
GO
CREATE CLUSTERED    INDEX PK_mart_ReportFund_Account_RK        ON mart.ReportFund(ACCOUNT_RK);
GO
CREATE NONCLUSTERED INDEX IX_mart_ReportFund_ApplicationId     ON mart.ReportFund(ApplicationId) INCLUDE (Number);
GO
CREATE NONCLUSTERED INDEX IX_mart_ReportFund_ContactId         ON mart.ReportFund(ContactId);
GO
CREATE NONCLUSTERED INDEX IX_mart_ReportFund_ContactId_Product ON mart.ReportFund(Product,DateOpen,DateClose) INCLUDE (ApplicationId,ContactId,ClientType,AmtLoan,LoanStatus);
GO
GRANT SELECT ON mart.ReportFund TO [1c_dwh], tz_report;