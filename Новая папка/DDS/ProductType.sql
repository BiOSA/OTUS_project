CREATE TABLE dds.ProductType
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ProductType PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
	, ProductType_RK                            BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, ProductTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
