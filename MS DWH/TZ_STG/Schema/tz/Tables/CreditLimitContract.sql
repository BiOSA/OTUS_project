CREATE TABLE tz.CreditLimitContract
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

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
CREATE CLUSTERED INDEX IX_tz_CreditLimitContract_BatchId ON tz.CreditLimitContract(BatchId, CreditLimitContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContract_CreditLimitContract ON tz.CreditLimitContract(CreditLimitContractId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContract TO tz_report;