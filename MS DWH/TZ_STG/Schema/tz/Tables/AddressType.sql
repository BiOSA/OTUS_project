CREATE TABLE tz.AddressType
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
GRANT DELETE, INSERT ON tz.AddressType TO tz_report;