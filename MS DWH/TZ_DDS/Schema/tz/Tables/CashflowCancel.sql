CREATE TABLE tz.CashflowCancel
(
	  Id                       BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_CashflowCancel PRIMARY KEY
	, BatchId                  BIGINT           NOT NULL
	, EffectiveDateFrom        DATETIME             NULL
	, EffectiveDateTill        DATETIME             NULL
	, DataSourceName           VARCHAR(50)          NULL
	, IsNew                    BIT                  NULL
	
	, CashflowId               UNIQUEIDENTIFIER     NULL
	, Cashflow_RK              BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_BatchId           ON tz.CashflowCancel(BatchId) INCLUDE (Cashflow_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_EffectiveDateTill ON tz.CashflowCancel(EffectiveDateTill) INCLUDE (Cashflow_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCancel_Cashflow_RK        ON tz.CashflowCancel(Cashflow_RK);
GO
