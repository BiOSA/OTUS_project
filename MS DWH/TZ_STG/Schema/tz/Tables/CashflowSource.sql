CREATE TABLE [tz].[CashflowSource](
	[BatchId]			BIGINT				NOT NULL,
	[EffectiveDate]		DATETIME    			NULL,
	[CashflowSourceId]	UNIQUEIDENTIFIER		NULL,
	[Name]				NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowSource_BatchId ON tz.CashflowSource(BatchId, CashflowSourceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowSource TO tz_report;