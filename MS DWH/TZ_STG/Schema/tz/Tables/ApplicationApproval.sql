CREATE TABLE tz.ApplicationApproval
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ApplicationApprovalId                     UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , SetId                                     UNIQUEIDENTIFIER     NULL
    , ApprovalDate                              DATETIME             NULL
    , AuthorId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_tz_ApplicationApproval_BatchId ON tz.ApplicationApproval(BatchId, ApplicationApprovalId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_ApplicationId ON tz.ApplicationApproval(BatchId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON tz.ApplicationApproval TO tz_report;