CREATE TABLE tz.AdditionalProduct
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductId                       UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , Active                                    BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProduct_BatchId ON tz.AdditionalProduct(BatchId, AdditionalProductId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProduct_ApplicationId ON tz.AdditionalProduct(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProduct TO tz_report;