MERGE dbo.MartRegister AS trg
USING
(
          SELECT 1 AS MartRegisterId,   'pbi.Application' AS [Name], NULL AS TableName, 'PBI Заявки' AS [Description], NULL AS RefreshProcedureName
    UNION SELECT 2,                     'pbi.Deals',                 NULL,              'PBI Займы',                   NULL
    UNION SELECT 3,                     'pbi.Payments',              NULL,              'PBI Оплаты',                  NULL
) AS src (MartRegisterId, [Name], TableName, [Description], RefreshProcedureName)
ON src.MartRegisterId = trg.MartRegisterId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (MartRegisterId, [Name], TableName, [Description], RefreshProcedureName)
    VALUES (src.MartRegisterId, src.[Name], src.TableName, src.[Description], src.RefreshProcedureName)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.[Name]               = src.[Name]
        , trg.TableName            = src.TableName
        , trg.[Description]        = src.[Description]
        , trg.RefreshProcedureName = src.RefreshProcedureName;