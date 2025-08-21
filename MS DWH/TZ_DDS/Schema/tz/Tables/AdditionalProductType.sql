CREATE TABLE tz.AdditionalProductType
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalProductType PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	
	, AdditionalProductType_RK                  BIGINT               NULL 

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, AdditionalProductTypeId                   UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductType_BatchId ON tz.AdditionalProductType(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductType_Key ON tz.AdditionalProductType(BatchId, AdditionalProductTypeId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalProductType TO tz_report;