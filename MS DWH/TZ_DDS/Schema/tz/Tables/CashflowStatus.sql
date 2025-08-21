CREATE TABLE [tz].[CashflowStatus](
	  Id                    BIGINT					NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CashflowStatus PRIMARY KEY
	, BatchId               BIGINT					NOT NULL
	, CashflowStatus_RK     BIGINT					    NULL

    , EffectiveDateFrom     DATETIME				    NULL
    , EffectiveDateTill     DATETIME				    NULL
    , DataSourceName        VARCHAR(50)				    NULL
    , IsNew                 BIT						    NULL

	, [CashflowStatusId]	UNIQUEIDENTIFIER			NULL
	, [Name]				NVARCHAR(500)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowStatus_BatchId ON tz.[CashflowStatus](BatchId, CashflowStatusId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CashflowStatus TO tz_report;