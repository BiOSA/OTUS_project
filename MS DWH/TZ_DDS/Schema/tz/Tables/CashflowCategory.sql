CREATE TABLE tz.CashflowCategory
(
	  Id                            BIGINT					NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CashflowCategory PRIMARY KEY
	, BatchId                       BIGINT					NOT NULL
	, CashflowCategory_RK           BIGINT					    NULL

    , EffectiveDateFrom             DATETIME				    NULL
    , EffectiveDateTill             DATETIME				    NULL
    , DataSourceName                VARCHAR(50)				    NULL
    , IsNew                         BIT						    NULL

	, [CashflowCategoryId]			UNIQUEIDENTIFIER			NULL
	, [Name]						NVARCHAR(500)				NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowCategory_BatchId ON tz.[CashflowCategory](BatchId, CashflowCategoryId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CashflowCategory TO tz_report;