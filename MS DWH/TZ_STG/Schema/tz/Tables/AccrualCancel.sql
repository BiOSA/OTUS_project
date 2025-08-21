CREATE TABLE tz.AccrualCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, Accrual_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_AccrualCancel_BatchId            ON tz.AccrualCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_Accrual_RK         ON tz.AccrualCancel(Accrual_RK)         WHERE Accrual_RK IS NULL;
GO
