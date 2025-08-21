CREATE TABLE tz.FinancingInstrumentType
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentTypeId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(MAX)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentType_BatchId ON tz.FinancingInstrumentType(BatchId, FinancingInstrumentTypeId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrumentType TO tz_report;