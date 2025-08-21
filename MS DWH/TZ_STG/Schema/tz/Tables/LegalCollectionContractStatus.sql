CREATE TABLE tz.LegalCollectionContractStatus
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusId           UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(1000)       NULL
    , AvailableForContract                      BIT                  NULL
    , AvailableForContractToCourt               BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatus_BatchId ON tz.LegalCollectionContractStatus(BatchId, LegalCollectionContractStatusId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatus_ApplicationId ON tz.LegalCollectionContractStatus(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatus TO tz_report;
