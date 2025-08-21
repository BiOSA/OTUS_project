CREATE TABLE tz.FinancingInstrumentType
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_FinancingInstrumentType PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , FinancingInstrumentType_RK                BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL
    
    , FinancingInstrumentTypeId                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , [Description]                             NVARCHAR(MAX)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentType_BatchId ON tz.FinancingInstrumentType(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrumentType_Key ON tz.FinancingInstrumentType(BatchId, FinancingInstrumentTypeId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.FinancingInstrumentType TO tz_report;