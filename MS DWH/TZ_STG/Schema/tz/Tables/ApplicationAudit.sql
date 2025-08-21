CREATE TABLE [tz].[ApplicationAudit]
(
	[BatchId]				BIGINT				NOT NULL,
	[EffectiveDate]			DATETIME			NOT NULL,
	[ApplicationAuditId]	UNIQUEIDENTIFIER		NULL,
	[ApplicationId]			UNIQUEIDENTIFIER		NULL,
	[StatusId_New]			UNIQUEIDENTIFIER		NULL,
	[StatusId_Old]			UNIQUEIDENTIFIER		NULL,
	[ChangeDate]			DATETIME			    NULL
) 
GO
--CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit(BatchId, ApplicationAuditId) INCLUDE(EffectiveDate);
--GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_BatchId ON tz.ApplicationAudit (BatchId) INCLUDE (EffectiveDate,ApplicationAuditId,ApplicationId,StatusId_New,StatusId_Old,ChangeDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationAudit TO tz_report;
