CREATE TABLE tz.ApplicationIntegration
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationIntegration PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , ApplicationIntegration_RK                 BIGINT               NULL
    , Account_RK                                BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_BatchId ON tz.ApplicationIntegration(BatchId, EffectiveDateFrom) INCLUDE(Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_Key ON tz.ApplicationIntegration (Account_RK, EffectiveDateFrom,EffectiveDateTill,CheckBankScoringId) INCLUDE (OldIdentificationDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_Period ON tz.ApplicationIntegration (EffectiveDateFrom,EffectiveDateTill) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_CheckBankScoringId ON tz.ApplicationIntegration (CheckBankScoringId) INCLUDE (EffectiveDateFrom,EffectiveDateTill,Account_RK,OldIdentificationDate);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationIntegration TO tz_report;