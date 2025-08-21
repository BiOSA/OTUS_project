CREATE TABLE dbo.BatchDetail
(
	  BatchDetailId               BIGINT       NOT NULL IDENTITY(1, 1) CONSTRAINT PK_dbo_BatchDetail                    PRIMARY KEY
	, BatchId                     BIGINT       NOT NULL                CONSTRAINT FK_dbo_BatchDetail_dbo_Batch          FOREIGN KEY REFERENCES dbo.Batch(BatchId)                   ON DELETE CASCADE ON UPDATE CASCADE
	, ObjectRegisterId            BIGINT       NOT NULL                CONSTRAINT FK_dbo_BatchDetail_dbo_ObjectRegister FOREIGN KEY REFERENCES dbo.ObjectRegister(ObjectRegisterId) 
	, StatusId                    BIGINT       NOT NULL
	, [Message]                   VARCHAR(500)     NULL
	, StageRowAffectedCount       BIGINT           NULL
	, DDSRowAffectedCount         BIGINT           NULL
	, DDSChangedRowAffectedCount  BIGINT           NULL
	, DDSNewRowAffectedCount      BIGINT           NULL
	,                                                   CONSTRAINT UX_dbo_BatchDetail_BatchId_ObjectRegisterId UNIQUE(BatchId, ObjectRegisterId)
)
GO
GRANT UPDATE ON dbo.BatchDetail TO tz_report;