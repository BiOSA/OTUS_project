CREATE TABLE tz.CreditLimitContractStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, [Name]		                            VARCHAR(500)         NULL
	, [Description]                             VARCHAR(500)		 NULL
	, FinalState                                BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitContractStatus_BatchId ON tz.CreditLimitContractStatus(BatchId, CreditLimitContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContractStatus_CreditLimitContractStatus ON tz.CreditLimitContractStatus(CreditLimitContractStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContractStatus TO tz_report;