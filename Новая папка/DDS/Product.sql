CREATE TABLE dds.Product
(
	  Id                        BIGINT              NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_Product PRIMARY KEY
	, BatchId                   BIGINT              NOT NULL
												    
    , Product_RK                BIGINT                  NULL
    , ProductType_RK            BIGINT                  NULL
												    
    , EffectiveDateFrom         DATETIME                NULL
    , EffectiveDateTill         DATETIME                NULL
    , DataSourceName            VARCHAR(50)             NULL
    , IsNew                     BIT                     NULL

	, ProductId                 UNIQUEIDENTIFIER	    NULL
	, CreatedOn					DATETIME2(7)			NULL
	, CreatedOnDT				DATE					NULL
	, CreatedById				UNIQUEIDENTIFIER		NULL
	, ModifiedOn				DATETIME2(7)			NULL
	, ModifiedOnDT				DATE					NULL
	, ModifiedById				UNIQUEIDENTIFIER		NULL
	, Name						NVARCHAR(250)		NOT NULL
	, TypeId					UNIQUEIDENTIFIER		NULL
)
