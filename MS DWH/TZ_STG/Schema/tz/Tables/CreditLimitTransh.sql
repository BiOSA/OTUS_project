CREATE TABLE tz.CreditLimitTransh
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitTransh_RK                      BIGINT               NULL
	, Account_RK	                            BIGINT               NULL
	, CreditLimitContractId_RK	                BIGINT               NULL

	, CreditLimitTranshId			            UNIQUEIDENTIFIER     NULL
	, ApplicationId			                    UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId	                    UNIQUEIDENTIFIER     NULL
	, Number                                    INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitTransh_BatchId ON tz.CreditLimitTransh(BatchId, CreditLimitTranshId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitTransh_CreditLimitTransh ON tz.CreditLimitTransh(CreditLimitTranshId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitTransh TO tz_report;