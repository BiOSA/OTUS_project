CREATE TABLE tz.PaymentSchedule
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_PaymentSchedule PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , PaymentSchedule_RK                        BIGINT               NULL
    , Account_RK                                BIGINT                        NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, PaymentScheduleId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PayDate                                   DATE                 NULL
    , PrincipalSum                              NUMERIC(18,2)        NULL
    , PrincipalSumPay                           NUMERIC(18,2)        NULL
    , InterestSumPay                            NUMERIC(18,2)        NULL
    , PrincipalDebt                             NUMERIC(18,2)        NULL
    , InterestDebt                              NUMERIC(18,2)        NULL
    , FineDebt                                  NUMERIC(18,2)        NULL
    , Coefficient                               NUMERIC(18,4)        NULL
    , ShiftAmount                               NUMERIC(18,2)        NULL    
    , ShiftAmountPay                            NUMERIC(18,2)        NULL
    , Amount                                    NUMERIC(18,2)        NULL
    , Comment                                   NVARCHAR(MAX)        NULL
    , ShiftAmountDebt                           NUMERIC(18,2)        NULL
    , Number                                    INT                  NULL
    , APSK                                      NUMERIC(18,4)        NULL
    , CoefficientDouble                         NVARCHAR(100)        NULL
    , RepaymentDate                             DATETIME             NULL
    , RatePerDay                                NUMERIC(18,3)        NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_PaymentSchedule_BatchId ON tz.PaymentSchedule(BatchId, EffectiveDateFrom) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_PaymentSchedule_EffectiveDateTill ON tz.PaymentSchedule (EffectiveDateTill,Account_RK, PayDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_PaymentSchedule_RepaymentDate ON [tz].[PaymentSchedule] ([RepaymentDate]) INCLUDE ([EffectiveDateFrom],[EffectiveDateTill],Account_RK,[PayDate]);
GO
GRANT DELETE, INSERT, UPDATE ON tz.PaymentSchedule TO tz_report;