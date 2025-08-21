CREATE TABLE tz.PersCabFile
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_PersCabFile PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , Customer_RK                               BIGINT               NULL
    , Account_RK                                BIGINT               NULL

    , EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
    , DataSourceName                            VARCHAR(50)          NULL
    , IsNew                                     BIT                  NULL

    , PersCabFileId                             UNIQUEIDENTIFIER     NULL
	, [Name]                                    NVARCHAR(500)        NULL
    , TypeId                                    UNIQUEIDENTIFIER     NULL
    , ContactId                                 UNIQUEIDENTIFIER     NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , PersCabFileTypeId                         UNIQUEIDENTIFIER     NULL
    , IsNotValid                                BIT                  NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_PersCabFile_BatchId ON tz.[PersCabFile](BatchId, EffectiveDateFrom) INCLUDE (Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_PersCabFile_BatchId_PersCabFileTypeId ON tz.PersCabFile (PersCabFileTypeId) INCLUDE (EffectiveDateFrom,EffectiveDateTill,Account_RK,IsNotValid);
GO
GRANT DELETE, INSERT, UPDATE ON tz.PersCabFile TO tz_report;