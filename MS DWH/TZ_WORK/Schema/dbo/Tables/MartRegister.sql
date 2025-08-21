CREATE TABLE dbo.MartRegister
(
	  MartRegisterId       BIGINT       NOT NULL CONSTRAINT PK_dbo_MartRegister                    PRIMARY KEY
	, CreatedOn            DATETIME     NOT NULL CONSTRAINT DF_dbo_MartRegister_CreatedOn          DEFAULT(GETDATE())
	, CreatedBy            sysname      NOT NULL CONSTRAINT DF_dbo_MartRegister_CreatedBy          DEFAULT(SUSER_SNAME())
	, ModifiedOn           DATETIME     NOT NULL CONSTRAINT DF_dbo_MartRegister_ModifiedOn         DEFAULT(GETDATE())
	, ModifiedBy           sysname      NOT NULL CONSTRAINT DF_dbo_MartRegister_ModifiedBy         DEFAULT(SUSER_SNAME())
	, [Name]               VARCHAR(50)  NOT NULL
	, TableName            sysname          NULL
	, [Description]        VARCHAR(250) NOT NULL
	, RefreshProcedureName sysname          NULL
	                                             CONSTRAINT UX_dbo_MartRegister                    UNIQUE([Name])
)
