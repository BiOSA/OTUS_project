CREATE TABLE risk_spr.Application_final
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, SprId                                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , RequestDate                               DATE                 NULL
    , ProductType                               VARCHAR(10)          NULL
)
GO
CREATE CLUSTERED INDEX IX_risk_spr_Application_final_BatchId ON risk_spr.Application_final(BatchId, SprId);
GO
CREATE NONCLUSTERED INDEX IX_risk_spr_Application_final_ApplicationId ON risk_spr.Application_final(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON risk_spr.Application_final TO tz_report;