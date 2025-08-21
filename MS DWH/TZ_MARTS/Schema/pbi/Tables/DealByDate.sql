CREATE TABLE pbi.DealByDate
(
	  BatchId       BIGINT           NOT NULL
	, Account_RK    BIGINT           NOT NULL CONSTRAINT PK_pbi_DealByDate PRIMARY KEY(BatchId, Account_RK) WITH(IGNORE_DUP_KEY  = ON)
	, EffectiveDate DATETIME         NOT NULL
)
GO
