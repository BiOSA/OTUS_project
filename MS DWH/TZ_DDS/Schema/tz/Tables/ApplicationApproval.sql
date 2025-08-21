CREATE TABLE tz.ApplicationApproval
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationApproval PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

    , ApplicationApproval_RK                    BIGINT               NULL
    , Account_RK                                BIGINT               NULL
    , ApprovalStatus_RK                         BIGINT               NULL
    , SetCustomer_RK                            BIGINT               NULL
    
	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, ApplicationApprovalId                     UNIQUEIDENTIFIER     NULL
    , CreatedOn                                 DATETIME             NULL
    , ApplicationId                             UNIQUEIDENTIFIER     NULL
    , StatusId                                  UNIQUEIDENTIFIER     NULL
    , SetId                                     UNIQUEIDENTIFIER     NULL
    , ApprovalDate                              DATETIME             NULL
    , AuthorId                                  UNIQUEIDENTIFIER     NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_BatchId ON tz.ApplicationApproval(BatchId, EffectiveDateFrom) INCLUDE(Account_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_Key ON tz.ApplicationApproval(StatusId, Account_RK, EffectiveDateFrom, EffectiveDateTill) INCLUDE (ApprovalDate, SetId);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationApproval_Period ON tz.ApplicationApproval(EffectiveDateFrom, EffectiveDateTill) INCLUDE (CreatedOn, Account_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationApproval TO tz_report;