CREATE TABLE tz.FinancingInstrumentStatus
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentStatusId               UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentStatus_BatchId ON tz.FinancingInstrumentStatus(BatchId, FinancingInstrumentStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentStatus TO tz_report;