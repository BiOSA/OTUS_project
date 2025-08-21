CREATE TABLE tz.ApplicationFile
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationFileId                         UNIQUEIDENTIFIER     NULL
	, ApplicationId                             UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationFile_BatchId ON tz.ApplicationFile(BatchId, ApplicationFileId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationFile_ApplicationId ON tz.ApplicationFile(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationFile TO tz_report;