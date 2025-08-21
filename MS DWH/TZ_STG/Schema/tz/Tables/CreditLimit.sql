CREATE TABLE tz.CreditLimit
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitId	                            UNIQUEIDENTIFIER NOT NULL
	
	, CreditLimit_RK	                        BIGINT               NULL

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
CREATE CLUSTERED INDEX IX_tz_CreditLimit_BatchId ON tz.CreditLimit(BatchId, CreditLimitId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimit_CreditLimitId ON tz.CreditLimit(CreditLimitId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimit TO tz_report;