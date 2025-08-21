CREATE TABLE tz.LegalCollectionContractStatusHistory
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_LegalCollectionContractStatusHistory PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , LegalCollectionContract_RK                BIGINT               NULL
    , LegalCollectionContractStatus_RK          BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , LegalCollectionContractStatusHistoryId    UNIQUEIDENTIFIER     NULL
	, CreatedOn                                 DATETIME2            NULL
    , ContractId                                UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatusHistory_LegalCollectionContractStatus_RK ON tz.LegalCollectionContractStatusHistory ([LegalCollectionContractStatus_RK],[EffectiveDateTill]) INCLUDE ([LegalCollectionContract_RK],[EffectiveDateFrom],[CreatedOn]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.LegalCollectionContractStatusHistory TO tz_report;