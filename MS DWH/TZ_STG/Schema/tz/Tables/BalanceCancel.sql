CREATE TABLE tz.BalanceCancel
(
	  BatchId                  BIGINT           NOT NULL
	, EffectiveDate            DATETIME2(7)         NULL
	, BalanceId                UNIQUEIDENTIFIER     NULL
	, Balance_RK               BIGINT               NULL
)
GO
CREATE    CLUSTERED INDEX IX_tz_BalanceCancel_BatchId            ON tz.BalanceCancel(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_Balance_RK         ON tz.BalanceCancel(Balance_RK)         WHERE Balance_RK IS NULL;
GO
