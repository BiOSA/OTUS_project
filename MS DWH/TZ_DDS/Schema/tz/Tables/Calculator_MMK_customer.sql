CREATE TABLE tz.Calculator_MMK_customer
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Calculator_MMK_customer PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , ClientId                                  BIGINT               NULL    
	, [Name]                                    VARCHAR(150)         NULL
    , DOB                                       DATE                 NULL
    , docSer                                    VARCHAR(8)           NULL
    , docNum                                    VARCHAR(12)          NULL
    , numLoans                                  INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Calculator_MMK_customer_BatchId ON tz.Calculator_MMK_customer(BatchId) INCLUDE (EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_Calculator_MMK_customer_Key ON tz.Calculator_MMK_customer([Name], DOB, docSer, docNum, DataSourceName) INCLUDE (numLoans);
GO
--CREATE NONCLUSTERED INDEX IX_tz_Calculator_MMK_customer_COMPOSITE_HASH ON tz.Calculator_MMK_customer(COMPOSITE_HASH, DataSourceName) INCLUDE (numLoans) WHERE EffectiveDateTill = '5999-12-31';
GO
GRANT DELETE, INSERT, UPDATE ON tz.Calculator_MMK_customer TO tz_report;