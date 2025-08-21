CREATE TABLE tz.ContactAddress
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
GRANT DELETE, INSERT ON tz.ContactAddress TO tz_report;