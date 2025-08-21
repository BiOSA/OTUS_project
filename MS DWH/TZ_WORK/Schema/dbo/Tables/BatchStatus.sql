CREATE TABLE dbo.BatchStatus
(
	  BatchStatusId BIGINT       NOT NULL CONSTRAINT PK_dbo_BatchStatus PRIMARY KEY
	, [Name]        VARCHAR(20)  NOT NULL
	, [Description] VARCHAR(200) NOT NULL
	,                                     CONSTRAINT UX_dbo_BatchStatus_Name UNIQUE([Name])
)
