CREATE TABLE tz.ContactAddress
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ContactAddress PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , ContactAddress_RK                         BIGINT               NULL
    , AddressType_RK                            BIGINT               NULL
    , Customer_RK                               BIGINT               NULL
    , Country_RK                                BIGINT               NULL
    , Region_RK                                 BIGINT               NULL
    , City_RK                                   BIGINT               NULL
    , District_RK                               BIGINT               NULL
    , SettlementType_RK                         BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_BatchId ON tz.ContactAddress(BatchId, EffectiveDateFrom) INCLUDE (Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_AddressTypeId ON tz.ContactAddress (AddressTypeId,EffectiveDateFrom,EffectiveDateTill) INCLUDE (RegionId,Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_RegionId ON tz.ContactAddress (RegionId,EffectiveDateFrom,EffectiveDateTill,AddressTypeId) INCLUDE (Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_Customer_RK ON tz.ContactAddress (Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_AddressTypeId_AddressType_RK ON tz.ContactAddress (AddressType_RK) INCLUDE (Customer_RK,Region_RK,EffectiveDateFrom,EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_ContactAddress_AddressTypeId_ContactAddressId ON tz.ContactAddress (ContactAddressId) INCLUDE (EffectiveDateFrom,EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ContactAddress TO tz_report;