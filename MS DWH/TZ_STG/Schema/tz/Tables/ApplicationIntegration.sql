CREATE TABLE tz.ApplicationIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationIntegrationId                  UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ConsideratedFromMobileApp                 BIT                  NULL
    , OldIdentificationDate                     DATETIME             NULL
    , CheckBankScoringId                        UNIQUEIDENTIFIER     NULL
    , IdentificationEsiaDate                    DATETIME             NULL
    , IdentificationbyPFR                       BIT                  NULL
    , IdentificationByDigitalProfile            BIT                  NULL
    , IdentificationByTinkoffID                 BIT                  NULL
    , ProductChanged                            BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationIntegration_BatchId ON tz.ApplicationIntegration(BatchId, ApplicationIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_ApplicationId ON tz.ApplicationIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationIntegration TO tz_report;