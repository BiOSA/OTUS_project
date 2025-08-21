CREATE TABLE tz.VwCheckBankScoringValue
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_VwCheckBankScoringValue PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
    , Account_RK                                BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_BatchId ON tz.VwCheckBankScoringValue(BatchId, EffectiveDateFrom) INCLUDE(Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_Key ON tz.VwCheckBankScoringValue(EffectiveDateFrom, EffectiveDateTill, Account_RK, [Name]) INCLUDE (Confirmed);
GO
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_Account_RK ON [tz].[VwCheckBankScoringValue] ([Account_RK],[EffectiveDateFrom],[EffectiveDateTill],[Name])
GO
CREATE NONCLUSTERED INDEX IX_tz_VwCheckBankScoringValue_Name ON tz.VwCheckBankScoringValue ([Name]) INCLUDE (EffectiveDateFrom,EffectiveDateTill,Account_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.VwCheckBankScoringValue TO tz_report;