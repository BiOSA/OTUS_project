CREATE TABLE tz.AdditionalProductType
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, AdditionalProductTypeId                   UNIQUEIDENTIFIER     NULL
	, [Name]		                            NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductType_BatchId ON tz.AdditionalProductType(BatchId, AdditionalProductTypeId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductType_ApplicationId ON tz.AdditionalProductType(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductType TO tz_report;