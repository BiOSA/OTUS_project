CREATE TABLE [tz].[CashflowTypes](
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowTypesId]		UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowTypes_BatchId ON tz.CashflowTypes(BatchId, CashflowTypesId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowTypes TO tz_report;