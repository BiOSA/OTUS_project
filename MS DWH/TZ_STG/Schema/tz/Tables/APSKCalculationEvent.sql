CREATE TABLE tz.APSKCalculationEvent
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKCalculationEvent_RK   BIGINT               NULL

	, APSKCalculationEventId    UNIQUEIDENTIFIER     NULL
	, [Name]		            VARCHAR(500)         NULL
	, [Description]             VARCHAR(500)		 NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKCalculationEvent_BatchId        ON tz.APSKCalculationEvent(BatchId);
GO