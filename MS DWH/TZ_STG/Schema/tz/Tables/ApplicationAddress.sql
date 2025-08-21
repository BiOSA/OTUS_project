CREATE TABLE tz.ApplicationAddress
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
GRANT DELETE, INSERT ON tz.ApplicationAddress TO tz_report;