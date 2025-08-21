CREATE TABLE tz.AddressType
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AddressType PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, AddressType_RK                            BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, AddressTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AddressType_BatchId ON tz.AddressType(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AddressType_Key ON tz.AddressType(BatchId, AddressTypeId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AddressType TO tz_report;