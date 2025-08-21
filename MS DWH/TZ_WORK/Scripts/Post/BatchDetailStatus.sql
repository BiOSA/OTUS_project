MERGE dbo.BatchDetailStatus AS trg
USING
(
              SELECT 1 AS BatchDetailStatusId,  'PROCESS_STAGE' AS [Name], 'Этап STAGE'        AS [Description]
    UNION ALL SELECT 2,                         'PROCESS_DDS',             'Этап DDS'
    UNION ALL SELECT 3,                         'DONE',                    'Готово'
    UNION ALL SELECT 4,                         'ERROR',                   'Ошибка'
) AS src (BatchDetailStatusId, [Name], [Description])
ON src.BatchDetailStatusId = trg.BatchDetailStatusId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (BatchDetailStatusId, [Name], [Description])
    VALUES (src.BatchDetailStatusId, src.[Name], src.[Description])
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.[Name]            = src.[Name]
        , trg.[Description]     = src.[Description];