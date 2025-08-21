CREATE TABLE tz.PersCabFile
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

    , PersCabFileId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PersCabFileTypeId                         UNIQUEIDENTIFIER     NULL
    , IsNotValid                                BIT                  NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_PersCabFile_BatchId ON tz.PersCabFile(BatchId, PersCabFileId);
GO
CREATE NONCLUSTERED INDEX IX_tz_PersCabFile_ApplicationId ON tz.PersCabFile(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.PersCabFile TO tz_report;