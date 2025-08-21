CREATE TABLE [dbo].[ContactSourceGroup]
(
	[Id] [uniqueidentifier] PRIMARY KEY,
	[CreatedOn] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[Name] [nvarchar](250) NOT NULL
);