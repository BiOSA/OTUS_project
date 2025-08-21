CREATE TABLE tz.APSKCalculationEvent
(
      Id                        BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_APSKCalculationEvent PRIMARY KEY
	, BatchId                   BIGINT           NOT NULL
	
	, EffectiveDateFrom         DATETIME             NULL
	, EffectiveDateTill         DATETIME             NULL
	, DataSourceName            VARCHAR(50)          NULL
	, IsNew                     BIT                  NULL

	, APSKCalculationEvent_RK   BIGINT               NULL

	, APSKCalculationEventId    UNIQUEIDENTIFIER     NULL
	, [Name]		            VARCHAR(500)         NULL
	, [Description]             VARCHAR(500)		 NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_APSKCalculationEvent_BatchId              ON tz.APSKCalculationEvent (BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_APSKCalculationEvent_EffectiveDateTill    ON tz.APSKCalculationEvent (EffectiveDateTill);
GO