CREATE TABLE tz.CashflowTypes
(
	  Id                    BIGINT					NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_CashflowTypes PRIMARY KEY
	, BatchId               BIGINT					NOT NULL
	, CashflowType_RK       BIGINT					    NULL

    , EffectiveDateFrom     DATETIME				    NULL
    , EffectiveDateTill     DATETIME				    NULL
    , DataSourceName        VARCHAR(50)				    NULL
    , IsNew                 BIT						    NULL

	, CashflowTypesId 		UNIQUEIDENTIFIER			NULL
	, [Name]				NVARCHAR(500)				NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_CashflowTypes_BatchId ON tz.[CashflowTypes](BatchId, CashflowTypesId) INCLUDE (EffectiveDateTill);
GO
GRANT DELETE, INSERT, UPDATE ON tz.CashflowTypes TO tz_report;