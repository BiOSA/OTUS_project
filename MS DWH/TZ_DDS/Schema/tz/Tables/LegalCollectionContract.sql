CREATE TABLE tz.LegalCollectionContract
(
      Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_LegalCollectionContract PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, LegalCollectionContract_RK                BIGINT               NULL 
    , Account_RK                                BIGINT               NULL
    , Customer_RK                               BIGINT               NULL
    , LegalCollectionContractStatus_RK          BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

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
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContract_BatchId ON tz.LegalCollectionContract(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_LegalCollectionContract_Key ON tz.LegalCollectionContract(Account_RK,EffectiveDateFrom,EffectiveDateTill) INCLUDE (LegalCollectionContract_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.LegalCollectionContract TO tz_report;