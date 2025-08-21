CREATE TABLE tz.AdditionalAgreementStatus
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalAgreementStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , AdditionalAgreementStatus_RK              BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , AdditionalAgreementStatusId               UNIQUEIDENTIFIER     NULL
    , [Name]                                    VARCHAR(500)         NULL
    , [Description]                             VARCHAR(500)         NULL
    , IsFinal                                   BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementStatus_BatchId ON tz.AdditionalAgreementStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementStatus_Key ON tz.AdditionalAgreementStatus(BatchId, AdditionalAgreementStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalAgreementStatus TO tz_report;