CREATE TABLE tz.APSKHistory
(
	  Id                        BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_APSKHistory PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	
	, EffectiveDateFrom         DATETIME             NULL
	, EffectiveDateTill         DATETIME             NULL
	, DataSourceName            VARCHAR(50)          NULL
	, IsNew                     BIT                  NULL

    , APSKHistory_RK            BIGINT               NULL
	, Account_RK                BIGINT               NULL
	, CreditLimitContractId_RK  BIGINT               NULL
	, CalculationEvent_RK       BIGINT               NULL

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
)
GO
CREATE NONCLUSTERED INDEX IX_tz_APSKHistory_BatchId              ON tz.APSKHistory (BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_APSKHistory_Account_RK           ON tz.APSKHistory (Account_RK, EffectiveDateTill) INCLUDE (CalculationEventId, EventDateTime, APSK);
GO
