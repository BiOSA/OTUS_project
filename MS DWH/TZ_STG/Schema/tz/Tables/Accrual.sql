CREATE TABLE tz.Accrual
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, TypeId                   UNIQUEIDENTIFIER     NULL
	, PaymentScheduleId        UNIQUEIDENTIFIER     NULL
	, AmountAccrued            NUMERIC(18, 2)       NULL
	, InterestDebt             NUMERIC(18, 2)       NULL
	, PenaltyDebt              NUMERIC(18, 2)       NULL
	, AccrualDate              DATE                 NULL
	, StatusId                 UNIQUEIDENTIFIER     NULL
	, ApplicationId            UNIQUEIDENTIFIER     NULL
	, FineDebt                 NUMERIC(18, 2)       NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, NoPay                    BIT                  NULL
	, CreatedOn                DATETIME2(7)         NULL
	, PrincipalDebt            NUMERIC(18, 2)       NULL
	, AccrualDateDT            DATE                 NULL
	
	, Accrual_RK               BIGINT               NULL
	, AccrualStatus_RK         BIGINT               NULL
	, Account_RK               BIGINT               NULL
	, AccrualType_RK           BIGINT               NULL
	, PaymentSchedule_RK       BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_Accrual_BatchId            ON tz.Accrual(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Accrual_RK         ON tz.Accrual(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualStatus_RK   ON tz.Accrual(AccrualStatus_RK)   WHERE AccrualStatus_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_Account_RK         ON tz.Accrual(Account_RK)         WHERE Account_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualType_RK     ON tz.Accrual(AccrualType_RK)     WHERE AccrualType_RK IS NULL;
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_PaymentSchedule_RK ON tz.Accrual(PaymentSchedule_RK) WHERE PaymentSchedule_RK IS NULL;
GO