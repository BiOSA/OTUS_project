CREATE TABLE tz.[Application]
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , Number                                    NVARCHAR(100)        NULL
    , CreatedOn                                 DATETIME             NULL
    , CreatedOnDT                               DATE                 NULL
    , ClientTypeId                              UNIQUEIDENTIFIER     NULL
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
    , OfferPeriod                               INT
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
    , RequestedOfferPeriod                      NUMERIC(18,2)        NULL
    , InternallySold                            BIT                  NULL

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
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_BatchId                  ON tz.[Application](BatchId, ApplicationId) INCLUDE(EffectiveDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Account_RK               ON tz.[Application](Account_RK)             WHERE Account_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Customer_RK              ON tz.[Application](Customer_RK)            WHERE Customer_RK            IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Product_RK               ON tz.[Application](Product_RK)             WHERE Product_RK             IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_ApplicationStatus_RK     ON tz.[Application](ApplicationStatus_RK)   WHERE ApplicationStatus_RK   IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_MaritalStatus_RK         ON tz.[Application](MaritalStatus_RK)       WHERE MaritalStatus_RK       IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Education_RK             ON tz.[Application](Education_RK)           WHERE Education_RK           IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Gender_RK                ON tz.[Application](Gender_RK)              WHERE Gender_RK              IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_Busyness_RK              ON tz.[Application](Busyness_RK)            WHERE Busyness_RK            IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_FinancingInstrument_RK   ON tz.[Application](FinancingInstrument_RK) WHERE FinancingInstrument_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_ApplicationDecision_RK   ON tz.[Application](ApplicationDecision_RK) WHERE ApplicationDecision_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_DecisionReason_RK        ON tz.[Application](DecisionReason_RK)      WHERE DecisionReason_RK      IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Application_IssuanceType_RK          ON tz.[Application](IssuanceType_RK)        WHERE IssuanceType_RK        IS NULL;
GO
GRANT DELETE, INSERT ON tz.[Application] TO tz_report;