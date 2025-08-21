MERGE dbo.MartRegistry AS trg
USING
(
          SELECT 1 AS MartRegistryId,   'pbi.Application' AS [Name], 'PBI Заявки' AS [Description],               'pbi.ApplicationLoad'        AS DataLoadProcedure, 'pbi.ApplicationPrepare' AS DatePrepareProcedure, 1 AS IsChecked
    UNION SELECT 2,                     'pbi.Deal',                  'PBI Займы',                                 'pbi.DealLoad',                                    'pbi.DealPrepare',                                1
    UNION SELECT 3,                     'pbi.Payment',               'PBI Оплаты',                                'pbi.PaymentLoad',                                 NULL,                                             0
    UNION SELECT 4,                     'pbi.Identification',        'Идентификации клиентов',                    'pbi.IdentificationLoad',                          NULL,                                             0
    UNION SELECT 5,                     'pbi.IdentificationSPR',     'Идентификации клиентов через СПР',          'pbi.IdentificationSPRLoad',                       NULL,                                             0
    UNION SELECT 6,                     'mart.ReportFund',           'Аналог report_fund из sandbox',             'mart.ReportFundLoad',                             NULL,                                             0
    UNION SELECT 7,                     'mart.AccrualGross',         'Начисленные гросс-проценты',                'mart.AccrualGrossLoad',                           NULL,                                             0
    UNION SELECT 8,                     'mart.FraudulentCard',       'Карты мошенников',                          'mart.FraudulentCardLoad',                         NULL,                                             0
    UNION SELECT 9,                     'mart.ContactWithDeal',      'Клиенты, по которым была хоть одна выдача', 'mart.ContactWithDealLoad',                        NULL,                                             0
    UNION SELECT 10,                    'mart.Portfolio1C',          'Выгрузка портфеля по месяцам',              'mart.Portfolio1CLoad',                            NULL,                                             0
) AS src (MartRegistryId, [Name], [Description], DataLoadProcedure, DataPrepareProcedure, IsChecked)
ON src.MartRegistryId = trg.MartRegistryId
WHEN NOT MATCHED BY TARGET THEN
    INSERT (MartRegistryId, [Name], [Description], DataLoadProcedure, DataPrepareProcedure, IsChecked)
    VALUES (src.MartRegistryId, src.[Name], src.[Description], src.DataLoadProcedure, src.DataPrepareProcedure, src.IsChecked)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN MATCHED THEN
    UPDATE SET
          trg.[Name]               = src.[Name]
        , trg.[Description]        = src.[Description]
        , trg.DataPrepareProcedure = src.DataPrepareProcedure        
        , trg.DataLoadProcedure    = src.DataLoadProcedure
        , trg.IsChecked            = src.IsChecked;