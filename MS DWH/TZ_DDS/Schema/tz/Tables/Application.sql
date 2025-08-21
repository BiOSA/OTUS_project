CREATE TABLE tz.[Application]
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Application PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Account_RK                                BIGINT               NULL
    , Customer_RK                               BIGINT               NULL
    , Product_RK                                BIGINT               NULL
    , ApplicationStatus_RK                      BIGINT               NULL
    , MaritalStatus_RK                          BIGINT               NULL
    , Education_RK                              BIGINT               NULL
    , Gender_RK                                 BIGINT               NULL
    , Busyness_RK                               BIGINT               NULL
    , FinancingInstrument_RK                    BIGINT               NULL
    , ApplicationDecision_RK                    BIGINT               NULL
    , DecisionReason_RK                         BIGINT               NULL
    , IssuanceType_RK                           BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL    
    , Number                                    NVARCHAR(100)        NULL
    , CreatedOn                                 DATETIME             NULL
    , CreatedOnDT                               DATE                 NULL
    , ClientTypeId                              UNIQUEIDENTIFIER     NULL --Нет справочника. там физики только
    , FillingDate                               DATETIME             NULL
    , FillingDateDT                             DATE                 NULL
    , ProceededOn                               DATETIME             NULL
    , ProceededOnDT                             DATE                 NULL
    , PaymentDate                               DATETIME             NULL
    , PaymentDateDT                             DATE                 NULL
    , ReturnDate                                DATETIME             NULL
    , ReturnDateDT                              DATE                 NULL
    , PreviousReturnDate                        DATETIME             NULL
    , PreviousReturnDateDT                      DATE                 NULL
    , CurrentReturnDate                         DATETIME             NULL
    , CurrentReturnDateDT                       DATE                 NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , OfferSum                                  DECIMAL(18, 2)       NULL
    , FullOfferSum                              DECIMAL(18, 2)       NULL
    , RequestedOfferSum                         DECIMAL(18, 2)       NULL
    , OfferPeriod                               INT                  NULL
    , ProductId                                 UNIQUEIDENTIFIER     NULL
    , DivisionCode                              NVARCHAR(100)        NULL
    , DocumentExpiredOn                         DATE                 NULL
    , ContactMobilePhone                        NVARCHAR(500)        NULL
    , Email                                     NVARCHAR(100)        NULL
    , SNILS                                     NVARCHAR(500)        NULL
    , INN                                       NVARCHAR(500)        NULL
    , ContactFamilyName                         NVARCHAR(500)        NULL
    , ContactFirstName                          NVARCHAR(500)        NULL
    , ContactFatherName                         NVARCHAR(500)        NULL
    , ContactDocumentSeries                     NVARCHAR(100)        NULL
    , ContactDocumentNumber                     NVARCHAR(100)        NULL
    , ContactDocumentIssuedBy                   NVARCHAR(500)        NULL
    , ContactDocumentIssuedOn                   DATE                 NULL
    , ContactBirthDate                          DATE                 NULL
    , Age                                       SMALLINT             NULL
    , ContactMaritalStatusId                    UNIQUEIDENTIFIER     NULL
    , ContactEducationId                        UNIQUEIDENTIFIER     NULL
    , ContactGenderId                           UNIQUEIDENTIFIER     NULL
    , BusinessId                                UNIQUEIDENTIFIER     NULL
    , FinancingInstrumentId                     UNIQUEIDENTIFIER     NULL
    , IssuanceTypeId                            UNIQUEIDENTIFIER     NULL
    , ContactJobTitle                           NVARCHAR(500)        NULL
    , Step_0                                    BIT                  NULL
    , Step_1                                    BIT                  NULL
    , Step_2                                    BIT                  NULL
    , Step_3                                    BIT                  NULL
    , Step_4                                    BIT                  NULL
    , Step_5                                    BIT                  NULL
    , Step_6                                    BIT                  NULL
    , Step_7                                    BIT                  NULL
    , SourceURL                                 NVARCHAR(MAX)        NULL
    , DeviceID                                  NVARCHAR(500)        NULL
    , DecisionId                                UNIQUEIDENTIFIER     NULL
    , DecisionReasonId                          UNIQUEIDENTIFIER     NULL
    , PrincipalDebt                             DECIMAL(18, 2)       NULL
    , InterestDebt                              DECIMAL(18, 2)       NULL
    , PenaltyDebt                               DECIMAL(18, 2)       NULL
    , FineDebt                                  DECIMAL(18, 2)       NULL
    , SummaryDebt                               DECIMAL(18, 2)       NULL
    , SaleSum                                   DECIMAL(18, 2)       NULL
    , SaleDate                                  DATETIME             NULL
    , SaleCancelDate                            DATETIME             NULL
    , SaleCancelDateDT                          DATE                 NULL
    , RepaymentDate                             DATETIME             NULL
    , RepaymentDateDT                           DATE                 NULL
    , LandingSource                             NVARCHAR(MAX)        NULL
    , MarketingSource                           NVARCHAR(MAX)        NULL
    , MarketingWeb                              NVARCHAR(MAX)        NULL
    , RequestedOfferPeriod                      NUMERIC(18,2)        NULL
    , InternallySold                            BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_BatchId           ON tz.Application (BatchId, EffectiveDateFrom) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_KeyId             ON tz.Application (Account_RK, EffectiveDateFrom, EffectiveDateTill) INCLUDE(Customer_RK,CreatedOn,CreatedOnDT,FillingDate,StatusId,ApplicationDecision_RK,DecisionReason_RK,OfferSum,FullOfferSum,Product_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Customer_RK       ON tz.Application (Customer_RK) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Passport          ON tz.Application (ContactDocumentSeries,ContactDocumentNumber,EffectiveDateFrom,EffectiveDateTill) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_EffectiveDateTill ON tz.Application (EffectiveDateTill, PaymentDate) INCLUDE (Account_RK, Customer_RK, SaleDate, Number, InternallySold);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_ApplicationId     ON tz.Application (ApplicationId) INCLUDE (EffectiveDateFrom, EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Payment           ON tz.Application (PaymentDateDT, EffectiveDateTill) INCLUDE (Account_RK, Product_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.[Application] TO tz_report;
GO
GRANT SELECT ON tz.[Application] TO [1c_dwh];