CREATE TABLE tz.FinancingInstrument
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_FinancingInstrument PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    , FinancingInstrument_RK                    BIGINT               NULL
    , Customer_RK                               BIGINT               NULL
    , FinancingInstrumentType_RK                BIGINT               NULL
    , FinancingInstrumentStatus_RK              BIGINT               NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL
    
    , FinancingInstrumentId                     UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastFourDigits                            NVARCHAR(50)         NULL
    , ExpiresOn                                 DATE                 NULL
    , BIN                                       NVARCHAR(100)        NULL
    , CardId                                    NVARCHAR(100)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_BatchId ON tz.FinancingInstrument(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_Key ON tz.FinancingInstrument(BatchId, FinancingInstrument_RK) INCLUDE (EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_FinancingInstrumentId ON tz.FinancingInstrument (FinancingInstrument_RK,EffectiveDateFrom,EffectiveDateTill) INCLUDE (TypeId);
GO
GRANT DELETE, INSERT, UPDATE ON tz.FinancingInstrument TO tz_report;