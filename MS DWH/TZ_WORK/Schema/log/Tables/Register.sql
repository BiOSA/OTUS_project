CREATE TABLE [log].Register
(
	  Id				BIGINT        NOT NULL IDENTITY(1,1) CONSTRAINT PK_log_Register                    PRIMARY KEY
    , ParentId          BIGINT            NULL
	, DateIn			DATETIME      NOT NULL               CONSTRAINT DF_log_Register_DateAdded          DEFAULT(GETDATE())
	, CreatedBy		    sysname       NOT NULL               CONSTRAINT DF_log_Register_UserAdded          DEFAULT(SUSER_NAME())
	, StatusCode		VARCHAR(30)   NOT NULL               CONSTRAINT FK_log_Register_dbo_LogStatus      FOREIGN KEY REFERENCES log.Status(Code)                     ON DELETE CASCADE ON UPDATE CASCADE
    , BatchId           BIGINT            NULL               CONSTRAINT FK_log_Register_dbo_Batch          FOREIGN KEY REFERENCES dbo.Batch(BatchId)                   ON DELETE CASCADE ON UPDATE CASCADE
    , ObjectRegisterId  BIGINT            NULL               CONSTRAINT FK_log_Register_dbo_ObjectRegister FOREIGN KEY REFERENCES dbo.ObjectRegister(ObjectRegisterId) ON DELETE CASCADE ON UPDATE CASCADE
	, [MessageText]	    XML               NULL
	, Sender            sysname           NULL
    , Params            XML               NULL
);
GO
EXEC sp_addextendedproperty
    @name = N'MS_Description', @value = 'Лог',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register'
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Id записи',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Id';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Статус, ссылка на таблицу dbo.LogStatus',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'StatusCode';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Описание события или текст ошибки',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'MessageText';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Имя процедуры, вызвавшей вставку в лог',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Sender';
GO
EXEC sp_addextendedproperty 
    @name = N'MS_Description', @value = 'Параметры в свободном формате',
    @level0type = N'Schema',   @level0name = 'log',
    @level1type = N'Table',    @level1name = 'Register',
    @level2type = N'Column',   @level2name = 'Params';
GO