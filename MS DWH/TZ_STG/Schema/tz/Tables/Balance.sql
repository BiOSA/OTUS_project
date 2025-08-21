CREATE TABLE [tz].[Balance](
	[BatchId]					BIGINT					NOT NULL,
	[CashflowId]				UNIQUEIDENTIFIER			NULL,
	[CreatedOnDT]				DATE						NULL,
	[Number]					INT							NULL,
	[PaymentScheduleId]			UNIQUEIDENTIFIER			NULL,
	[ContactId]					UNIQUEIDENTIFIER			NULL,
	[CurrentBalance]			NUMERIC(18, 2)				NULL,
	[OperationCategoryId]		UNIQUEIDENTIFIER			NULL,
	[ActualDate]				DATETIME    				NULL,
	[BalanceId]					UNIQUEIDENTIFIER			NULL,
	[EffectiveDate]				DATETIME     				NULL,
	[OperationTypeId]			UNIQUEIDENTIFIER			NULL,
	[ApplicationId]				UNIQUEIDENTIFIER			NULL,
	[ActualDateDT]				DATE						NULL,
	[CreatedOn]					DATETIME    				NULL,
	[Amount]					NUMERIC(18, 2)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_Balance_BatchId ON tz.Balance(BatchId, BalanceId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.Balance TO tz_report;
