CREATE TABLE tz.AdditionalAgreement
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalAgreement PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , AdditionalAgreement_RK                    BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , AdditionalAgreementType_RK                BIGINT               NULL
    , Cashflow_RK                               BIGINT               NULL
    , AdditionalAgreementStatus_RK              BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreement_BatchId_AdditionalAgreementType_RK ON tz.AdditionalAgreement (AdditionalAgreementType_RK,AdditionalAgreementStatus_RK) INCLUDE (Account_RK,EffectiveDateFrom,EffectiveDateTill,StartDate,EndDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreement_EffectiveDateTill ON tz.AdditionalAgreement (EffectiveDateTill,Cashflow_RK) INCLUDE (EndDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalAgreement_Account_RK ON tz.AdditionalAgreement (Account_RK, EffectiveDateTill) INCLUDE([Number],[StartDate],[EndDate],[AdditionalAgreementType_RK],[AdditionalAgreementStatus_RK]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalAgreement TO tz_report;