CREATE TABLE tz.AccrualCancel
(
	  Id                       BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_AccrualCancel PRIMARY KEY
	, BatchId                  BIGINT           NOT NULL
	, EffectiveDateFrom        DATETIME             NULL
	, EffectiveDateTill        DATETIME             NULL
	, DataSourceName           VARCHAR(50)          NULL
	, IsNew                    BIT                  NULL
	
	, AccrualId                UNIQUEIDENTIFIER     NULL
	, Accrual_RK               BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_BatchId           ON tz.AccrualCancel(BatchId) INCLUDE (Accrual_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_EffectiveDateTill ON tz.AccrualCancel(EffectiveDateTill) INCLUDE (Accrual_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_AccrualCancel_Accrual_RK        ON tz.AccrualCancel(Accrual_RK);
GO
