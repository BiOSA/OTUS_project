CREATE TABLE [tz].[CashflowCategory]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME    			NULL,
	[CashflowCategoryId]	UNIQUEIDENTIFIER		NULL,
	[Name]					NVARCHAR(500)			NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCategory_BatchId ON tz.CashflowCategory(BatchId, CashflowCategoryId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.CashflowCategory TO tz_report;