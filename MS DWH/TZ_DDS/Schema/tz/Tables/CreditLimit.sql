CREATE TABLE tz.CreditLimit
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CreditLimit PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL
	
	, CreditLimit_RK	                        BIGINT               NULL

	, CreditLimitId	                            UNIQUEIDENTIFIER NOT NULL
	, [Name]                                    VARCHAR(250)         NULL
	, Term	                                    INT                  NULL
	, MaxSum                                    DECIMAL(18, 2)       NULL	
	, IsActive	                                BIT                  NULL
	, StartDate	                                DATETIME             NULL
	, EndDate	                                DATETIME             NULL
	, RatePerDay	                            DECIMAL(18, 2)       NULL	
	, MaxTranshTerm                             INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimit_BatchId ON tz.CreditLimit(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimit_Key ON tz.CreditLimit(BatchId, CreditLimit_RK) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CreditLimit TO tz_report;