CREATE TABLE tz.AccrualStatus
(
	  BatchId         BIGINT           NOT NULL
	, EffectiveDate   DATETIME2(7)         NULL
	, CreatedOn       DATETIME2(7)         NULL
	, [Name]          NVARCHAR(500)        NULL
	, AccrualStatusId UNIQUEIDENTIFIER     NULL
	, [Description]   NVARCHAR(500)        NULL
)
GO

