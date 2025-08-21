CREATE TABLE tz.CalculatorSetup(
	  BatchId					                BIGINT			 NOT NULL
	, EffectiveDate				                DATETIME		     NULL

	, CalculatorSetupId                         UNIQUEIDENTIFIER     NULL
    , PossibilityRegistrationForm               BIT                  NULL
    , PossibilityAuthForm                       BIT                  NULL
	, DefaultSum                                NUMERIC(18,2)        NULL
    , DefaultPeriod                             INT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CalculatorSetup_BatchId ON tz.CalculatorSetup(BatchId, CalculatorSetupId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CalculatorSetup TO tz_report;

