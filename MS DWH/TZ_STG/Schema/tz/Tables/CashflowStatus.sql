CREATE TABLE [tz].[CashflowStatus](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowStatusId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
--CREATE NONCLUSTERED INDEX IX_tz_CashflowStatus_BatchId ON tz.CashflowStatus(BatchId, CashflowStatusId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowStatus TO tz_report;