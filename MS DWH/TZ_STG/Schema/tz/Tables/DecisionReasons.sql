CREATE TABLE tz.DecisionReasons
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, DecisionReasonsId                         UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_DecisionReasons_BatchId ON tz.DecisionReasons(BatchId, DecisionReasonsId);
GO
CREATE NONCLUSTERED INDEX IX_tz_DecisionReasons_ApplicationId ON tz.DecisionReasons(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.DecisionReasons TO tz_report;