CREATE TABLE tz.VwCheckBankScoringValue
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , ApplicationId                             UNIQUEIDENTIFIER     NULL
	, ScoringId                                 UNIQUEIDENTIFIER     NULL
    , [Name]                                    NVARCHAR(50)         NULL
    , StringValueOK                             NVARCHAR(1000)       NULL
    , StringValueError                          NVARCHAR(MAX)        NULL
    , Confirmed                                 INT                  NULL
    , CheckedValue                              NVARCHAR(500)        NULL    
    , BankName                                  NVARCHAR(500)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_VwCheckBankScoringValue_BatchId ON tz.VwCheckBankScoringValue(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_ApplicationId ON tz.VwCheckBankScoringValue(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.VwCheckBankScoringValue TO tz_report;