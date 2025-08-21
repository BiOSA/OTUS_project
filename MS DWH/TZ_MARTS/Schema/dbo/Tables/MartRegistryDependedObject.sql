CREATE TABLE dbo.MartRegistryDependedObject
(
	  MartRegistryDependedObjectId BIGINT        NOT NULL IDENTITY(1, 1) CONSTRAINT PK_dbo_MartRegistryDependedObject PRIMARY KEY
	, MartRegistryId               BIGINT        NOT NULL                CONSTRAINT FK_dbo_MartRegistryDependedObject_dbo_MartRegistry FOREIGN KEY REFERENCES dbo.MartRegistry ON UPDATE CASCADE ON DELETE CASCADE
	, DependedObjectId             BIGINT        NOT NULL				   --ссылка на TZ_WORK.dbo.ObjectRegister
	                                                                     CONSTRAINT UX_dbo_MartRegistryDependedObject UNIQUE(MartRegistryId, DependedObjectId)
	, KeyFieldName                 sysname         NULL
	, Query                        NVARCHAR(MAX)     NULL
)
GO