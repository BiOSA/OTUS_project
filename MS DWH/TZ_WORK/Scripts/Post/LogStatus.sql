--статусы логирования
MERGE log.Status AS trg
USING
(
              SELECT 'BATCH_START' AS Code,            'Старт выгрузки' AS [Description],                            0 AS IsError
    
    UNION ALL SELECT 'STAGE_OBJECT_START',             'Старт выгрузки объекта Stage',                               0
    UNION ALL SELECT 'STAGE_CLEAR_PRIOR_START',        'Удаление данных c предыдущего запуска этапа Stage',          0
    UNION ALL SELECT 'STAGE_INSERT_START',             'Внесение записей этапа Stage',                               0
    UNION ALL SELECT 'STAGE_OBJECT_FINISH',            'Выгрука объекта на слой Stage завершена',                    0

    UNION ALL SELECT 'DDS_OBJECT_START',               'Старт выгрузки объекта DDS',                                 0
    UNION ALL SELECT 'DDS_CLEAR_PRIOR_START',          'Удаление данных c предыдущего запуска этапа DDS',            0
    UNION ALL SELECT 'DDS_SEARCH_CHANGED_START',       'Поиск измененных записей объекта для DDS',                   0
    UNION ALL SELECT 'DDS_INSERT_START',               'Внесение записей этапа DDS',                                 0
    UNION ALL SELECT 'DDS_POST_START',                 'Пост-обработка этапа DDS',                                   0
    UNION ALL SELECT 'DDS_OBJECT_FINISH',              'Выгрука объекта на слой DDS завершена',                      0    
    
    UNION ALL SELECT 'DDS_CONV_START',                 'Старт конвертации RK-ключа',                                 0
    UNION ALL SELECT 'DDS_CONV_ERROR',                 'Ошибка конвертации RK',                                      1
    UNION ALL SELECT 'DDS_CONV_FINISH',                'Старт конвертации RK-ключа',                                 0

    UNION ALL SELECT 'BATCH_FINISH',                   'Финиш выгрузки',                                             0
    
    --Обслуживание
    UNION ALL SELECT 'MNT_CLEAR_STG_START',            'Старт чистки устаревших пачек в слое STG',                   0
    UNION ALL SELECT 'MNT_CLEAR_STG_OBJ_START',        'Старт чистки пачки в слое STG',                              0
    UNION ALL SELECT 'MNT_CLEAR_STG_FINISH',           'Финиш чистки устаревших пачек в слое STG',                   0

    --Подготовка данных для витрины
    UNION ALL SELECT 'MART_PREPARE_START',             'Старт подготовки данных к построению витрины',               0
    UNION ALL SELECT 'MART_PREPARE_FINISH',            'Финиш подготовки данных к построению витрины',               0

    --Сама витрина
    UNION ALL SELECT 'MART_LOAD_START',                'Старт подготовки данных к построению витрины',               0
    UNION ALL SELECT 'MART_LOAD_FINISH',               'Финиш подготовки данных к построению витрины',               0

    UNION ALL SELECT 'ERROR',                          'Ошибка',                                                     1
) AS src (Code, [Description], IsError)
ON trg.Code = src.Code
WHEN NOT MATCHED THEN
    INSERT (Code, [Description], IsError)
    VALUES (src.Code, src.[Description], src.IsError);