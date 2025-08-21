CREATE TABLE tz.Accrual
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, TypeId                   UNIQUEIDENTIFIER     NULL
	, PaymentScheduleId        UNIQUEIDENTIFIER     NULL
	, AmountAccrued            NUMERIC(18, 2)       NULL
	, InterestDebt             NUMERIC(18, 2)       NULL
	, PenaltyDebt              NUMERIC(18, 2)       NULL
	, AccrualDate              DATE                 NULL
	, StatusId                 UNIQUEIDENTIFIER     NULL
	, ApplicationId            UNIQUEIDENTIFIER     NULL
	, FineDebt                 NUMERIC(18, 2)       NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, NoPay                    BIT                  NULL
	, CreatedOn                DATETIME2(7)         NULL
	, PrincipalDebt            NUMERIC(18, 2)       NULL
	, AccrualDateDT            DATE                 NULL
	
	, Accrual_RK               BIGINT               NULL
	, AccrualStatus_RK         BIGINT               NULL
	, Account_RK               BIGINT               NULL
	, AccrualType_RK           BIGINT               NULL
	, PaymentSchedule_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_Accrual_BatchId            ON tz.Accrual(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Accrual_RK         ON tz.Accrual(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualStatus_RK   ON tz.Accrual(AccrualStatus_RK)   WHERE AccrualStatus_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.Accrual(Account_RK)         WHERE Account_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualType_RK     ON tz.Accrual(AccrualType_RK)     WHERE AccrualType_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_PaymentSchedule_RK ON tz.Accrual(PaymentSchedule_RK) WHERE PaymentSchedule_RK IS NULL;
GO﻿CREATE TABLE tz.AccrualCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, Accrual_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_AccrualCancel_BatchId            ON tz.AccrualCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_Accrual_RK         ON tz.AccrualCancel(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
﻿CREATE TABLE tz.AccrualStatus
(
	  BatchId         BIGINT           NOT NULL
	, EffectiveDate   DATETIME2(7)         NULL
	, CreatedOn       DATETIME2(7)         NULL
	, [Name]          NVARCHAR(500)        NULL
	, AccrualStatusId UNIQUEIDENTIFIER     NULL
	, [Description]   NVARCHAR(500)        NULL
)
GO

﻿CREATE TABLE tz.AdditionalAgreement
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
GRANT DELETE, INSERT ON tz.AdditionalAgreement TO tz_report;﻿CREATE TABLE tz.AdditionalAgreementStatus
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
GRANT DELETE, INSERT ON tz.AdditionalAgreementStatus TO tz_report;﻿CREATE TABLE tz.AdditionalAgreementType
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
GRANT DELETE, INSERT ON tz.AdditionalAgreementType TO tz_report;﻿CREATE TABLE tz.AdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , Active                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProduct_BatchId ON tz.AdditionalProduct(BatchId, AdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProduct_ApplicationId ON tz.AdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProduct TO tz_report;﻿CREATE TABLE tz.AdditionalProductStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductStatusId                 UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductStatus_BatchId ON tz.AdditionalProductStatus(BatchId, AdditionalProductStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductStatus_ApplicationId ON tz.AdditionalProductStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductStatus TO tz_report;﻿CREATE TABLE tz.AdditionalProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, AdditionalProductTypeId                   UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductType_BatchId ON tz.AdditionalProductType(BatchId, AdditionalProductTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductType_ApplicationId ON tz.AdditionalProductType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductType TO tz_report;﻿CREATE TABLE tz.AddressType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, AddressTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AddressType_BatchId ON tz.AddressType(BatchId, AddressTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AddressType_ApplicationId ON tz.AddressType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AddressType TO tz_report;﻿CREATE TABLE tz.AgredatorRequestLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorRequestLogId                     UNIQUEIDENTIFIER     NULL
    , ServiceLogId                              UNIQUEIDENTIFIER     NULL
    , RequestUrl                                NVARCHAR(1000)       NULL
    , RequestDate                               DATETIME             NULL
    , Request                                   NVARCHAR(MAX)        NULL
    , ResponseDate                              DATETIME             NULL
    , Response                                  NVARCHAR(MAX)        NULL
    , [Status]                                  NVARCHAR(100)        NULL
    , Error                                     NVARCHAR(MAX)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorRequestLog_BatchId ON tz.AgredatorRequestLog(BatchId, AgredatorRequestLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_ApplicationId ON tz.AgredatorRequestLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorRequestLog TO tz_report;﻿CREATE TABLE tz.AgredatorServiceLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorServiceLogId                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Service]                                 NVARCHAR(200)        NULL
    , Result                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorServiceLog_BatchId ON tz.AgredatorServiceLog(BatchId, AgredatorServiceLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorServiceLog_ApplicationId ON tz.AgredatorServiceLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorServiceLog TO tz_report;﻿CREATE TABLE tz.[Application]
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
GRANT DELETE, INSERT ON tz.[Application] TO tz_report;﻿CREATE TABLE tz.ApplicationAdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationAdditionalProductId            UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PaySystemOrderId                          UNIQUEIDENTIFIER     NULL
    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Amount                                    NUMERIC(18,2)        NULL
    , PayDate                                   DATETIME             NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , ReturnDate                                DATETIME             NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_BatchId ON tz.ApplicationAdditionalProduct(BatchId, ApplicationAdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_ApplicationId ON tz.ApplicationAdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAdditionalProduct TO tz_report;﻿CREATE TABLE tz.ApplicationAddress
(
	  BatchId                                  BIGINT           NOT NULL
    , EffectiveDate                            DATETIME         NOT NULL

	, ApplicationAddress_RK                    BIGINT               NULL
	, Account_RK                    		   BIGINT               NULL
	, AddressType_RK                		   BIGINT               NULL
	, Customer_RK                   		   BIGINT               NULL
	, Country_RK                    		   BIGINT               NULL
	, Region_RK                     		   BIGINT               NULL
	, City_RK                       		   BIGINT               NULL
	, District_RK                   		   BIGINT               NULL
	, SettlementType_RK             		   BIGINT               NULL
	, ContactAddress_RK             		   BIGINT               NULL
	
	, ContactId                                UNIQUEIDENTIFIER     NULL
	, ApplicationAddressId                     UNIQUEIDENTIFIER     NULL
	, AddressTypeId                            UNIQUEIDENTIFIER     NULL
	, CountryId                                UNIQUEIDENTIFIER     NULL
	, RegionId                                 UNIQUEIDENTIFIER     NULL
	, CityId                                   UNIQUEIDENTIFIER     NULL
	, [Address]                                VARCHAR(MAX)         NULL
	, Zip                                      VARCHAR(50)          NULL
	, [Primary]                                BIT                  NULL
	, ProcessListeners                         INT                  NULL
	, DistrictId                               UNIQUEIDENTIFIER     NULL
	, SettlementTypeId                         UNIQUEIDENTIFIER     NULL
	, Street                                   VARCHAR(250)         NULL
	, Building1                                VARCHAR(250)         NULL
	, Building2                                VARCHAR(250)         NULL
	, AptOffice                                VARCHAR(250)         NULL
	, ActualFrom                               DATE                 NULL
	, IsNotActual                              BIT                  NULL
	, ApplicationId                            UNIQUEIDENTIFIER     NULL
	, ContactAddressId                         UNIQUEIDENTIFIER     NULL
	, CityKladrCode                            VARCHAR(50)          NULL
	, StreetKladrCode                          VARCHAR(50)          NULL
	, CityKladrName                            VARCHAR(500)         NULL
	, StreetKladrName                          VARCHAR(500)         NULL
	, OldCityCode                              VARCHAR(50)          NULL
	, IsNotKladrStreet                         BIT                  NULL
	, IsNotKladrCity                           BIT                  NULL
	, CityAoGuid                               UNIQUEIDENTIFIER     NULL
	, StreetAoGuid                             UNIQUEIDENTIFIER     NULL
	, CitySocr                                 VARCHAR(50)          NULL
	, CityTitle                                VARCHAR(250)         NULL
	, StreetSocr                               VARCHAR(50)          NULL
	, StreetTitle                              VARCHAR(250)         NULL
	, DistrictSocr                             VARCHAR(50)          NULL
	, DistrictTitle                            VARCHAR(250)         NULL
	, IntracitySocr                            VARCHAR(50)          NULL
	, IntracityTitle                           VARCHAR(250)         NULL
	, CityFiasFullName                         VARCHAR(250)         NULL
	, AddressAoGuid                            UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationAddress_BatchId ON tz.ApplicationAddress(BatchId, ApplicationAddressId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAddress_ApplicationId ON tz.ApplicationAddress(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAddress TO tz_report;﻿CREATE TABLE tz.ApplicationApproval
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationApprovalId                     UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , SetId                                     UNIQUEIDENTIFIER     NULL
    , ApprovalDate                              DATETIME             NULL
    , AuthorId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationApproval_BatchId ON tz.ApplicationApproval(BatchId, ApplicationApprovalId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_ApplicationId ON tz.ApplicationApproval(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationApproval TO tz_report;﻿CREATE TABLE [tz].[ApplicationAudit]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME			NOT NULL,
	[ApplicationAuditId]	UNIQUEIDENTIFIER		NULL,
	[ApplicationId]			UNIQUEIDENTIFIER		NULL,
	[StatusId_New]			UNIQUEIDENTIFIER		NULL,
	[StatusId_Old]			UNIQUEIDENTIFIER		NULL,
	[ChangeDate]			DATETIME			    NULL
) 
GO
--CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit(BatchId, ApplicationAuditId) INCLUDE(EffectiveDate);
--GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit (BatchId) INCLUDE (EffectiveDate,ApplicationAuditId,ApplicationId,StatusId_New,StatusId_Old,ChangeDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAudit TO tz_report;
﻿CREATE TABLE tz.ApplicationDecision
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationDecisionId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationDecision_BatchId ON tz.ApplicationDecision(BatchId, ApplicationDecisionId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationDecision_ApplicationId ON tz.ApplicationDecision(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationDecision TO tz_report;﻿CREATE TABLE tz.ApplicationFile
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationFileId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationFile_BatchId ON tz.ApplicationFile(BatchId, ApplicationFileId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationFile_ApplicationId ON tz.ApplicationFile(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationFile TO tz_report;﻿CREATE TABLE tz.ApplicationIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationIntegrationId                  UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ConsideratedFromMobileApp                 BIT                  NULL
    , OldIdentificationDate                     DATETIME             NULL
    , CheckBankScoringId                        UNIQUEIDENTIFIER     NULL
    , IdentificationEsiaDate                    DATETIME             NULL
    , IdentificationbyPFR                       BIT                  NULL
    , IdentificationByDigitalProfile            BIT                  NULL
    , IdentificationByTinkoffID                 BIT                  NULL
    , ProductChanged                            BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationIntegration_BatchId ON tz.ApplicationIntegration(BatchId, ApplicationIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_ApplicationId ON tz.ApplicationIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationIntegration TO tz_report;﻿CREATE TABLE tz.ApplicationStatus
(
	  BatchId				    BIGINT				NOT NULL
	, EffectiveDate			    DATETIME			NOT NULL
	
	, ApplicationStatusId	    UNIQUEIDENTIFIER		NULL
	, [Name]                    NVARCHAR(500)           NULL
);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationStatus_BatchId ON tz.ApplicationStatus(BatchId, ApplicationStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationStatus TO tz_report;
﻿CREATE TABLE tz.ApplicationTestParameters
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationTestParametersId               UNIQUEIDENTIFIER     NULL
	, CreatedOn		                            DATETIME             NULL
	, ApplicationId                             UNIQUEIDENTIFIER	NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationTestParameters_BatchId ON tz.ApplicationTestParameters(BatchId, ApplicationTestParametersId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationTestParameters_ApplicationId ON tz.ApplicationTestParameters(ApplicationId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationTestParameters TO tz_report;﻿CREATE TABLE tz.ApprovalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApprovalStatusId                          UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApprovalStatus_BatchId ON tz.ApprovalStatus(BatchId, ApprovalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApprovalStatus_ApplicationId ON tz.ApprovalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApprovalStatus TO tz_report;﻿CREATE TABLE tz.APSKCalculationEvent
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKCalculationEvent_RK   BIGINT               NULL

	, APSKCalculationEventId    UNIQUEIDENTIFIER     NULL
	, [Name]		            VARCHAR(500)         NULL
	, [Description]             VARCHAR(500)		 NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKCalculationEvent_BatchId        ON tz.APSKCalculationEvent(BatchId);
GO﻿CREATE TABLE tz.APSKHistory
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKHistoryId             UNIQUEIDENTIFIER     NULL
	, EventDateTime             DATETIME2(7)         NULL
	, ActualCalculationDateTime DATETIME2(7)         NULL
	, ApplicationId             UNIQUEIDENTIFIER     NULL
	, APSK                      DECIMAL(8, 3)        NULL
	, iRate                     FLOAT                NULL
	, CalculationEventId        UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId		UNIQUEIDENTIFIER     NULL
	, OperationHistoryId		UNIQUEIDENTIFIER     NULL
	, Comment                   VARCHAR(MAX)         NULL

	, APSKHistory_RK            BIGINT               NULL
	, Account_RK                BIGINT               NULL
	, CreditLimitContractId_RK  BIGINT               NULL
	, CalculationEvent_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKHistory_BatchId        ON tz.APSKHistory(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_APSKHistory_RK     ON tz.APSKHistory(APSKHistory_RK)     WHERE APSKHistory_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.APSKHistory(Account_RK)         WHERE Account_RK IS NULL;
﻿CREATE TABLE [tz].[Balance](
	[BatchId]					BIGINT					NOT NULL,
	[CashflowId]				UNIQUEIDENTIFIER			NULL,
	[CreatedOnDT]				DATE						NULL,
	[Number]					INT							NULL,
	[PaymentScheduleId]			UNIQUEIDENTIFIER			NULL,
	[ContactId]					UNIQUEIDENTIFIER			NULL,
	[CurrentBalance]			NUMERIC(18, 2)				NULL,
	[OperationCategoryId]		UNIQUEIDENTIFIER			NULL,
	[ActualDate]				DATETIME    				NULL,
	[BalanceId]					UNIQUEIDENTIFIER			NULL,
	[EffectiveDate]				DATETIME     				NULL,
	[OperationTypeId]			UNIQUEIDENTIFIER			NULL,
	[ApplicationId]				UNIQUEIDENTIFIER			NULL,
	[ActualDateDT]				DATE						NULL,
	[CreatedOn]					DATETIME    				NULL,
	[Amount]					NUMERIC(18, 2)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_BatchId ON tz.Balance(BatchId, BalanceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Balance TO tz_report;
﻿CREATE TABLE tz.BalanceCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, BalanceId                UNIQUEIDENTIFIER     NULL
	, Balance_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_BalanceCancel_BatchId            ON tz.BalanceCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_Balance_RK         ON tz.BalanceCancel(Balance_RK)         WHERE Balance_RK IS NULL;
GO
﻿CREATE TABLE tz.Busyness
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, BusynessId                                UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Busyness_BatchId ON tz.Busyness(BatchId, BusynessId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Busyness_BusynessId ON tz.Busyness(BusynessId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Busyness TO tz_report;﻿CREATE TABLE tz.CalculatorSetup(
	  BatchId					                BIGINT			 NOT NULL
	, EffectiveDate				                DATETIME		     NULL

	, CalculatorSetupId                         UNIQUEIDENTIFIER     NULL
    , PossibilityRegistrationForm               BIT                  NULL
    , PossibilityAuthForm                       BIT                  NULL
	, DefaultSum                                NUMERIC(18,2)        NULL
    , DefaultPeriod                             INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CalculatorSetup_BatchId ON tz.CalculatorSetup(BatchId, CalculatorSetupId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CalculatorSetup TO tz_report;

﻿CREATE TABLE tz.Calculator_MMK_customer
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ClientId                                  BIGINT               NULL
	, [Name]                                    VARCHAR(150)         NULL
    , DOB                                       DATE                 NULL
    , docSer                                    VARCHAR(8)           NULL
    , docNum                                    VARCHAR(12)          NULL
    , numLoans                                  INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Calculator_MMK_customer_BatchId ON tz.Calculator_MMK_customer(BatchId, ClientId);
GO
GRANT DELETE, INSERT ON tz.Calculator_MMK_customer TO tz_report;﻿CREATE TABLE [tz].[Cashflow](
	[BatchId]					BIGINT				NOT NULL,
	[EffectiveDate]				DATETIME    			NULL,
	[AccountId]					UNIQUEIDENTIFIER		NULL,
	[ActualDate]				DATETIME    			NULL,
	[ActualDateDT]				DATE					NULL,
	[Amount]					NUMERIC(18, 2)			NULL,
	[ApplicationId]				UNIQUEIDENTIFIER		NULL,
	[CampaignId]				UNIQUEIDENTIFIER		NULL,
	[CashflowId]				UNIQUEIDENTIFIER		NULL,
	[CashflowSourceId]			UNIQUEIDENTIFIER		NULL,
	[Cashless]					BIT						NULL,
	[CategoryId]				UNIQUEIDENTIFIER		NULL,
	[ContactId]					UNIQUEIDENTIFIER		NULL,
	[ContractId]				UNIQUEIDENTIFIER		NULL,
	[CreatedOn]					DATETIME    			NULL,
	[CreatedOnDT]				DATE					NULL,
	[CurrencyId]				UNIQUEIDENTIFIER		NULL,
	[CurrencyRate]				NUMERIC(18, 2)			NULL,
	[DateSendDC]				DATETIME    			NULL,
	[DateSendDCDT]				DATE					NULL,
	[DateSendIBD]				DATETIME    			NULL,
	[DateSendIBDDT]				DATE					NULL,
	[DocumentId]				UNIQUEIDENTIFIER		NULL,
	[EstimatedDate]				DATETIME    			NULL,
	[EstimatedDateDT]			DATE					NULL,
	[ExternalNumber]			NVARCHAR(100)			NULL,
	[IsAutoRepayment]			BIT						NULL,
	[IsSendDC]					BIT						NULL,
	[IsSendIBD]					BIT						NULL,
	[MarketingEventId]			UNIQUEIDENTIFIER		NULL,
	[Notes]						NVARCHAR(MAX)			NULL,
	[Number]					NVARCHAR(100)			NULL,
	[OperationId]				NVARCHAR(100)			NULL,
	[OwnerCashflowId]			UNIQUEIDENTIFIER		NULL,
	[OwnerId]					UNIQUEIDENTIFIER		NULL,
	[PaymentSystemAccountInfo]	NVARCHAR(500)			NULL,
	[PrimaryAmount]				NUMERIC(18, 2)			NULL,
	[SendTo1C]					BIT						NULL,
	[StatusId]					UNIQUEIDENTIFIER		NULL,
	[Subject]					NVARCHAR(500)			NULL,
	[TransactionID]				NVARCHAR(500)			NULL,
	[TransferTime]				DATETIME    			NULL,
	[TransferTimeDT]			DATE					NULL,
	[TypeId]					UNIQUEIDENTIFIER		NULL,
	[Vat]						NUMERIC(18, 2)			NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_Cashflow_BatchId ON tz.Cashflow(BatchId, CashflowId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Cashflow TO tz_report;

﻿CREATE TABLE tz.CashflowCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, CashflowId               UNIQUEIDENTIFIER     NULL
	, Cashflow_RK              BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_CashflowCancel_BatchId            ON tz.CashflowCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_Accrual_RK         ON tz.CashflowCancel(Cashflow_RK)         WHERE Cashflow_RK IS NULL;
GO
﻿CREATE TABLE [tz].[CashflowCategory]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowCategoryId]	UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCategory_BatchId ON tz.CashflowCategory(BatchId, CashflowCategoryId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowCategory TO tz_report;﻿CREATE TABLE [tz].[CashflowSource](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowSourceId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowSource_BatchId ON tz.CashflowSource(BatchId, CashflowSourceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowSource TO tz_report;﻿CREATE TABLE [tz].[CashflowStatus](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowStatusId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
--CREATE NONCLUSTERED INDEX IX_tz_CashflowStatus_BatchId ON tz.CashflowStatus(BatchId, CashflowStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowStatus TO tz_report;﻿CREATE TABLE [tz].[CashflowTypes](
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowTypesId]		UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowTypes_BatchId ON tz.CashflowTypes(BatchId, CashflowTypesId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowTypes TO tz_report;﻿CREATE TABLE tz.Contact
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , CreatedOnDT                               DATE                 NULL
    , GenderId                                  UNIQUEIDENTIFIER     NULL
    , JobTitle                                  NVARCHAR(1000)       NULL
    , BirthDate                                 DATE                 NULL    
    , Phone                                     NVARCHAR(500)        NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , HomePhone                                 NVARCHAR(500)        NULL
    , Email                                     NVARCHAR(500)        NULL
    , BirthPlace                                NVARCHAR(1000)       NULL
    , DepartmentCode                            NVARCHAR(100)        NULL
    , BusynessId                                UNIQUEIDENTIFIER     NULL
    , Company                                   NVARCHAR(1000)       NULL
    , TotalAvarageMonthlyIncome                 NUMERIC(18,2)        NULL
    , INN                                       NVARCHAR(100)        NULL
    , DocumentNumber                            NVARCHAR(100)        NULL
    , IssuedOn                                  DATE                 NULL
    , IssuedBy                                  NVARCHAR(500)        NULL
    , ExpiresOn                                 DATE                 NULL
    , MaritalStatusId                           UNIQUEIDENTIFIER     NULL
    , SocialStatusId                            UNIQUEIDENTIFIER     NULL
    , EducationId                               UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , FirstName                                 NVARCHAR(500)        NULL
    , SecondName                                NVARCHAR(500)        NULL
    , MiddleName                                NVARCHAR(500)        NULL
    , ContactSourceId                           UNIQUEIDENTIFIER     NULL
    , WorkAddress                               NVARCHAR(MAX)        NULL
    , SourceURL                                 NVARCHAR(MAX)        NULL
    , AdditionalContactPersonPhone              NVARCHAR(100)        NULL
    , SNILS                                     NVARCHAR(100)        NULL
    , DocumentSeries                            NVARCHAR(100)        NULL

    , Customer_RK                               BIGINT               NULL
    , Gender_RK                                 BIGINT               NULL
    , Busyness_RK                               BIGINT               NULL
    , MaritalStatus_RK                          BIGINT               NULL
    , Education_RK                              BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId ON tz.Contact(BatchId, ContactId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Contact TO tz_report;﻿CREATE TABLE tz.ContactAddress
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ContactAddressId                          UNIQUEIDENTIFIER     NULL
    , AddressTypeId                             UNIQUEIDENTIFIER     NULL
    , CountryId                                 UNIQUEIDENTIFIER     NULL
    , RegionId                                  UNIQUEIDENTIFIER     NULL
    , CityId                                    UNIQUEIDENTIFIER     NULL
    , [Address]                                 NVARCHAR(MAX)        NULL
    , Zip                                       NVARCHAR(100)        NULL
    , [Primary]                                 BIT                  NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , DistrictId                                UNIQUEIDENTIFIER     NULL
    , SettlementTypeId                          UNIQUEIDENTIFIER     NULL
    , Street                                    NVARCHAR(500)        NULL
    , Building1                                 NVARCHAR(500)        NULL
    , Building2                                 NVARCHAR(500)        NULL
    , AptOffice                                 NVARCHAR(500)        NULL
    , IsNotActual                               BIT                  NULL
    , Actual                                    BIT                  NULL
    , Building3                                 NVARCHAR(500)        NULL
    , CityKladrCode                             NVARCHAR(100)        NULL
    , StreetKladrCode                           NVARCHAR(100)        NULL
    , CityKladrName                             NVARCHAR(1000)       NULL
    , StreetKladrName                           NVARCHAR(1000)       NULL
    , IsNotKladrStreet                          BIT                  NULL
    , IsNotKladrCity                            BIT                  NULL
    , CityAoGuid                                UNIQUEIDENTIFIER     NULL
    , StreetAoGuid                              UNIQUEIDENTIFIER     NULL    
    , CitySocr                                  NVARCHAR(100)        NULL
	, CityTitle                                 NVARCHAR(500)        NULL
    , StreetSocr                                NVARCHAR(100)        NULL
    , StreetTitle                               NVARCHAR(500)        NULL    
    , DistrictSocr                              NVARCHAR(100)        NULL
    , DistrictTitle                             NVARCHAR(500)        NULL    
    , IntracitySocr                             NVARCHAR(100)        NULL
    , IntracityTitle                            NVARCHAR(500)        NULL
    , CityFiasFullName                          NVARCHAR(500)        NULL
    , ContactProfileId                          UNIQUEIDENTIFIER     NULL
    , AddressAoGuid                             UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ContactAddress_BatchId ON tz.ContactAddress(BatchId, ContactAddressId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_ApplicationId ON tz.ContactAddress(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ContactAddress TO tz_report;﻿CREATE TABLE tz.ContactIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ContactIntegrationId                      UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TrustedEsia                               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ContactIntegration_BatchId ON tz.ContactIntegration(BatchId, ContactIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_ApplicationId ON tz.ContactIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ContactIntegration TO tz_report;﻿CREATE TABLE tz.CreditLimit
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitId	                            UNIQUEIDENTIFIER NOT NULL
	
	, CreditLimit_RK	                        BIGINT               NULL

	, [Name]                                    VARCHAR(250)         NULL
	, Term	                                    INT                  NULL
	, MaxSum                                    DECIMAL(18, 2)       NULL	
	, IsActive	                                BIT                  NULL
	, StartDate	                                DATETIME             NULL
	, EndDate	                                DATETIME             NULL
	, RatePerDay	                            DECIMAL(18, 2)       NULL	
	, MaxTranshTerm                             INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimit_BatchId ON tz.CreditLimit(BatchId, CreditLimitId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimit_CreditLimitId ON tz.CreditLimit(CreditLimitId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimit TO tz_report;﻿CREATE TABLE tz.CreditLimitContract
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitContract_RK	                BIGINT               NULL
	, CreditLimit_RK	                        BIGINT               NULL
	, Customer_RK				                BIGINT               NULL
	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractId                     UNIQUEIDENTIFIER     NULL
	, ContactId                                 UNIQUEIDENTIFIER     NULL
	, Number                                    VARCHAR(50)          NULL
	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, StartDate                                 DATETIME             NULL
	, StartDateDT                               DATE                 NULL
	, EndDate                                   DATETIME             NULL
	, EndDateDT                                 DATE                 NULL
	, PlannedEndDate                            DATETIME             NULL
	, PlannedEndDateDT                          DATE                 NULL
	, FileId                                    UNIQUEIDENTIFIER     NULL
	, CreditLimitId                             UNIQUEIDENTIFIER     NULL
	, [Sum]                                     DECIMAL(18, 2)       NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitContract_BatchId ON tz.CreditLimitContract(BatchId, CreditLimitContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContract_CreditLimitContract ON tz.CreditLimitContract(CreditLimitContractId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContract TO tz_report;﻿CREATE TABLE tz.CreditLimitContractStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, [Name]		                            VARCHAR(500)         NULL
	, [Description]                             VARCHAR(500)		 NULL
	, FinalState                                BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitContractStatus_BatchId ON tz.CreditLimitContractStatus(BatchId, CreditLimitContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContractStatus_CreditLimitContractStatus ON tz.CreditLimitContractStatus(CreditLimitContractStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContractStatus TO tz_report;﻿CREATE TABLE tz.CreditLimitTransh
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitTransh_RK                      BIGINT               NULL
	, Account_RK	                            BIGINT               NULL
	, CreditLimitContractId_RK	                BIGINT               NULL

	, CreditLimitTranshId			            UNIQUEIDENTIFIER     NULL
	, ApplicationId			                    UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId	                    UNIQUEIDENTIFIER     NULL
	, Number                                    INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitTransh_BatchId ON tz.CreditLimitTransh(BatchId, CreditLimitTranshId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitTransh_CreditLimitTransh ON tz.CreditLimitTransh(CreditLimitTranshId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitTransh TO tz_report;﻿CREATE TABLE tz.DecisionReasons
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, DecisionReasonsId                         UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_DecisionReasons_BatchId ON tz.DecisionReasons(BatchId, DecisionReasonsId);
GO
CREATE NONCLUSTERED INDEX IX_tz_DecisionReasons_ApplicationId ON tz.DecisionReasons(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.DecisionReasons TO tz_report;﻿CREATE TABLE tz.Education
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, EducationId                               UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Education_BatchId ON tz.Education(BatchId, EducationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Education_ApplicationId ON tz.Education(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Education TO tz_report;﻿CREATE TABLE tz.FinancingInstrument
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentId                     UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastFourDigits                            NVARCHAR(50)         NULL
    , ExpiresOn                                 DATE                 NULL
    , BIN                                       NVARCHAR(100)        NULL
    , CardId                                    NVARCHAR(100)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_BatchId ON tz.FinancingInstrument(BatchId, FinancingInstrumentId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrument TO tz_report;﻿CREATE TABLE tz.FinancingInstrumentStatus
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentStatusId               UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentStatus_BatchId ON tz.FinancingInstrumentStatus(BatchId, FinancingInstrumentStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentStatus TO tz_report;﻿CREATE TABLE tz.FinancingInstrumentType
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentTypeId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(MAX)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentType_BatchId ON tz.FinancingInstrumentType(BatchId, FinancingInstrumentTypeId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentType TO tz_report;﻿CREATE TABLE tz.Gender
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, GenderId                                  UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, OkbCode		                            NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Gender_BatchId ON tz.Gender(BatchId, GenderId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Gender_ApplicationId ON tz.Gender(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Gender TO tz_report;﻿CREATE TABLE tz.LegalCollectionContract
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractId                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastChangeStatusDate                      DATETIME             NULL
    , StateDutyAmount                           NUMERIC(18,2)        NULL
    , StateDutyAmountDebt                       NUMERIC(18,2)        NULL
    , AmountDebtForCourt                        NUMERIC(18,2)        NULL
    , InterestStopDate                          DATETIME             NULL
    , CourtId                                   UNIQUEIDENTIFIER     NULL
    , LawyerId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContract_BatchId ON tz.LegalCollectionContract(BatchId, LegalCollectionContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContract_ApplicationId ON tz.LegalCollectionContract(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContract TO tz_report;
﻿CREATE TABLE tz.LegalCollectionContractStatus
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusId           UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(1000)       NULL
    , AvailableForContract                      BIT                  NULL
    , AvailableForContractToCourt               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatus_BatchId ON tz.LegalCollectionContractStatus(BatchId, LegalCollectionContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatus_ApplicationId ON tz.LegalCollectionContractStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatus TO tz_report;
﻿CREATE TABLE tz.LegalCollectionContractStatusHistory
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusHistoryId    UNIQUEIDENTIFIER     NULL
	, CreatedOn                                 DATETIME2            NULL
    , ContractId                                UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_BatchId ON tz.LegalCollectionContractStatusHistory(BatchId, LegalCollectionContractStatusHistoryId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_ApplicationId ON tz.LegalCollectionContractStatusHistory(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatusHistory TO tz_report;
﻿CREATE TABLE tz.MaritalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, MaritalStatusId                           UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_MaritalStatus_BatchId ON tz.MaritalStatus(BatchId, MaritalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_MaritalStatus_ApplicationId ON tz.MaritalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.MaritalStatus TO tz_report;﻿CREATE TABLE tz.Accrual
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, TypeId                   UNIQUEIDENTIFIER     NULL
	, PaymentScheduleId        UNIQUEIDENTIFIER     NULL
	, AmountAccrued            NUMERIC(18, 2)       NULL
	, InterestDebt             NUMERIC(18, 2)       NULL
	, PenaltyDebt              NUMERIC(18, 2)       NULL
	, AccrualDate              DATE                 NULL
	, StatusId                 UNIQUEIDENTIFIER     NULL
	, ApplicationId            UNIQUEIDENTIFIER     NULL
	, FineDebt                 NUMERIC(18, 2)       NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, NoPay                    BIT                  NULL
	, CreatedOn                DATETIME2(7)         NULL
	, PrincipalDebt            NUMERIC(18, 2)       NULL
	, AccrualDateDT            DATE                 NULL
	
	, Accrual_RK               BIGINT               NULL
	, AccrualStatus_RK         BIGINT               NULL
	, Account_RK               BIGINT               NULL
	, AccrualType_RK           BIGINT               NULL
	, PaymentSchedule_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_Accrual_BatchId            ON tz.Accrual(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Accrual_RK         ON tz.Accrual(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualStatus_RK   ON tz.Accrual(AccrualStatus_RK)   WHERE AccrualStatus_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.Accrual(Account_RK)         WHERE Account_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualType_RK     ON tz.Accrual(AccrualType_RK)     WHERE AccrualType_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_PaymentSchedule_RK ON tz.Accrual(PaymentSchedule_RK) WHERE PaymentSchedule_RK IS NULL;
GO﻿CREATE TABLE tz.AccrualCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, Accrual_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_AccrualCancel_BatchId            ON tz.AccrualCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_Accrual_RK         ON tz.AccrualCancel(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
﻿CREATE TABLE tz.AccrualStatus
(
	  BatchId         BIGINT           NOT NULL
	, EffectiveDate   DATETIME2(7)         NULL
	, CreatedOn       DATETIME2(7)         NULL
	, [Name]          NVARCHAR(500)        NULL
	, AccrualStatusId UNIQUEIDENTIFIER     NULL
	, [Description]   NVARCHAR(500)        NULL
)
GO

﻿CREATE TABLE tz.AdditionalAgreement
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
GRANT DELETE, INSERT ON tz.AdditionalAgreement TO tz_report;﻿CREATE TABLE tz.AdditionalAgreementStatus
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
GRANT DELETE, INSERT ON tz.AdditionalAgreementStatus TO tz_report;﻿CREATE TABLE tz.AdditionalAgreementType
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
GRANT DELETE, INSERT ON tz.AdditionalAgreementType TO tz_report;﻿CREATE TABLE tz.AdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , Active                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProduct_BatchId ON tz.AdditionalProduct(BatchId, AdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProduct_ApplicationId ON tz.AdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProduct TO tz_report;﻿CREATE TABLE tz.AdditionalProductStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductStatusId                 UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductStatus_BatchId ON tz.AdditionalProductStatus(BatchId, AdditionalProductStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductStatus_ApplicationId ON tz.AdditionalProductStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductStatus TO tz_report;﻿CREATE TABLE tz.AdditionalProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, AdditionalProductTypeId                   UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductType_BatchId ON tz.AdditionalProductType(BatchId, AdditionalProductTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductType_ApplicationId ON tz.AdditionalProductType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductType TO tz_report;﻿CREATE TABLE tz.AddressType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, AddressTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AddressType_BatchId ON tz.AddressType(BatchId, AddressTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AddressType_ApplicationId ON tz.AddressType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AddressType TO tz_report;﻿CREATE TABLE tz.AgredatorRequestLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorRequestLogId                     UNIQUEIDENTIFIER     NULL
    , ServiceLogId                              UNIQUEIDENTIFIER     NULL
    , RequestUrl                                NVARCHAR(1000)       NULL
    , RequestDate                               DATETIME             NULL
    , Request                                   NVARCHAR(MAX)        NULL
    , ResponseDate                              DATETIME             NULL
    , Response                                  NVARCHAR(MAX)        NULL
    , [Status]                                  NVARCHAR(100)        NULL
    , Error                                     NVARCHAR(MAX)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorRequestLog_BatchId ON tz.AgredatorRequestLog(BatchId, AgredatorRequestLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorRequestLog_ApplicationId ON tz.AgredatorRequestLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorRequestLog TO tz_report;﻿CREATE TABLE tz.AgredatorServiceLog
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AgredatorServiceLogId                     UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Service]                                 NVARCHAR(200)        NULL
    , Result                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AgredatorServiceLog_BatchId ON tz.AgredatorServiceLog(BatchId, AgredatorServiceLogId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AgredatorServiceLog_ApplicationId ON tz.AgredatorServiceLog(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AgredatorServiceLog TO tz_report;﻿CREATE TABLE tz.[Application]
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
GRANT DELETE, INSERT ON tz.[Application] TO tz_report;﻿CREATE TABLE tz.ApplicationAdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationAdditionalProductId            UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PaySystemOrderId                          UNIQUEIDENTIFIER     NULL
    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Amount                                    NUMERIC(18,2)        NULL
    , PayDate                                   DATETIME             NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , ReturnDate                                DATETIME             NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_BatchId ON tz.ApplicationAdditionalProduct(BatchId, ApplicationAdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAdditionalProduct_ApplicationId ON tz.ApplicationAdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAdditionalProduct TO tz_report;﻿CREATE TABLE tz.ApplicationAddress
(
	  BatchId                                  BIGINT           NOT NULL
    , EffectiveDate                            DATETIME         NOT NULL

	, ApplicationAddress_RK                    BIGINT               NULL
	, Account_RK                    		   BIGINT               NULL
	, AddressType_RK                		   BIGINT               NULL
	, Customer_RK                   		   BIGINT               NULL
	, Country_RK                    		   BIGINT               NULL
	, Region_RK                     		   BIGINT               NULL
	, City_RK                       		   BIGINT               NULL
	, District_RK                   		   BIGINT               NULL
	, SettlementType_RK             		   BIGINT               NULL
	, ContactAddress_RK             		   BIGINT               NULL
	
	, ContactId                                UNIQUEIDENTIFIER     NULL
	, ApplicationAddressId                     UNIQUEIDENTIFIER     NULL
	, AddressTypeId                            UNIQUEIDENTIFIER     NULL
	, CountryId                                UNIQUEIDENTIFIER     NULL
	, RegionId                                 UNIQUEIDENTIFIER     NULL
	, CityId                                   UNIQUEIDENTIFIER     NULL
	, [Address]                                VARCHAR(MAX)         NULL
	, Zip                                      VARCHAR(50)          NULL
	, [Primary]                                BIT                  NULL
	, ProcessListeners                         INT                  NULL
	, DistrictId                               UNIQUEIDENTIFIER     NULL
	, SettlementTypeId                         UNIQUEIDENTIFIER     NULL
	, Street                                   VARCHAR(250)         NULL
	, Building1                                VARCHAR(250)         NULL
	, Building2                                VARCHAR(250)         NULL
	, AptOffice                                VARCHAR(250)         NULL
	, ActualFrom                               DATE                 NULL
	, IsNotActual                              BIT                  NULL
	, ApplicationId                            UNIQUEIDENTIFIER     NULL
	, ContactAddressId                         UNIQUEIDENTIFIER     NULL
	, CityKladrCode                            VARCHAR(50)          NULL
	, StreetKladrCode                          VARCHAR(50)          NULL
	, CityKladrName                            VARCHAR(500)         NULL
	, StreetKladrName                          VARCHAR(500)         NULL
	, OldCityCode                              VARCHAR(50)          NULL
	, IsNotKladrStreet                         BIT                  NULL
	, IsNotKladrCity                           BIT                  NULL
	, CityAoGuid                               UNIQUEIDENTIFIER     NULL
	, StreetAoGuid                             UNIQUEIDENTIFIER     NULL
	, CitySocr                                 VARCHAR(50)          NULL
	, CityTitle                                VARCHAR(250)         NULL
	, StreetSocr                               VARCHAR(50)          NULL
	, StreetTitle                              VARCHAR(250)         NULL
	, DistrictSocr                             VARCHAR(50)          NULL
	, DistrictTitle                            VARCHAR(250)         NULL
	, IntracitySocr                            VARCHAR(50)          NULL
	, IntracityTitle                           VARCHAR(250)         NULL
	, CityFiasFullName                         VARCHAR(250)         NULL
	, AddressAoGuid                            UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationAddress_BatchId ON tz.ApplicationAddress(BatchId, ApplicationAddressId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAddress_ApplicationId ON tz.ApplicationAddress(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAddress TO tz_report;﻿CREATE TABLE tz.ApplicationApproval
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationApprovalId                     UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , SetId                                     UNIQUEIDENTIFIER     NULL
    , ApprovalDate                              DATETIME             NULL
    , AuthorId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationApproval_BatchId ON tz.ApplicationApproval(BatchId, ApplicationApprovalId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_ApplicationId ON tz.ApplicationApproval(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationApproval TO tz_report;﻿CREATE TABLE [tz].[ApplicationAudit]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME			NOT NULL,
	[ApplicationAuditId]	UNIQUEIDENTIFIER		NULL,
	[ApplicationId]			UNIQUEIDENTIFIER		NULL,
	[StatusId_New]			UNIQUEIDENTIFIER		NULL,
	[StatusId_Old]			UNIQUEIDENTIFIER		NULL,
	[ChangeDate]			DATETIME			    NULL
) 
GO
--CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit(BatchId, ApplicationAuditId) INCLUDE(EffectiveDate);
--GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit (BatchId) INCLUDE (EffectiveDate,ApplicationAuditId,ApplicationId,StatusId_New,StatusId_Old,ChangeDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAudit TO tz_report;
﻿CREATE TABLE tz.ApplicationDecision
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationDecisionId                     UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationDecision_BatchId ON tz.ApplicationDecision(BatchId, ApplicationDecisionId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationDecision_ApplicationId ON tz.ApplicationDecision(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationDecision TO tz_report;﻿CREATE TABLE tz.ApplicationFile
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationFileId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationFile_BatchId ON tz.ApplicationFile(BatchId, ApplicationFileId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationFile_ApplicationId ON tz.ApplicationFile(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationFile TO tz_report;﻿CREATE TABLE tz.ApplicationIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationIntegrationId                  UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ConsideratedFromMobileApp                 BIT                  NULL
    , OldIdentificationDate                     DATETIME             NULL
    , CheckBankScoringId                        UNIQUEIDENTIFIER     NULL
    , IdentificationEsiaDate                    DATETIME             NULL
    , IdentificationbyPFR                       BIT                  NULL
    , IdentificationByDigitalProfile            BIT                  NULL
    , IdentificationByTinkoffID                 BIT                  NULL
    , ProductChanged                            BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationIntegration_BatchId ON tz.ApplicationIntegration(BatchId, ApplicationIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationIntegration_ApplicationId ON tz.ApplicationIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationIntegration TO tz_report;﻿CREATE TABLE tz.ApplicationStatus
(
	  BatchId				    BIGINT				NOT NULL
	, EffectiveDate			    DATETIME			NOT NULL
	
	, ApplicationStatusId	    UNIQUEIDENTIFIER		NULL
	, [Name]                    NVARCHAR(500)           NULL
);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationStatus_BatchId ON tz.ApplicationStatus(BatchId, ApplicationStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationStatus TO tz_report;
﻿CREATE TABLE tz.ApplicationTestParameters
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationTestParametersId               UNIQUEIDENTIFIER     NULL
	, CreatedOn		                            DATETIME             NULL
	, ApplicationId                             UNIQUEIDENTIFIER	NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationTestParameters_BatchId ON tz.ApplicationTestParameters(BatchId, ApplicationTestParametersId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationTestParameters_ApplicationId ON tz.ApplicationTestParameters(ApplicationId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationTestParameters TO tz_report;﻿CREATE TABLE tz.ApprovalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApprovalStatusId                          UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApprovalStatus_BatchId ON tz.ApprovalStatus(BatchId, ApprovalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApprovalStatus_ApplicationId ON tz.ApprovalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApprovalStatus TO tz_report;﻿CREATE TABLE tz.APSKCalculationEvent
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKCalculationEvent_RK   BIGINT               NULL

	, APSKCalculationEventId    UNIQUEIDENTIFIER     NULL
	, [Name]		            VARCHAR(500)         NULL
	, [Description]             VARCHAR(500)		 NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKCalculationEvent_BatchId        ON tz.APSKCalculationEvent(BatchId);
GO﻿CREATE TABLE tz.APSKHistory
(
	  BatchId                   BIGINT           NOT NULL
	, EffectiveDate             DATETIME2(7)         NULL

	, APSKHistoryId             UNIQUEIDENTIFIER     NULL
	, EventDateTime             DATETIME2(7)         NULL
	, ActualCalculationDateTime DATETIME2(7)         NULL
	, ApplicationId             UNIQUEIDENTIFIER     NULL
	, APSK                      DECIMAL(8, 3)        NULL
	, iRate                     FLOAT                NULL
	, CalculationEventId        UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId		UNIQUEIDENTIFIER     NULL
	, OperationHistoryId		UNIQUEIDENTIFIER     NULL
	, Comment                   VARCHAR(MAX)         NULL

	, APSKHistory_RK            BIGINT               NULL
	, Account_RK                BIGINT               NULL
	, CreditLimitContractId_RK  BIGINT               NULL
	, CalculationEvent_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_APSKHistory_BatchId        ON tz.APSKHistory(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_APSKHistory_RK     ON tz.APSKHistory(APSKHistory_RK)     WHERE APSKHistory_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.APSKHistory(Account_RK)         WHERE Account_RK IS NULL;
﻿CREATE TABLE [tz].[Balance](
	[BatchId]					BIGINT					NOT NULL,
	[CashflowId]				UNIQUEIDENTIFIER			NULL,
	[CreatedOnDT]				DATE						NULL,
	[Number]					INT							NULL,
	[PaymentScheduleId]			UNIQUEIDENTIFIER			NULL,
	[ContactId]					UNIQUEIDENTIFIER			NULL,
	[CurrentBalance]			NUMERIC(18, 2)				NULL,
	[OperationCategoryId]		UNIQUEIDENTIFIER			NULL,
	[ActualDate]				DATETIME    				NULL,
	[BalanceId]					UNIQUEIDENTIFIER			NULL,
	[EffectiveDate]				DATETIME     				NULL,
	[OperationTypeId]			UNIQUEIDENTIFIER			NULL,
	[ApplicationId]				UNIQUEIDENTIFIER			NULL,
	[ActualDateDT]				DATE						NULL,
	[CreatedOn]					DATETIME    				NULL,
	[Amount]					NUMERIC(18, 2)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_BatchId ON tz.Balance(BatchId, BalanceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Balance TO tz_report;
﻿CREATE TABLE tz.BalanceCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, BalanceId                UNIQUEIDENTIFIER     NULL
	, Balance_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_BalanceCancel_BatchId            ON tz.BalanceCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_Balance_RK         ON tz.BalanceCancel(Balance_RK)         WHERE Balance_RK IS NULL;
GO
﻿CREATE TABLE tz.Busyness
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, BusynessId                                UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Busyness_BatchId ON tz.Busyness(BatchId, BusynessId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Busyness_BusynessId ON tz.Busyness(BusynessId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Busyness TO tz_report;﻿CREATE TABLE tz.CalculatorSetup(
	  BatchId					                BIGINT			 NOT NULL
	, EffectiveDate				                DATETIME		     NULL

	, CalculatorSetupId                         UNIQUEIDENTIFIER     NULL
    , PossibilityRegistrationForm               BIT                  NULL
    , PossibilityAuthForm                       BIT                  NULL
	, DefaultSum                                NUMERIC(18,2)        NULL
    , DefaultPeriod                             INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CalculatorSetup_BatchId ON tz.CalculatorSetup(BatchId, CalculatorSetupId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CalculatorSetup TO tz_report;

﻿CREATE TABLE tz.Calculator_MMK_customer
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ClientId                                  BIGINT               NULL
	, [Name]                                    VARCHAR(150)         NULL
    , DOB                                       DATE                 NULL
    , docSer                                    VARCHAR(8)           NULL
    , docNum                                    VARCHAR(12)          NULL
    , numLoans                                  INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Calculator_MMK_customer_BatchId ON tz.Calculator_MMK_customer(BatchId, ClientId);
GO
GRANT DELETE, INSERT ON tz.Calculator_MMK_customer TO tz_report;﻿CREATE TABLE [tz].[Cashflow](
	[BatchId]					BIGINT				NOT NULL,
	[EffectiveDate]				DATETIME    			NULL,
	[AccountId]					UNIQUEIDENTIFIER		NULL,
	[ActualDate]				DATETIME    			NULL,
	[ActualDateDT]				DATE					NULL,
	[Amount]					NUMERIC(18, 2)			NULL,
	[ApplicationId]				UNIQUEIDENTIFIER		NULL,
	[CampaignId]				UNIQUEIDENTIFIER		NULL,
	[CashflowId]				UNIQUEIDENTIFIER		NULL,
	[CashflowSourceId]			UNIQUEIDENTIFIER		NULL,
	[Cashless]					BIT						NULL,
	[CategoryId]				UNIQUEIDENTIFIER		NULL,
	[ContactId]					UNIQUEIDENTIFIER		NULL,
	[ContractId]				UNIQUEIDENTIFIER		NULL,
	[CreatedOn]					DATETIME    			NULL,
	[CreatedOnDT]				DATE					NULL,
	[CurrencyId]				UNIQUEIDENTIFIER		NULL,
	[CurrencyRate]				NUMERIC(18, 2)			NULL,
	[DateSendDC]				DATETIME    			NULL,
	[DateSendDCDT]				DATE					NULL,
	[DateSendIBD]				DATETIME    			NULL,
	[DateSendIBDDT]				DATE					NULL,
	[DocumentId]				UNIQUEIDENTIFIER		NULL,
	[EstimatedDate]				DATETIME    			NULL,
	[EstimatedDateDT]			DATE					NULL,
	[ExternalNumber]			NVARCHAR(100)			NULL,
	[IsAutoRepayment]			BIT						NULL,
	[IsSendDC]					BIT						NULL,
	[IsSendIBD]					BIT						NULL,
	[MarketingEventId]			UNIQUEIDENTIFIER		NULL,
	[Notes]						NVARCHAR(MAX)			NULL,
	[Number]					NVARCHAR(100)			NULL,
	[OperationId]				NVARCHAR(100)			NULL,
	[OwnerCashflowId]			UNIQUEIDENTIFIER		NULL,
	[OwnerId]					UNIQUEIDENTIFIER		NULL,
	[PaymentSystemAccountInfo]	NVARCHAR(500)			NULL,
	[PrimaryAmount]				NUMERIC(18, 2)			NULL,
	[SendTo1C]					BIT						NULL,
	[StatusId]					UNIQUEIDENTIFIER		NULL,
	[Subject]					NVARCHAR(500)			NULL,
	[TransactionID]				NVARCHAR(500)			NULL,
	[TransferTime]				DATETIME    			NULL,
	[TransferTimeDT]			DATE					NULL,
	[TypeId]					UNIQUEIDENTIFIER		NULL,
	[Vat]						NUMERIC(18, 2)			NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_Cashflow_BatchId ON tz.Cashflow(BatchId, CashflowId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Cashflow TO tz_report;

﻿CREATE TABLE tz.CashflowCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, CashflowId               UNIQUEIDENTIFIER     NULL
	, Cashflow_RK              BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_CashflowCancel_BatchId            ON tz.CashflowCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_Accrual_RK         ON tz.CashflowCancel(Cashflow_RK)         WHERE Cashflow_RK IS NULL;
GO
﻿CREATE TABLE [tz].[CashflowCategory]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowCategoryId]	UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCategory_BatchId ON tz.CashflowCategory(BatchId, CashflowCategoryId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowCategory TO tz_report;﻿CREATE TABLE [tz].[CashflowSource](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowSourceId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowSource_BatchId ON tz.CashflowSource(BatchId, CashflowSourceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowSource TO tz_report;﻿CREATE TABLE [tz].[CashflowStatus](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowStatusId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
--CREATE NONCLUSTERED INDEX IX_tz_CashflowStatus_BatchId ON tz.CashflowStatus(BatchId, CashflowStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowStatus TO tz_report;﻿CREATE TABLE [tz].[CashflowTypes](
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowTypesId]		UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowTypes_BatchId ON tz.CashflowTypes(BatchId, CashflowTypesId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowTypes TO tz_report;﻿CREATE TABLE tz.Contact
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , CreatedOnDT                               DATE                 NULL
    , GenderId                                  UNIQUEIDENTIFIER     NULL
    , JobTitle                                  NVARCHAR(1000)       NULL
    , BirthDate                                 DATE                 NULL    
    , Phone                                     NVARCHAR(500)        NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , HomePhone                                 NVARCHAR(500)        NULL
    , Email                                     NVARCHAR(500)        NULL
    , BirthPlace                                NVARCHAR(1000)       NULL
    , DepartmentCode                            NVARCHAR(100)        NULL
    , BusynessId                                UNIQUEIDENTIFIER     NULL
    , Company                                   NVARCHAR(1000)       NULL
    , TotalAvarageMonthlyIncome                 NUMERIC(18,2)        NULL
    , INN                                       NVARCHAR(100)        NULL
    , DocumentNumber                            NVARCHAR(100)        NULL
    , IssuedOn                                  DATE                 NULL
    , IssuedBy                                  NVARCHAR(500)        NULL
    , ExpiresOn                                 DATE                 NULL
    , MaritalStatusId                           UNIQUEIDENTIFIER     NULL
    , SocialStatusId                            UNIQUEIDENTIFIER     NULL
    , EducationId                               UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , FirstName                                 NVARCHAR(500)        NULL
    , SecondName                                NVARCHAR(500)        NULL
    , MiddleName                                NVARCHAR(500)        NULL
    , ContactSourceId                           UNIQUEIDENTIFIER     NULL
    , WorkAddress                               NVARCHAR(MAX)        NULL
    , SourceURL                                 NVARCHAR(MAX)        NULL
    , AdditionalContactPersonPhone              NVARCHAR(100)        NULL
    , SNILS                                     NVARCHAR(100)        NULL
    , DocumentSeries                            NVARCHAR(100)        NULL

    , Customer_RK                               BIGINT               NULL
    , Gender_RK                                 BIGINT               NULL
    , Busyness_RK                               BIGINT               NULL
    , MaritalStatus_RK                          BIGINT               NULL
    , Education_RK                              BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Contact_BatchId ON tz.Contact(BatchId, ContactId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Contact TO tz_report;﻿CREATE TABLE tz.ContactAddress
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ContactAddressId                          UNIQUEIDENTIFIER     NULL
    , AddressTypeId                             UNIQUEIDENTIFIER     NULL
    , CountryId                                 UNIQUEIDENTIFIER     NULL
    , RegionId                                  UNIQUEIDENTIFIER     NULL
    , CityId                                    UNIQUEIDENTIFIER     NULL
    , [Address]                                 NVARCHAR(MAX)        NULL
    , Zip                                       NVARCHAR(100)        NULL
    , [Primary]                                 BIT                  NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , DistrictId                                UNIQUEIDENTIFIER     NULL
    , SettlementTypeId                          UNIQUEIDENTIFIER     NULL
    , Street                                    NVARCHAR(500)        NULL
    , Building1                                 NVARCHAR(500)        NULL
    , Building2                                 NVARCHAR(500)        NULL
    , AptOffice                                 NVARCHAR(500)        NULL
    , IsNotActual                               BIT                  NULL
    , Actual                                    BIT                  NULL
    , Building3                                 NVARCHAR(500)        NULL
    , CityKladrCode                             NVARCHAR(100)        NULL
    , StreetKladrCode                           NVARCHAR(100)        NULL
    , CityKladrName                             NVARCHAR(1000)       NULL
    , StreetKladrName                           NVARCHAR(1000)       NULL
    , IsNotKladrStreet                          BIT                  NULL
    , IsNotKladrCity                            BIT                  NULL
    , CityAoGuid                                UNIQUEIDENTIFIER     NULL
    , StreetAoGuid                              UNIQUEIDENTIFIER     NULL    
    , CitySocr                                  NVARCHAR(100)        NULL
	, CityTitle                                 NVARCHAR(500)        NULL
    , StreetSocr                                NVARCHAR(100)        NULL
    , StreetTitle                               NVARCHAR(500)        NULL    
    , DistrictSocr                              NVARCHAR(100)        NULL
    , DistrictTitle                             NVARCHAR(500)        NULL    
    , IntracitySocr                             NVARCHAR(100)        NULL
    , IntracityTitle                            NVARCHAR(500)        NULL
    , CityFiasFullName                          NVARCHAR(500)        NULL
    , ContactProfileId                          UNIQUEIDENTIFIER     NULL
    , AddressAoGuid                             UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ContactAddress_BatchId ON tz.ContactAddress(BatchId, ContactAddressId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_ApplicationId ON tz.ContactAddress(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ContactAddress TO tz_report;﻿CREATE TABLE tz.ContactIntegration
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ContactIntegrationId                      UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TrustedEsia                               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ContactIntegration_BatchId ON tz.ContactIntegration(BatchId, ContactIntegrationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactIntegration_ApplicationId ON tz.ContactIntegration(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ContactIntegration TO tz_report;﻿CREATE TABLE tz.CreditLimit
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitId	                            UNIQUEIDENTIFIER NOT NULL
	
	, CreditLimit_RK	                        BIGINT               NULL

	, [Name]                                    VARCHAR(250)         NULL
	, Term	                                    INT                  NULL
	, MaxSum                                    DECIMAL(18, 2)       NULL	
	, IsActive	                                BIT                  NULL
	, StartDate	                                DATETIME             NULL
	, EndDate	                                DATETIME             NULL
	, RatePerDay	                            DECIMAL(18, 2)       NULL	
	, MaxTranshTerm                             INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimit_BatchId ON tz.CreditLimit(BatchId, CreditLimitId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimit_CreditLimitId ON tz.CreditLimit(CreditLimitId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimit TO tz_report;﻿CREATE TABLE tz.CreditLimitContract
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitContract_RK	                BIGINT               NULL
	, CreditLimit_RK	                        BIGINT               NULL
	, Customer_RK				                BIGINT               NULL
	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractId                     UNIQUEIDENTIFIER     NULL
	, ContactId                                 UNIQUEIDENTIFIER     NULL
	, Number                                    VARCHAR(50)          NULL
	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, StartDate                                 DATETIME             NULL
	, StartDateDT                               DATE                 NULL
	, EndDate                                   DATETIME             NULL
	, EndDateDT                                 DATE                 NULL
	, PlannedEndDate                            DATETIME             NULL
	, PlannedEndDateDT                          DATE                 NULL
	, FileId                                    UNIQUEIDENTIFIER     NULL
	, CreditLimitId                             UNIQUEIDENTIFIER     NULL
	, [Sum]                                     DECIMAL(18, 2)       NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitContract_BatchId ON tz.CreditLimitContract(BatchId, CreditLimitContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContract_CreditLimitContract ON tz.CreditLimitContract(CreditLimitContractId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContract TO tz_report;﻿CREATE TABLE tz.CreditLimitContractStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitContractStatus_RK              BIGINT               NULL

	, CreditLimitContractStatusId               UNIQUEIDENTIFIER     NULL
	, [Name]		                            VARCHAR(500)         NULL
	, [Description]                             VARCHAR(500)		 NULL
	, FinalState                                BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitContractStatus_BatchId ON tz.CreditLimitContractStatus(BatchId, CreditLimitContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitContractStatus_CreditLimitContractStatus ON tz.CreditLimitContractStatus(CreditLimitContractStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitContractStatus TO tz_report;﻿CREATE TABLE tz.CreditLimitTransh
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, CreditLimitTransh_RK                      BIGINT               NULL
	, Account_RK	                            BIGINT               NULL
	, CreditLimitContractId_RK	                BIGINT               NULL

	, CreditLimitTranshId			            UNIQUEIDENTIFIER     NULL
	, ApplicationId			                    UNIQUEIDENTIFIER     NULL
	, CreditLimitContractId	                    UNIQUEIDENTIFIER     NULL
	, Number                                    INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_CreditLimitTransh_BatchId ON tz.CreditLimitTransh(BatchId, CreditLimitTranshId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CreditLimitTransh_CreditLimitTransh ON tz.CreditLimitTransh(CreditLimitTranshId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CreditLimitTransh TO tz_report;﻿CREATE TABLE tz.DecisionReasons
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, DecisionReasonsId                         UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_DecisionReasons_BatchId ON tz.DecisionReasons(BatchId, DecisionReasonsId);
GO
CREATE NONCLUSTERED INDEX IX_tz_DecisionReasons_ApplicationId ON tz.DecisionReasons(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.DecisionReasons TO tz_report;﻿CREATE TABLE tz.Education
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, EducationId                               UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Education_BatchId ON tz.Education(BatchId, EducationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Education_ApplicationId ON tz.Education(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Education TO tz_report;﻿CREATE TABLE tz.FinancingInstrument
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentId                     UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastFourDigits                            NVARCHAR(50)         NULL
    , ExpiresOn                                 DATE                 NULL
    , BIN                                       NVARCHAR(100)        NULL
    , CardId                                    NVARCHAR(100)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_BatchId ON tz.FinancingInstrument(BatchId, FinancingInstrumentId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrument TO tz_report;﻿CREATE TABLE tz.FinancingInstrumentStatus
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentStatusId               UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentStatus_BatchId ON tz.FinancingInstrumentStatus(BatchId, FinancingInstrumentStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentStatus TO tz_report;﻿CREATE TABLE tz.FinancingInstrumentType
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentTypeId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(MAX)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentType_BatchId ON tz.FinancingInstrumentType(BatchId, FinancingInstrumentTypeId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentType TO tz_report;﻿CREATE TABLE tz.Gender
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, GenderId                                  UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, OkbCode		                            NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Gender_BatchId ON tz.Gender(BatchId, GenderId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Gender_ApplicationId ON tz.Gender(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Gender TO tz_report;﻿CREATE TABLE tz.LegalCollectionContract
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractId                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastChangeStatusDate                      DATETIME             NULL
    , StateDutyAmount                           NUMERIC(18,2)        NULL
    , StateDutyAmountDebt                       NUMERIC(18,2)        NULL
    , AmountDebtForCourt                        NUMERIC(18,2)        NULL
    , InterestStopDate                          DATETIME             NULL
    , CourtId                                   UNIQUEIDENTIFIER     NULL
    , LawyerId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContract_BatchId ON tz.LegalCollectionContract(BatchId, LegalCollectionContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContract_ApplicationId ON tz.LegalCollectionContract(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContract TO tz_report;
﻿CREATE TABLE tz.LegalCollectionContractStatus
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusId           UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(1000)       NULL
    , AvailableForContract                      BIT                  NULL
    , AvailableForContractToCourt               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatus_BatchId ON tz.LegalCollectionContractStatus(BatchId, LegalCollectionContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatus_ApplicationId ON tz.LegalCollectionContractStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatus TO tz_report;
﻿CREATE TABLE tz.LegalCollectionContractStatusHistory
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusHistoryId    UNIQUEIDENTIFIER     NULL
	, CreatedOn                                 DATETIME2            NULL
    , ContractId                                UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_BatchId ON tz.LegalCollectionContractStatusHistory(BatchId, LegalCollectionContractStatusHistoryId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_ApplicationId ON tz.LegalCollectionContractStatusHistory(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatusHistory TO tz_report;
﻿CREATE TABLE tz.MaritalStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, MaritalStatusId                           UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
	, [Description]                             NVARCHAR(500)		 NULL
	, Code		                                NVARCHAR(100)		 NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_MaritalStatus_BatchId ON tz.MaritalStatus(BatchId, MaritalStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_MaritalStatus_ApplicationId ON tz.MaritalStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.MaritalStatus TO tz_report;﻿CREATE TABLE tz.Accrual
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, TypeId                   UNIQUEIDENTIFIER     NULL
	, PaymentScheduleId        UNIQUEIDENTIFIER     NULL
	, AmountAccrued            NUMERIC(18, 2)       NULL
	, InterestDebt             NUME﻿CREATE TABLE tz.PaymentSchedule
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, PaymentScheduleId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PayDate                                   DATE                 NULL
    , PrincipalSum                              NUMERIC(18,2)        NULL
    , PrincipalSumPay                           NUMERIC(18,2)        NULL
    , InterestSumPay                            NUMERIC(18,2)        NULL
    , PrincipalDebt                             NUMERIC(18,2)        NULL
    , InterestDebt                              NUMERIC(18,2)        NULL
    , FineDebt                                  NUMERIC(18,2)        NULL
    , Coefficient                               NUMERIC(18,4)        NULL
    , ShiftAmount                               NUMERIC(18,2)        NULL    
    , ShiftAmountPay                            NUMERIC(18,2)        NULL
    , Amount                                    NUMERIC(18,2)        NULL
    , Comment                                   NVARCHAR(MAX)        NULL
    , ShiftAmountDebt                           NUMERIC(18,2)        NULL
    , Number                                    INT                  NULL
    , APSK                                      NUMERIC(18,4)        NULL
    , CoefficientDouble                         NVARCHAR(100)        NULL
    , RepaymentDate                             DATETIME2            NULL
    , RatePerDay                                NUMERIC(18,3)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_PaymentSchedule_BatchId ON tz.PaymentSchedule(BatchId, PaymentScheduleId);
GO
CREATE NONCLUSTERED INDEX IX_tz_PaymentSchedule_ApplicationId ON tz.PaymentSchedule(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PaymentSchedule TO tz_report;﻿CREATE TABLE tz.PaySystemOrder
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , PaySystemOrderId                          UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , [Type]                                    INT                  NULL
    , IsPayed                                   BIT                  NULL
    , IsChecked                                 BIT                  NULL
    , CashflowSourceId                          UNIQUEIDENTIFIER     NULL
    , PayAmount                                 NUMERIC(18,2)        NULL
    , PaymentSystemAccountInfo                  NVARCHAR(500)        NULL
    , ActualPayDate                             DATETIME2            NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_PaySystemOrder_BatchId ON tz.PaySystemOrder(BatchId, PaySystemOrderId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PaySystemOrder TO tz_report;﻿CREATE TABLE tz.PersCabFile
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , PersCabFileId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PersCabFileTypeId                         UNIQUEIDENTIFIER     NULL
    , IsNotValid                                BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_PersCabFile_BatchId ON tz.PersCabFile(BatchId, PersCabFileId);
GO
CREATE NONCLUSTERED INDEX IX_tz_PersCabFile_ApplicationId ON tz.PersCabFile(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PersCabFile TO tz_report;﻿CREATE TABLE tz.Product
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ProductId                                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , Code                                      NVARCHAR(100)        NULL
    , UnitId                                    UNIQUEIDENTIFIER     NULL
    , CurrencyId                                UNIQUEIDENTIFIER     NULL
    , Price                                     NUMERIC(18,2)        NULL
    , TaxId                                     UNIQUEIDENTIFIER     NULL
    , Active                                    BIT                  NULL
    , [URL]                                     NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , OwnerId                                   UNIQUEIDENTIFIER     NULL
    , [Description]                             NVARCHAR(MAX)        NULL
    , ProductSourceId                           UNIQUEIDENTIFIER     NULL
    , Notes                                     NVARCHAR(MAX)        NULL
    , ClientProfile                             NVARCHAR(500)        NULL
    , AdditionalTerms                           NVARCHAR(500)        NULL
    , ActiveFrom                                DATE                 NULL
    , ActiveTo                                  DATE                 NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , ClientTypeId                              UNIQUEIDENTIFIER     NULL
    , DaysTermMin                               INT                  NULL
    , DaysTermMax                               INT                  NULL
    , RubSumMin                                 NUMERIC(18,2)        NULL
    , RubSumMax                                 NUMERIC(18,2)        NULL
    , RatePerDay                                NUMERIC(18,3)        NULL
    , RubFineSum                                NUMERIC(18,3)        NULL
    , FineDay                                   INT                  NULL
    , ProlongationsMax                          INT                  NULL
    , StartDate                                 DATE                 NULL
    , EndDate                                   DATE                 NULL
    , [Default]                                 BIT                  NULL
    , [Priority]                                INT                  NULL
    , GraceOfDays                               INT                  NULL
    , FullCost                                  NUMERIC(18,3)        NULL
    , LoanApplicationAgreed                     INT                  NULL
    , Prolong                                   BIT                  NULL
    , ProlongMin                                INT                  NULL
    , ProlongMax                                INT                  NULL
    , ProlongParam                              NUMERIC(18,3)        NULL
    , StartRate                                 INT                  NULL
    , FinishRate                                INT                  NULL
    , RateDayLgot                               NUMERIC(18,3)        NULL
    , RateDayDelinLoan                          NUMERIC(18,3)        NULL
    , LimitOverpayment                          NUMERIC(18,3)        NULL
    , Freez                                     BIT                  NULL
    , Monday                                    BIT                  NULL
    , Tuesday                                   BIT                  NULL
    , Wednesday                                 BIT                  NULL
    , Thursday                                  BIT                  NULL
    , Friday                                    BIT                  NULL
    , Saturday                                  BIT                  NULL
    , Sunday                                    BIT                  NULL
    , StartFreez                                DATE                 NULL
    , EndFreez                                  DATE                 NULL
    , StartPenalties1                           INT                  NULL
    , FinishPenalties1                          INT                  NULL
    , Penalties1                                NUMERIC(18,3)        NULL
    , StartPenalties2                           INT                  NULL
    , FinishPenalties2                          INT                  NULL
    , Penalties2                                NUMERIC(18,3)        NULL
    , EndFineDay                                INT                  NULL
    , PromCode                                  BIT                  NULL
    , TypePeriodProlongId                       UNIQUEIDENTIFIER     NULL
    , ProductProlongTypeId                      UNIQUEIDENTIFIER     NULL
    , TypeProlongParamId                        UNIQUEIDENTIFIER     NULL
    , TypeLimitOverpaymentId                    UNIQUEIDENTIFIER     NULL
    , TypePenaltiesId                           UNIQUEIDENTIFIER     NULL
    , TypeFineId                                UNIQUEIDENTIFIER     NULL
    , ProductTimeFreezTypeId                    UNIQUEIDENTIFIER     NULL
    , IconId                                    UNIQUEIDENTIFIER     NULL
    , PeriodTypeId                              UNIQUEIDENTIFIER     NULL
    , FullCostV                                 NUMERIC(18,3)        NULL
    , LastProlongMin                            INT                  NULL
    , RateDayMax                                INT                  NULL
    , PenaltiesPay                              INT                  NULL
    , RatePay                                   INT                  NULL
    , TypePenalties1Id                          UNIQUEIDENTIFIER     NULL
    , TypePenalties2Id                          UNIQUEIDENTIFIER     NULL
    , FinePay                                   INT                  NULL
    , TypePeriodApplicationId                   UNIQUEIDENTIFIER     NULL
    , TypeLimitProlongId                        UNIQUEIDENTIFIER     NULL
    , TypeFineNewId                             UNIQUEIDENTIFIER     NULL
    , TypeLimitOverpaymentProcId                UNIQUEIDENTIFIER     NULL
    , LimitOverpaymentProc                      NUMERIC(18,3)        NULL
    , PeriodId                                  UNIQUEIDENTIFIER     NULL
    , IsLoanCount                               BIT                  NULL
    , RateDayProlong                            NUMERIC(18,3)        NULL
    , ProlongDay                                INT                  NULL
    , RateDayProlongLgot                        NUMERIC(18,3)        NULL
    , FreezNotAfterProlong                      BIT                  NULL
    , AppLimit                                  BIT                  NULL
    , AppLimitMax                               INT                  NULL
    , AppLimitPeriodId                          UNIQUEIDENTIFIER     NULL
    , FreezNumberDay                            NVARCHAR(1000)       NULL
    , FreezDay                                  NVARCHAR(1000)       NULL
    , PartialRepayment                          BIT                  NULL
    , PartialRepaymentDay                       INT                  NULL
    , EarlyRepayment                            BIT                  NULL
    , EarlyRepaymentDay                         INT                  NULL
    , StepSum                                   INT                  NULL
    , RateDayPartialRepay                       NUMERIC(18,3)        NULL
    , RateRepayRepaymentTypeId                  UNIQUEIDENTIFIER     NULL
    , DayProlongFirst                           INT                  NULL
    , DayProlongNext                            INT                  NULL
    , FreezDayLast                              INT                  NULL
    , AccrueProcEarlyRepayment                  BIT                  NULL
    , AccrueProcOverduePayment                  BIT                  NULL
    , AccrueProcDay                             INT                  NULL
    , MaxFreezDay                               INT                  NULL
    , AppLimitPeriodTypeId                      UNIQUEIDENTIFIER     NULL
    , StepPeriod                                INT                  NULL
    , IdentificationFull                        BIT                  NULL
    , IdentificationFullRepeat                  BIT                  NULL
    , IdentificationEasy                        BIT                  NULL
    , CommissionProlong                         NUMERIC(18,2)        NULL
    , CommissionProlongTypeId                   UNIQUEIDENTIFIER     NULL
    , CommissionSumTypeId                       UNIQUEIDENTIFIER     NULL
    , SumForPenaltiesTypeId                     UNIQUEIDENTIFIER     NULL
    , ChangeAccrueRepaymentTypeId               UNIQUEIDENTIFIER     NULL
    , CoefficientProlongation                   NVARCHAR(100)        NULL
    , FullIdentificationPeriod                  INT                  NULL
    , FullIdentificationPeriodTypeId            UNIQUEIDENTIFIER     NULL
    , EarlyRepaymentTypeId                      UNIQUEIDENTIFIER     NULL
    , PartialRepaymentTypeId                    UNIQUEIDENTIFIER     NULL
    , NtpId                                     NVARCHAR(100)        NULL
    , IsChange                                  BIT                  NULL
    , LimitAccrualPenalties                     BIT                  NULL
    , IdentificationEsia                        BIT                  NULL
    , CancelInterest                            BIT                  NULL
    , CancelInterestFrom                        INT                  NULL
    , CancelInterestTo                          INT                  NULL
    , AlternativeCalculation                    BIT                  NULL
    , AlternativeRatePerDate                    NUMERIC(18,3)        NULL
    , PaymentsNumberWithMaxRate                 INT                  NULL
    , PaymentsPercentWithReducedDebt            INT                  NULL
    , Refinancing                               BIT                  NULL
    , AutoProlong                               BIT                  NULL
    , AutoProlongDays                           INT                  NULL
    , AutoProlongDaysAfterDpd                   INT                  NULL
    , GracePeriod                               INT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Product_BatchId ON tz.Product(BatchId, ProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Product_ApplicationId ON tz.Product(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Product TO tz_report;﻿CREATE TABLE tz.ProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ProductTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ProductType_BatchId ON tz.ProductType(BatchId, ProductTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ProductType_ApplicationId ON tz.ProductType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ProductType TO tz_report;﻿CREATE TABLE tz.Region
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, RegionId                                  UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , CountryId                                 UNIQUEIDENTIFIER     NULL
    , Code                                      NVARCHAR(100)        NULL
    , Abbreviation                              NVARCHAR(100)        NULL
    , OkbCode                                   NVARCHAR(100)        NULL
    , RegionAoGuid                              UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Region_BatchId ON tz.Region(BatchId, RegionId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Region_ApplicationId ON tz.Region(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Region TO tz_report;﻿CREATE TABLE tz.SandboxInputLog
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL

    , SandboxInputLogId                         UNIQUEIDENTIFIER     NULL    
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , RequestDate                               DATETIME             NULL
    , Decision                                  NVARCHAR(500)        NULL
    , Comment                                   NVARCHAR(500)        NULL
    , ApplicationRefinancingId                  UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_SandboxInputLog_BatchId ON tz.SandboxInputLog(ApplicationId, EffectiveDate) INCLUDE(RequestDate, Decision);
GO
GRANT DELETE, INSERT ON tz.SandboxInputLog TO tz_report;﻿CREATE TABLE tz.TinkoffIDResponseTrace
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, TinkoffIDResponseTraceId                  UNIQUEIDENTIFIER     NULL
    , MobilePhone                               NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_BatchId ON tz.TinkoffIDResponseTrace(BatchId, TinkoffIDResponseTraceId);
GO
CREATE NONCLUSTERED INDEX IX_tz_TinkoffIDResponseTrace_ApplicationId ON tz.TinkoffIDResponseTrace(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.TinkoffIDResponseTrace TO tz_report;﻿CREATE TABLE tz.Verification
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, VerificationId                            UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , Position                                  INT                  NULL
    , ResultId                                  UNIQUEIDENTIFIER     NULL
    , Comment                                   NVARCHAR(MAX)        NULL
    , Verified                                  BIT                  NULL

    , Verification_RK                           BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , VerificationListItem_RK                   BIGINT               NULL
    , VerificationListResult_RK                 BIGINT               NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_Verification_BatchId ON tz.Verification(BatchId, VerificationId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Verification_ApplicationId ON tz.Verification(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Verification TO tz_report;﻿CREATE TABLE tz.VerificationListItem
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , VerificationListItemId                    UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VerificationListItem_BatchId ON tz.VerificationListItem(BatchId, VerificationListItemId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListItem_ApplicationId ON tz.VerificationListItem(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VerificationListItem TO tz_report;﻿CREATE TABLE tz.VerificationListResult
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, VerificationListResultId                  UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VerificationListResult_BatchId ON tz.VerificationListResult(BatchId, VerificationListResultId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VerificationListResult_ApplicationId ON tz.VerificationListResult(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VerificationListResult TO tz_report;﻿CREATE TABLE tz.VwCheckBankScoringValue
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationId                             UNIQUEIDENTIFIER     NULL
	, ScoringId                                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(50)         NULL
    , StringValueOK                             NVARCHAR(1000)       NULL
    , StringValueError                          NVARCHAR(MAX)        NULL
    , Confirmed                                 INT                  NULL
    , CheckedValue                              NVARCHAR(500)        NULL    
    , BankName                                  NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VwCheckBankScoringValue_BatchId ON tz.VwCheckBankScoringValue(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_ApplicationId ON tz.VwCheckBankScoringValue(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VwCheckBankScoringValue TO tz_report;