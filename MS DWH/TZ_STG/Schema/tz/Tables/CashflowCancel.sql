CREATE TABLE tz.CashflowCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, CashflowId               UNIQUEIDENTIFIER     NULL
	, Cashflow_RK              BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_CashflowCancel_BatchId            ON tz.CashflowCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_Accrual_RK         ON tz.CashflowCancel(Cashflow_RK)         WHERE Cashflow_RK IS NULL;
GO
