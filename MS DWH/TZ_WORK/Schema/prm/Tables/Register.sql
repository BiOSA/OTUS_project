CREATE TABLE prm.Register
(
	Code			VARCHAR(50)  NOT NULL CONSTRAINT PK_dbo_Parameter PRIMARY KEY,
	[Description]	VARCHAR(500) NOT NULL,
	[Value]			SQL_VARIANT      NULL,
	DataType		sysname          NULL,
	DateAdded		DATETIME     NOT NULL CONSTRAINT DF_dbo_Parameter_DateAdded DEFAULT(GETDATE()),
	UserAdded		sysname      NOT NULL CONSTRAINT DF_dbo_Parameter_UserAdded DEFAULT(SUSER_NAME()),
	DateUpdated		DATETIME     NOT NULL,
	UserUpdated		sysname      NOT NULL
);
GO
EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = 'Параметры приложения',
    @level0type = N'Schema',   @level0name = 'prm',
    @level1type = N'Table',    @level1name = 'Register'
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Код параметра',
    @level0type = N'Schema',   @level0name = 'prm',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Code';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Краткое описание параметра',
    @level0type = N'Schema',   @level0name = 'prm',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Description';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Значение',
    @level0type = N'Schema',   @level0name = 'prm',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Value';
GO
