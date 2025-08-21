CREATE TABLE tz.CreditLimitContract
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CreditLimitContract PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, CreditLimitContract_RK	                BIGINT               NULL
	, CreditLimit_RK	                        BIGINT               NULL
	, Customer_RK				                BIGINT               NULL
	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractId                     UNIQUEIDENTIFIER     NULL
	, ContactId                                 UNIQUEIDENTIFIER     NULL
	, Number                                    VARCHAR(50)          NULL
	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, StartDate                                 DATETIME             NULL
	, StartDateDT                               DATE                 NULL
	, EndDate                                   DATETIME             NULL
	, EndDateDT                                 DATE                 NULL
	, PlannedEndDate                            DATETIME             NULL
	, PlannedEndDateDT                          DATE                 NULL
	, FileId                                    UNIQUEIDENTIFIER     NULL
	, CreditLimitId                             UNIQUEIDENTIFIER     NULL
	, [Sum]                                     DECIMAL(18, 2)       NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContract_BatchId ON tz.CreditLimitContract(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContract_Key ON tz.CreditLimitContract(BatchId, CreditLimitContract_RK) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CreditLimitContract TO tz_report;