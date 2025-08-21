CREATE TABLE tz.AccrualStatus
(
	  Id                       BIGINT           NOT NULL IDENTITY(1,1) CONSTRAINT PK_tz_AccrualStatus PRIMARY KEY
	, BatchId                  BIGINT           NOT NULL
	, AccrualStatus_RK         BIGINT               NULL
	, EffectiveDateFrom        DATETIME             NULL
	, EffectiveDateTill        DATETIME             NULL
	, DataSourceName           VARCHAR(50)          NULL
	, IsNew                    BIT                  NULL
	, CreatedOn                DATETIME2(7)         NULL
	, [Name]                   NVARCHAR(500)        NULL
	, AccrualStatusId          UNIQUEIDENTIFIER     NULL
	, [Description]            NVARCHAR(500)        NULL
)
GO

