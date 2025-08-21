CREATE TABLE tz.AdditionalAgreementType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalAgreementTypeId                 UNIQUEIDENTIFIER     NULL
    , Name                                      VARCHAR(500)         NULL
    , Description                               VARCHAR(500)         NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalAgreementType_BatchId ON tz.AdditionalAgreementType(BatchId, AdditionalAgreementTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementType_ApplicationId ON tz.AdditionalAgreementType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalAgreementType TO tz_report;