MERGE dbo.BatchStatus AS trg
USING
(
              SELECT 1 AS BatchStatusId,    'NEW' AS [Name],    'Новая пачка'        AS [Description]
    UNION ALL SELECT 2,                     'PROCESS',          'Данные выгружаются'
    UNION ALL SELECT 3,                     'DONE' ,            'Готово'
    UNION ALL SELECT 4,                     'ERROR' ,           'Ошибка'
) AS src (BatchStatusId, [Name], [Description])
ON src.BatchStatusId = trg.BatchStatusId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (BatchStatusId, [Name], [Description])
    VALUES (src.BatchStatusId, src.[Name], src.[Description])
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.[Name]            = src.[Name]
        , trg.[Description]     = src.[Description];