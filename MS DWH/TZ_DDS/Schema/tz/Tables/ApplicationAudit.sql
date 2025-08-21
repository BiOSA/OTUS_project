CREATE TABLE tz.ApplicationAudit
(
      Id                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_tz_ApplicationAudit PRIMARY KEY
    , BatchId                   BIGINT           NOT NULL
    , Account_RK                BIGINT               NULL 
    , Status_New_RK             BIGINT               NULL 
    , Status_Old_RK             BIGINT               NULL 

    , EffectiveDateFrom         DATETIME             NULL
    , EffectiveDateTill         DATETIME             NULL
    , DataSourceName            VARCHAR(50)          NULL
    , IsNew                     BIT                  NULL

    , ApplicationAuditId        UNIQUEIDENTIFIER     NULL 
    , ApplicationId             UNIQUEIDENTIFIER     NULL 
    , StatusId_New              UNIQUEIDENTIFIER     NULL 
    , StatusId_Old              UNIQUEIDENTIFIER     NULL
    , ChangeDate                DATETIME             NULL
)
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_Account_RK               ON tz.ApplicationAudit(Account_RK) INCLUDE (Status_New_RK, ChangeDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_Status_New_RK            ON tz.ApplicationAudit (Status_New_RK) INCLUDE (Account_RK, ChangeDate);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_Status_EffectiveDateTill ON tz.ApplicationAudit (EffectiveDateTill) INCLUDE (Account_RK, ChangeDate, StatusId_Old, Status_New_RK);
GO
CREATE NONCLUSTERED INDEX IX_tz_ApplicationAudit_Status_Period            ON tz.ApplicationAudit (EffectiveDateFrom, EffectiveDateTill) INCLUDE (Account_RK, ChangeDate, Status_New_RK);
GO
GRANT DELETE, INSERT, UPDATE ON tz.ApplicationAudit TO tz_report;