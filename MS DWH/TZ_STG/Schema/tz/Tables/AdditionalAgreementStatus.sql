CREATE TABLE tz.AdditionalAgreementStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalAgreementStatusId               UNIQUEIDENTIFIER     NULL
    , Name                                      VARCHAR(500)         NULL
    , Description                               VARCHAR(500)         NULL
    , IsFinal                                   BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalAgreementStatus_BatchId ON tz.AdditionalAgreementStatus(BatchId, AdditionalAgreementStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreementStatus_ApplicationId ON tz.AdditionalAgreementStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalAgreementStatus TO tz_report;