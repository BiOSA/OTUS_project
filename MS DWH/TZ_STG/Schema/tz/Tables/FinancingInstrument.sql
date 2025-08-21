CREATE TABLE tz.FinancingInstrument
(
      BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME             NULL
    
    , FinancingInstrumentId                     UNIQUEIDENTIFIER     NULL
    , Name                                      NVARCHAR(500)        NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastFourDigits                            NVARCHAR(50)         NULL
    , ExpiresOn                                 DATE                 NULL
    , BIN                                       NVARCHAR(100)        NULL
    , CardId                                    NVARCHAR(100)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_FinancingInstrument_BatchId ON tz.FinancingInstrument(BatchId, FinancingInstrumentId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.FinancingInstrument TO tz_report;