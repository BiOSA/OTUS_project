CREATE TABLE tz.ContactIntegration
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ContactIntegration PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , Customer_RK                               BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , ContactIntegrationId                      UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TrustedEsia                               BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_BatchId ON tz.ContactIntegration(BatchId, EffectiveDateFrom) INCLUDE (Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_Key ON tz.ContactIntegration (Customer_RK, EffectiveDateFrom, EffectiveDateTill) INCLUDE (CreatedOn, TrustedEsia)
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_Period ON tz.ContactIntegration (EffectiveDateFrom,EffectiveDateTill) INCLUDE (Customer_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ContactIntegration TO tz_report;