CREATE TABLE risk_spr.Application_final
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_risk_spr_Application_final PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , Account_RK                                BIGINT               NULL
	, Customer_RK                               BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, SprId                                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
	, RequestDate                               DATE                 NULL
    , ProductType                               VARCHAR(10)          NULL
)
GO
CREATE NONCLUSTERED INDEX IX_risk_spr_Application_final_BatchId ON risk_spr.Application_final(BatchId, EffectiveDateFrom) INCLUDE(Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_risk_spr_Application_final_ApplicationId ON risk_spr.Application_final(EffectiveDateFrom, EffectiveDateTill) INCLUDE (SprId,Account_RK);
GO
GRANT DELETE, INSERT, UPDATE ON risk_spr.Application_final TO tz_report;