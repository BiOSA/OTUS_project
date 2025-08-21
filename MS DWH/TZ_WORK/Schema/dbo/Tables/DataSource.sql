CREATE TABLE dbo.DataSource
(
	  DataSourceId         BIGINT       NOT NULL CONSTRAINT PK_dbo_DataSource            PRIMARY KEY
	, [Name]               VARCHAR(50)  NOT NULL
	, Code                 VARCHAR(50)      NULL
	, CreatedOn            DATETIME     NOT NULL CONSTRAINT DF_dbo_DataSource_CreatedOn  DEFAULT(GETDATE())
	, CreatedBy            sysname      NOT NULL CONSTRAINT DF_dbo_DataSource_CreatedBy  DEFAULT(SUSER_SNAME())
	, ModifiedOn           DATETIME     NOT NULL CONSTRAINT DF_dbo_DataSource_ModifiedOn DEFAULT(GETDATE())
	, ModifiedBy           sysname      NOT NULL CONSTRAINT DF_dbo_DataSource_ModifiedBy DEFAULT(SUSER_SNAME())
	, [Description]        VARCHAR(250) NOT NULL
	, Prefix1              sysname          NULL
	, Prefix2              sysname          NULL
	,                                            CONSTRAINT UX_dbo_DataSource_Name       UNIQUE([Name])
)
