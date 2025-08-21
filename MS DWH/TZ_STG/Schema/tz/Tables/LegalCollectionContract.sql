CREATE TABLE tz.LegalCollectionContract
(
      BatchId                                   BIGINT           NOT NULL
	, EffectiveDate                             DATETIME             NULL

    , LegalCollectionContractId                 UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , LastChangeStatusDate                      DATETIME             NULL
    , StateDutyAmount                           NUMERIC(18,2)        NULL
    , StateDutyAmountDebt                       NUMERIC(18,2)        NULL
    , AmountDebtForCourt                        NUMERIC(18,2)        NULL
    , InterestStopDate                          DATETIME             NULL
    , CourtId                                   UNIQUEIDENTIFIER     NULL
    , LawyerId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_LegalCollectionContract_BatchId ON tz.LegalCollectionContract(BatchId, LegalCollectionContractId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContract_ApplicationId ON tz.LegalCollectionContract(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.LegalCollectionContract TO tz_report;
