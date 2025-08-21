CREATE TABLE dbo.MartRegistry
(
	  MartRegistryId               BIGINT       NOT NULL CONSTRAINT PK_dbo_MartRegistry PRIMARY KEY
	, [Name]                       sysname      NOT NULL
	, [Description]                VARCHAR(250)     NULL
	, DataLoadProcedure            sysname          NULL	
	, DataPrepareProcedure         sysname          NULL	
	, LastPrepareBatchId           BIGINT           NULL
	, LastLoadDate                 DATETIME         NULL
	, IsChecked                    BIT          NOT NULL CONSTRAINT DF_dbo_MartRegistry DEFAULT(0)
	                                                     CONSTRAINT UX_dbo_MartRegisterName              UNIQUE([Name])
													     CONSTRAINT UX_dbo_MartRegisterDataLoadProcedure UNIQUE(DataLoadProcedure)
	
)
GO