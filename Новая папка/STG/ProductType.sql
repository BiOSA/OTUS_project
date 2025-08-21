CREATE TABLE stg.ProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ProductTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)