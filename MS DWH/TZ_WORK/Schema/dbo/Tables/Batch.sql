CREATE TABLE dbo.Batch
(
	  BatchId              BIGINT       NOT NULL IDENTITY(1, 1) CONSTRAINT PK_dbo_Batch            PRIMARY KEY
	, CreatedOn            DATETIME     NOT NULL                CONSTRAINT DF_dbo_Batch_CreatedOn  DEFAULT(GETDATE())
	, CreatedBy            sysname      NOT NULL                CONSTRAINT DF_dbo_Batch_CreatedBy  DEFAULT(SUSER_SNAME())
	, ModifiedOn           DATETIME     NOT NULL                CONSTRAINT DF_dbo_Batch_ModifiedOn DEFAULT(GETDATE())
	, ModifiedBy           sysname      NOT NULL                CONSTRAINT DF_dbo_Batch_ModifiedBy DEFAULT(SUSER_SNAME())
	, DateFrom             DATE         NOT NULL
	, DateTill             DATE         NOT NULL
	, StatusId             BIGINT       NOT NULL
	, [Message]            VARCHAR(500)     NULL
	,                                                           CONSTRAINT UX_dbo_Batch_Period     UNIQUE(DateFrom, DateTill) WITH(IGNORE_DUP_KEY = ON)
)
GO
CREATE NONCLUSTERED INDEX IX_dbo_Batch ON dbo.Batch(DateFrom, DateTill);