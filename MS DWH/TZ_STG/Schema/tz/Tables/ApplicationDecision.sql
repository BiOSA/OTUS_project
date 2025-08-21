CREATE TABLE tz.ApplicationDecision
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationDecisionId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationDecision_BatchId ON tz.ApplicationDecision(BatchId, ApplicationDecisionId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationDecision_ApplicationId ON tz.ApplicationDecision(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationDecision TO tz_report;