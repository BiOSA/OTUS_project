CREATE TABLE dbo.BatchDetailStatus
(
	  BatchDetailStatusId BIGINT       NOT NULL CONSTRAINT PK_dbo_BatchDetailStatus PRIMARY KEY
	, [Name]              VARCHAR(20)  NOT NULL
	, [Description]       VARCHAR(200) NOT NULL
	,                                           CONSTRAINT UX_dbo_BatchDetailStatus_Name UNIQUE([Name])
)
