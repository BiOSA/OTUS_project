CREATE TABLE tz.AdditionalAgreementType
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalAgreementType PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, AdditionalAgreementType_RK                BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , AdditionalAgreementTypeId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    VARCHAR(500)         NULL
    , [Description]                             VARCHAR(500)         NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementType_BatchId ON tz.AdditionalAgreementType(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementType_Key ON tz.AdditionalAgreementType(BatchId, AdditionalAgreementTypeId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalAgreementType TO tz_report;