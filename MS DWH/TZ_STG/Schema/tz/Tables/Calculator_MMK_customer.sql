CREATE TABLE tz.Calculator_MMK_customer
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ClientId                                  BIGINT               NULL
	, [Name]                                    VARCHAR(150)         NULL
    , DOB                                       DATE                 NULL
    , docSer                                    VARCHAR(8)           NULL
    , docNum                                    VARCHAR(12)          NULL
    , numLoans                                  INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Calculator_MMK_customer_BatchId ON tz.Calculator_MMK_customer(BatchId, ClientId);
GO
GRANT DELETE, INSERT ON tz.Calculator_MMK_customer TO tz_report;