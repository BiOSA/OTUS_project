CREATE TABLE [tz].[CashflowSource](
	  Id                            BIGINT					NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CashflowSource PRIMARY KEY
	, BatchId                       BIGINT					NOT NULL
	, CashflowSource_RK             BIGINT					    NULL

    , EffectiveDateFrom             DATETIME				    NULL
    , EffectiveDateTill             DATETIME				    NULL
    , DataSourceName                VARCHAR(50)				    NULL
    , IsNew                         BIT						    NULL

	, [CashflowSourceId]	        UNIQUEIDENTIFIER			NULL
	, [Name]				        NVARCHAR(500)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowSource_BatchId ON tz.[CashflowSource](BatchId, CashflowSourceId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CashflowSource TO tz_report;