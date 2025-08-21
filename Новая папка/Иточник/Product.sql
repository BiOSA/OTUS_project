CREATE TABLE [dbo].[Product]
(
	[Id] [uniqueidentifier] PRIMARY KEY,
	[CreatedOn] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[Name] [nvarchar](250) NOT NULL,
	[TypeId] [uniqueidentifier] FOREIGN KEY([TypeId]) REFERENCES [dbo].[ProductType] ([Id])
);