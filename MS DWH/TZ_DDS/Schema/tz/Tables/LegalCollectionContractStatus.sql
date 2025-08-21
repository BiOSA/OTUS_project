CREATE TABLE tz.LegalCollectionContractStatus
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_LegalCollectionContractStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , LegalCollectionContractStatus_RK          BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

    , LegalCollectionContractStatusId           UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(1000)       NULL
    , AvailableForContract                      BIT                  NULL
    , AvailableForContractToCourt               BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatus_BatchId ON tz.LegalCollectionContractStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContractStatus_Key ON tz.LegalCollectionContractStatus(BatchId, LegalCollectionContractStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.LegalCollectionContractStatus TO tz_report;