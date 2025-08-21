CREATE TABLE tz.BalanceCancel
(
	  Id                       BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_BalanceCancel PRIMARY KEY
	, BatchId                  BIGINT           NOT NULL
	, EffectiveDateFrom        DATETIME             NULL
	, EffectiveDateTill        DATETIME             NULL
	, DataSourceName           VARCHAR(50)          NULL
	, IsNew                    BIT                  NULL
	
	, BalanceId                UNIQUEIDENTIFIER     NULL
	, Balance_RK               BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_BatchId           ON tz.BalanceCancel(BatchId) INCLUDE (Balance_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_EffectiveDateTill ON tz.BalanceCancel(EffectiveDateTill) INCLUDE (Balance_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_BalanceCancel_Balance_RK        ON tz.BalanceCancel(Balance_RK);
GO
