CREATE TABLE tz.AdditionalProductStatus
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , AdditionalProductStatusId                 UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_AdditionalProductStatus_BatchId ON tz.AdditionalProductStatus(BatchId, AdditionalProductStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AdditionalProductStatus_ApplicationId ON tz.AdditionalProductStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.AdditionalProductStatus TO tz_report;