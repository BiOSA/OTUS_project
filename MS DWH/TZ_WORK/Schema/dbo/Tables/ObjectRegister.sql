CREATE TABLE dbo.ObjectRegister
(
	  ObjectRegisterId        BIGINT        NOT NULL CONSTRAINT PK_dbo_ObjectRegister                     PRIMARY KEY
	, [Name]                  VARCHAR(50)   NOT NULL
	, StageTableName          sysname           NULL
	, DDSTableName            sysname           NULL
	, DataSourceId            BIGINT        NOT NULL CONSTRAINT FK_dbo_ObjectRegister_dbo_DataSource      FOREIGN KEY REFERENCES dbo.DataSource
	, CreatedOn               DATETIME      NOT NULL CONSTRAINT DF_dbo_ObjectRegister_CreatedOn           DEFAULT(GETDATE())
	, CreatedBy               sysname       NOT NULL CONSTRAINT DF_dbo_ObjectRegister_CreatedBy           DEFAULT(SUSER_SNAME())
	, ModifiedOn              DATETIME      NOT NULL CONSTRAINT DF_dbo_ObjectRegister_ModifiedOn          DEFAULT(GETDATE())
	, ModifiedBy              sysname       NOT NULL CONSTRAINT DF_dbo_ObjectRegister_ModifiedBy          DEFAULT(SUSER_SNAME())
	, IsEnabled               BIT           NOT NULL CONSTRAINT DF_dbo_ObjectRegister_IsEnabled           DEFAULT(1)
	, [Description]           VARCHAR(250)  NOT NULL
	, SourceTableName         sysname       NOT NULL
	, TableNamePrefix         sysname           NULL
	, DataChangeField         sysname           NULL
	, ExtendedQueryPre        NVARCHAR(MAX)     NULL  -- Предварительный код до выгрузки источника
	, STGAdditionalPredicate  NVARCHAR(MAX)     NULL  -- дополнительный код в WHERE
	, DataPrepareProcedure    sysname           NULL
	, DDSMainProcedure        sysname           NULL
	, DDSPostProcedure        sysname           NULL
	, STGPostProcedure        sysname           NULL
	, SaveDepth               SMALLINT          NULL CONSTRAINT DF_dbo_ObjectRegister_SaveDepth           DEFAULT(10)
	, HasDDSCodeTranslate     BIT           NOT NULL CONSTRAINT DF_dbo_ObjectRegister_HasDDSCodeTranslate DEFAULT(0)
	, HasSTGCodeTranslate     BIT           NOT NULL CONSTRAINT DF_dbo_ObjectRegister_HasSTGCodeTranslate DEFAULT(0)
	, CheckInBatch            BIT           NOT NULL CONSTRAINT DF_dbo_ObjectRegister_CheckInBatch        DEFAULT(0)
	,                                                CONSTRAINT UX_dbo_ObjectRegister_Name                UNIQUE(DataSourceId, [Name])
)
GO
GRANT SELECT ON dbo.ObjectRegister TO [1c_dwh];