CREATE TABLE tz.APSKHistory
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKHistoryId             UNIQUEIDENTIFIER     NULL
	, EventDateTime             DATETIME2(7)         NULL
	, ActualCalculationDateTime DATETIME2(7)         NULL
	, ApplicationId             UNIQUEIDENTIFIER     NULL
	, APSK                      DECIMAL(8, 3)        NULL
	, iRate                     FLOAT                NULL
	, CalculationEventId        UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId		UNIQUEIDENTIFIER     NULL
	, OperationHistoryId		UNIQUEIDENTIFIER     NULL
	, Comment                   VARCHAR(MAX)         NULL

	, APSKHistory_RK            BIGINT               NULL
	, Account_RK                BIGINT               NULL
	, CreditLimitContractId_RK  BIGINT               NULL
	, CalculationEvent_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKHistory_BatchId        ON tz.APSKHistory(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_APSKHistory_RK     ON tz.APSKHistory(APSKHistory_RK)     WHERE APSKHistory_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.APSKHistory(Account_RK)         WHERE Account_RK IS NULL;
