CREATE TABLE pbi.ApplicationByDate
(
	  BatchId       BIGINT           NOT NULL
	, Account_RK    BIGINT           NOT NULL CONSTRAINT PK_pbi_ApplicationByDate PRIMARY KEY(BatchId, Account_RK) WITH(IGNORE_DUP_KEY  = ON)
	, EffectiveDate DATETIME         NOT NULL
)
GO
