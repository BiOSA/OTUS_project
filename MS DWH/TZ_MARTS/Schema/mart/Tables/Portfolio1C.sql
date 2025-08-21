CREATE TABLE mart.Portfolio1C
(
	  ReportDate     DATE             NOT NULL
	, ApplicationId  UNIQUEIDENTIFIER NOT NULL
	, Account_RK     BIGINT               NULL
	, Number         VARCHAR(50)          NULL
	, ContactId      UNIQUEIDENTIFIER     NULL
	, Contact_RK     BIGINT               NULL
	, OfferSum       DECIMAL(18, 2)   NOT NULL
	, DebtOD         DECIMAL(18, 2)   NOT NULL
	, DebtPercent    DECIMAL(18, 2)   NOT NULL
	, DebtOther      DECIMAL(18, 2)   NOT NULL
	,                                           CONSTRAINT PK_mart_Portfolio1C PRIMARY KEY(ReportDate, ApplicationId)
)
GO
CREATE NONCLUSTERED INDEX IX_mart_Portfolio1C ON mart.Portfolio1C(Account_RK);
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON mart.Portfolio1C TO [1c_dwh];