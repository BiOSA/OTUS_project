CREATE TABLE tz.PaymentSchedule
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

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
    , RepaymentDate                             DATETIME2            NULL
    , RatePerDay                                NUMERIC(18,3)        NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_PaymentSchedule_BatchId ON tz.PaymentSchedule(BatchId, PaymentScheduleId);
GO
CREATE NONCLUSTERED INDEX IX_tz_PaymentSchedule_ApplicationId ON tz.PaymentSchedule(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PaymentSchedule TO tz_report;