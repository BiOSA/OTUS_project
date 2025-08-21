CREATE TABLE tz.CreditLimitTransh
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CreditLimitTransh PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, CreditLimitTransh_RK                      BIGINT               NULL
	, Account_RK	                            BIGINT               NULL
	, CreditLimitContractId_RK	                BIGINT               NULL

	, CreditLimitTranshId			            UNIQUEIDENTIFIER     NULL
	, ApplicationId			                    UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId	                    UNIQUEIDENTIFIER     NULL
	, Number                                    INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitTransh_BatchId ON tz.CreditLimitTransh(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitTransh_EffectiveDateTill ON tz.CreditLimitTransh(EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CreditLimitTransh TO tz_report;