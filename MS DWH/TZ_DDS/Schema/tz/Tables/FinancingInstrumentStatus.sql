CREATE TABLE tz.FinancingInstrumentStatus
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_FinancingInstrumentStatus PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , FinancingInstrumentStatus_RK              BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL
    
    , FinancingInstrumentStatusId               UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentStatus_BatchId ON tz.FinancingInstrumentStatus(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentStatus_Key ON tz.FinancingInstrumentStatus(BatchId, FinancingInstrumentStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.FinancingInstrumentStatus TO tz_report;