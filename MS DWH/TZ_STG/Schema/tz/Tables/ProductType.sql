CREATE TABLE tz.ProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ProductTypeId                             UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ProductType_BatchId ON tz.ProductType(BatchId, ProductTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ProductType_ApplicationId ON tz.ProductType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ProductType TO tz_report;