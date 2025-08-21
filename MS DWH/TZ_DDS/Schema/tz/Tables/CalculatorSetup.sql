CREATE TABLE tz.CalculatorSetup
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CalculatorSetup PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, CalculatorSetupId                         UNIQUEIDENTIFIER     NULL
    , PossibilityRegistrationForm               BIT                  NULL
    , PossibilityAuthForm                       BIT                  NULL
	, DefaultSum                                NUMERIC(18,2)        NULL
    , DefaultPeriod                             INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CalculatorSetup_BatchId ON tz.CalculatorSetup(BatchId);
GO
--CREATE NONCLUSTERED INDEX IX_tz_CalculatorSetup_Key ON tz.CalculatorSetup (ApplicationId, EffectiveDateFrom,EffectiveDateTill,CheckBankScoringId) INCLUDE (OldIdentificationDate);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CalculatorSetup TO tz_report;