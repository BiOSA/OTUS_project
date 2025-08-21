CREATE TABLE tz.Accrual
(
	  Id                       BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_Accrual PRIMARY KEY
	, BatchId                  BIGINT           NOT NULL
	, Accrual_RK               BIGINT               NULL
	, AccrualStatus_RK         BIGINT               NULL
	, Account_RK               BIGINT               NULL
	, AccrualType_RK           BIGINT               NULL
	, PaymentSchedule_RK       BIGINT               NULL
	
	, EffectiveDateFrom        DATETIME             NULL
	, EffectiveDateTill        DATETIME             NULL
	, DataSourceName           VARCHAR(50)          NULL
	, IsNew                    BIT                  NULL

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
)
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_BatchId           ON tz.Accrual(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_EffectiveDateTill ON tz.Accrual(EffectiveDateTill, AccrualDateDT, AccrualStatus_RK) INCLUDE (AmountAccrued, AccrualType_RK, Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_AccrualId         ON tz.Accrual(Accrual_RK, AccrualId) INCLUDE (EffectiveDateFrom,EffectiveDateTill);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_PaymentScheduleId ON tz.Accrual(PaymentScheduleId, PaymentSchedule_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_ApplicationId     ON tz.Accrual(ApplicationId, Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_Accrual_TypeId            ON tz.Accrual(AccrualType_RK, TypeId)
GO
GRANT DELETE, INSERT, UPDATE ON tz.Accrual TO tz_report;
