CREATE TABLE log.Status
(
	Code			VARCHAR(30)  NOT NULL CONSTRAINT PK_log_Status PRIMARY KEY,
	[Description]	VARCHAR(100) NOT NULL,
	IsError			BIT          NOT NULL,
	DateAdded		DATETIME     NOT NULL CONSTRAINT DF_log_Status_DateAdded DEFAULT(GETDATE()),
	UserAdded		sysname      NOT NULL CONSTRAINT DF_log_Status_UserAdded DEFAULT(SUSER_NAME()),
	CONSTRAINT UX_log_Status UNIQUE (Code)
);
GO
EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = 'Статусы лога запуска отчетов',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Status'
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Код статуса',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Status',
    @level2type = N'Column',   @level2name = 'Code';
GO
EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = 'Краткое описание статуса',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Status',
    @level2type = N'Column',   @level2name = 'Description';
GO