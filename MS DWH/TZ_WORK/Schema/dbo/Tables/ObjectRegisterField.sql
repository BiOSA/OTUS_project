CREATE TABLE dbo.ObjectRegisterField
(
	  ObjectRegisterFieldId BIGINT        NOT NULL IDENTITY(1, 1) CONSTRAINT PK_dbo_ObjectRegisterField                    PRIMARY KEY
	, ObjectRegisterId      BIGINT        NOT NULL                CONSTRAINT FK_dbo_ObjectRegisterField_dbo_ObjectRegister FOREIGN KEY REFERENCES dbo.ObjectRegister ON UPDATE CASCADE ON DELETE CASCADE
	, CreatedOn             DATETIME      NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_CreatedOn          DEFAULT(GETDATE())
	, CreatedBy             sysname       NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_CreatedBy          DEFAULT(SUSER_SNAME())
	, ModifiedOn            DATETIME      NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_ModifiedOn         DEFAULT(GETDATE())
	, ModifiedBy            sysname       NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_ModifiedBy         DEFAULT(SUSER_SNAME())
	, TargetFieldName       sysname       NOT NULL 
	, SourceQuery           NVARCHAR(MAX)     NULL
	, IsEnabled             BIT           NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_IsEnabled          DEFAULT(1)
	, IsStageProcessed      BIT           NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_IsStageProcessed   DEFAULT(1)
	, IsChangesTracked      BIT           NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_IsChangesTracked   DEFAULT(0)
	, IsKeyField            BIT           NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_IsKeyField         DEFAULT(0)
	, IsStage2DDSIgnored    BIT           NOT NULL                CONSTRAINT DF_dbo_ObjectRegisterField_IsStage2DDSIgnored DEFAULT(0)
)
GO