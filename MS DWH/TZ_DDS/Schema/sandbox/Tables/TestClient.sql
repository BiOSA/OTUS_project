CREATE TABLE sandbox.TestClient
(
	  Id                                        BIGINT           NOT NULL IDENTITY(1, 1) CONSTRAINT PK_sandbox_TestClient PRIMARY KEY
	, BatchId                                   BIGINT           NOT NULL

	, EffectiveDateFrom                         DATETIME             NULL
    , EffectiveDateTill                         DATETIME             NULL
	, DataSourceName                            VARCHAR(50)          NULL
	, IsNew                                     BIT                  NULL

	, ContactId                                 UNIQUEIDENTIFIER     NULL
	, Customer_RK                               BIGINT               NULL
)
GO
CREATE NONCLUSTERED INDEX IX_sandbox_TestClient_final_BatchId ON sandbox.TestClient(BatchId, EffectiveDateFrom) INCLUDE(Customer_RK);
GO
CREATE NONCLUSTERED INDEX IX_sandbox_TestClient_final_ApplicationId ON sandbox.TestClient(EffectiveDateFrom, EffectiveDateTill) INCLUDE (Customer_RK);
GO
GRANT DELETE, INSERT, UPDATE ON sandbox.TestClient TO tz_report;