CREATE TABLE tz.AdditionalProduct
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_AdditionalProduct PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , AdditionalProduct_RK                      BIGINT               NULL 
    , AdditionalProductType_RK                  BIGINT               NULL 
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , Active                                    BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProduct_BatchId ON tz.AdditionalProduct(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProduct_Key ON tz.AdditionalProduct(BatchId, AdditionalProductId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.AdditionalProduct TO tz_report;