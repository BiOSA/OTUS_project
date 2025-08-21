CREATE TABLE tz.CreditLimitContractStatus
(
      Id                                        BIGINT			 NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CreditLimitContractStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, EffectiveDateFrom                         DATETIME			 NULL
    , EffectiveDateTill                         DATETIME			 NULL
    , DataSourceName                            VARCHAR(50)			 NULL
    , IsNew                                     BIT					 NULL

	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, [Name]		                            VARCHAR(500)         NULL
	, [Description]                             VARCHAR(500)		 NULL
	, FinalState                                BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContractStatus_BatchId ON tz.CreditLimitContractStatus(BatchId, CreditLimitContractStatus_RK) INCLUDE (EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContractStatus_EffectiveDateTill ON tz.CreditLimitContractStatus(EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CreditLimitContractStatus TO tz_report;