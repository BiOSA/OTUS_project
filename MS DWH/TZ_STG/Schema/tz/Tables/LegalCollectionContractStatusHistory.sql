CREATE TABLE tz.LegalCollectionContractStatusHistory
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractStatusHistoryId    UNIQUEIDENTIFIER     NULL
	, CreatedOn                                 DATETIME2            NULL
    , ContractId                                UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_BatchId ON tz.LegalCollectionContractStatusHistory(BatchId, LegalCollectionContractStatusHistoryId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_ApplicationId ON tz.LegalCollectionContractStatusHistory(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContractStatusHistory TO tz_report;
