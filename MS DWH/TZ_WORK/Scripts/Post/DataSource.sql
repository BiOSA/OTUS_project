DECLARE
      @RussianName VARCHAR(50)
    , @ShortPrefix VARCHAR(50);

SELECT
      @RussianName = RussianName
    , @ShortPrefix = ShortPrefix
FROM tz_dwh.Business;

MERGE dbo.DataSource AS trg
USING
(
              SELECT 1 AS DataSourceId,     'BpmonlineTZ' AS [Name],    'Фронт '+@RussianName     AS [Description], '[$(TZ_BPMONLINETZ_SRV)]' AS Prefix1, '[$(TZ_BPMONLINETZ_DB)]' AS Prefix2, @ShortPrefix  AS Code
    UNION ALL SELECT 2,                     'RISK_SPR',                 'Система принятия решений',                 '[$(RISK_SPR_SRV)]'                 , '[$(RISK_SPR_DB)]'                 , 'SPR' 
    UNION ALL SELECT 3,                     'BD_DWH',                   'Быстроденьги Витрины',                     '[$(DWH_MARTS_SRV)]'                , '[$(DWH_MARTS_DB)]'                , 'BD_MARTS'
    UNION ALL SELECT 4,                     '$(TZ_DWH_DB)',             'Отчетная система ' + @RussianName,         ''                                  , '[$(TZ_DWH_DB)]'                   , '$(TZ_DWH_DB)'
    UNION ALL SELECT 5,                     'RISK_STORAGE',             'Песочница рисков',                         '[$(DWH_RISK_STORAGE_DB)]'          , '[$(DWH_RISK_STORAGE_DB)]'         , 'risk_storage' 
) AS src (DataSourceId, [Name], [Description], Prefix1, Prefix2, Code)
ON src.DataSourceId = trg.DataSourceId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (DataSourceId, [Name], [Description], Prefix1, Prefix2, Code)
    VALUES (src.DataSourceId, src.[Name], src.[Description], src.Prefix1, src.Prefix2, src.Code)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.[Name]            = src.[Name]
        , trg.[Description]     = src.[Description]
        , trg.Prefix1           = src.Prefix1
        , trg.Prefix2           = src.Prefix2
        , trg.Code              = src.Code;