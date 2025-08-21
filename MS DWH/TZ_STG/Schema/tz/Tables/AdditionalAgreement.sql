CREATE TABLE tz.AdditionalAgreement
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalAgreementId                     UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , StartDate                                 DATE                 NULL
    , EndDate                                   DATE                 NULL
    , CashflowId                                UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL    
    , CanceledDate                              DATETIME             NULL
    , Number                                    INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalAgreement_BatchId ON tz.AdditionalAgreement(BatchId, AdditionalAgreementId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreement_ApplicationId ON tz.AdditionalAgreement(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalAgreement TO tz_report;