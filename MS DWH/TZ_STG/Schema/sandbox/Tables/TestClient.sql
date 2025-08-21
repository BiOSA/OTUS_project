CREATE TABLE sandbox.TestClient
(
	  BatchId                                   BIGINT           NOT NULL
    , EffectiveDate                             DATETIME         NOT NULL

	, ContactId                                 UNIQUEIDENTIFIER     NULL
)
GO
CREATE CLUSTERED INDEX IX_risk_sandbox_TestClient_final_BatchId ON sandbox.TestClient(BatchId);
GO
CREATE NONCLUSTERED INDEX IX_risk_sandbox_TestClient_final_ContactIdd ON sandbox.TestClient(ContactId) INCLUDE(EffectiveDate);
GO
GRANT DELETE, INSERT ON sandbox.TestClient TO tz_report;