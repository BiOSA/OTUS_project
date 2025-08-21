CREATE TABLE tz.ContactIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ContactIntegrationId                      UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TrustedEsia                               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ContactIntegration_BatchId ON tz.ContactIntegration(BatchId, ContactIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_ApplicationId ON tz.ContactIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ContactIntegration TO tz_report;