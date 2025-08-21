CREATE TABLE stg.Product
(
	  BatchId                   BIGINT				NOT NULL
    , EffectiveDate             DATETIME			NOT NULL

	, ProductId                 UNIQUEIDENTIFIER	    NULL
	, CreatedOn					DATETIME2(7)			NULL
	, CreatedById				UNIQUEIDENTIFIER		NULL
	, ModifiedOn				DATETIME2(7)			NULL
	, ModifiedById				UNIQUEIDENTIFIER		NULL
	, Name						NVARCHAR(250)		NOT NULL
	, TypeId					UNIQUEIDENTIFIER		NULL
)
