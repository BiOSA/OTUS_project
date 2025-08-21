MERGE dbo.MartRegistryDependedObject AS trg
USING
(
              SELECT 1 AS MartRegistryId,   1  AS DependedObjectId
    UNION ALL SELECT 1,                     41                     -- SandboxInputLog 
    UNION ALL SELECT 1,                     15                     -- Verification
    UNION ALL SELECT 1,                     34                     -- ContactAddress
    UNION ALL SELECT 1,                     24                     -- Application_final
    UNION ALL SELECT 1,                     25                     -- BD_MaxContactDeals    --как палить, нет ApplicationId?
    UNION ALL SELECT 1,                     27                     -- PaymentSchedule
    UNION ALL SELECT 1,                     14                     -- VwCheckBankScoringValue
    UNION ALL SELECT 1,                     29                     -- ContactIntegration
    UNION ALL SELECT 1,                     32                     -- ApplicationApproval
    UNION ALL SELECT 1,                     6                      -- Contact
    UNION ALL SELECT 1,                     30                     -- AgredatorServiceLog
    UNION ALL SELECT 1,                     31                     -- AgredatorRequestLog
    UNION ALL SELECT 1,                     37                     -- ApplicationIntegration
    UNION ALL SELECT 1,                     42                     -- PersCabFile
    UNION ALL SELECT 1,                     40                     -- CalculatorSetup
) AS src (MartRegistryId, DependedObjectId)
ON      src.MartRegistryId   = trg.MartRegistryId
    AND src.DependedObjectId = trg.DependedObjectId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (MartRegistryId, DependedObjectId)
    VALUES (src.MartRegistryId, src.DependedObjectId)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE;
--WHEN MATCHED THEN
--    UPDATE SET
--          trg.[Name]               = src.[Name]
--        , trg.DataPrepareProcedure = src.DataPrepareProcedure;