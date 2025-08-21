CREATE TABLE tz.Busyness
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, BusynessId                                UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Busyness_BatchId ON tz.Busyness(BatchId, BusynessId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Busyness_BusynessId ON tz.Busyness(BusynessId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Busyness TO tz_report;