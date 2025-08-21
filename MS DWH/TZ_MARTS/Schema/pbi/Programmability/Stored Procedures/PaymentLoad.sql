CREATE PROCEDURE pbi.PaymentLoad
    @BatchId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET XACT_ABORT ON;
    SET NOCOUNT ON;
    
    DECLARE 
        @MAX_EFFECTIVE_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE);

    --TODO: мне не ясно, что именно и как считает проца, поэтому: надо в pbi.Payments дописывать измерненные данные. См. по аналогии pbi.DealLoad. Сначала она смотрит какие объекты за период в TZ_WORK.dbo.Batch по @BatchId изменились. (pbi.DealPrepare). ПОтом формирует срез. 
    --Сравнивает с последними данными в витрине и новые вносит, а измененным меняет дату актуальности. Ищи по тексту:DELETE FROM pbi.Deal WHERE BatchId = @BatchId;
    --Так же надо смотреть, чтобы Дата актуальности везде была на момент BatchId (...AND app.EffectiveDateFrom BETWEEN bd.EffectiveDateFrom AND bd.EffectiveDateTill...)

    --TODO: все Id поменять на RK (ProductTypeId->ProductType_RK)
    --TODO: названия полей поменять под наш формат
    --TODO: индексы в pbi.Payment
    DELETE FROM pbi.Payment --WHERE BatchId = @BatchId;
    INSERT INTO pbi.Payment(BatchId, ApplicationId, Account_RK, ContactId, Customer_RK, ProductTypeName, LoanAmt, IssueDate, IssueDateDT, date_to_court, flg_payment_after_court, date_delq_90, flg_payment_after_delq_90, date_delq_1, flg_payment_after_delq_1, PaymentDate, PaymentType, Amount, PaymentStatus, [DPD on payment_date], DebtAmt_Principal, DebtAmt_Other)
    SELECT DISTINCT
          @BatchId
        , a.ApplicationId                                                                                                    AS [ApplicationId]    
        , a.Account_RK
        , a.ContactId                                                                                                        AS [ContactId]        
        , a.Customer_RK
        , CASE 
            WHEN pt.Name = 'Краткосрочный заём' OR pt.ProductTypeId = 'B6428F70-7F4F-4172-8BE6-F28F497B19B5' THEN 'PDL'
            WHEN pt.Name = 'Долгосрочный заём'  OR pt.ProductTypeId = '93A179A9-EFA0-40ED-BC04-6C5E29A4DB1F' THEN 'IL'
          END                                                                                                                AS [ProductTypeName]
        , a.OfferSum                                                                                                         AS [LoanAmt]
        , a.PaymentDate                                                                                                      AS [IssueDate]
        , a.PaymentDateDT                                                                                                    AS [IssueDateDT]
        , aa.ChangeDate                                                                                                      AS [date_to_court]
        , IIF(aa.ChangeDate IS NOT NULL AND a.ReturnDate >= aa.ChangeDate, IIF(aa.ChangeDate IS NOT NULL, 1, 0), NULL)       AS [flg_payment_after_court]
        , IIF(DATEDIFF(DAY, a.CurrentReturnDateDT, a.ReturnDateDT) >= 90, DATEADD(DAY, 90, a.CurrentReturnDateDT), NULL)     AS [date_delq_90]               --дата выхода в просрочку 90+
        , IIF(DATEDIFF(DAY, a.CurrentReturnDateDT, a.ReturnDateDT) >= 90, IIF(a.ReturnDateDT IS NOT NULL, 1, 0), NULL)       AS [flg_payment_after_delq_90]  --флаг оплаты после даты выхода в просрочку 90+
        , IIF(DATEDIFF(DAY, a.CurrentReturnDateDT, a.ReturnDateDT) >= 1, DATEADD(DAY, 1, a.CurrentReturnDateDT), NULL)       AS [date_delq_1]                --дата выхода в просрочку 1+
        , IIF(DATEDIFF(DAY, a.CurrentReturnDateDT, a.ReturnDateDT) >= 1, IIF(a.ReturnDateDT IS NOT NULL, 1, 0), NULL)        AS [flg_payment_after_delq_1]   --флаг оплаты после даты выхода в просрочку 1+
        , ISNULL(cf.ActualDateDT, bl.ActualDateDT)                                                                           AS [PaymentDate]                     
        , ISNULL(cfct.Name, blct.Name)                                                                                       AS [PaymentType]
        , ISNULL(cf.Amount, bl.Amount)                                                                                       AS [Amount]
        , cfs.Name                                                                                                           AS [PaymentStatus]
        , DATEDIFF(DAY, a.FillingDateDT, a.PaymentDateDT)                                                                    AS [DPD on payment_date]
        , NULL                                                                                                               AS [DebtAmt_Principal]          --остаток основного долга на дату оплаты
        , NULL                                                                                                               AS [DebtAmt_Other]              --остаток прочего(%, пени и т.д.) долга на дату оплаты
    FROM        tz_dds.Application            a 
    INNER JOIN  tz_dds.Product                p    ON a.Product_RK            = p.Product_RK
    INNER JOIN  tz_dds.ProductType            pt   ON p.ProductType_RK        = pt.ProductType_RK
    LEFT  JOIN  tz_dds.ApplicationAudit       aa   ON a.Account_RK            = aa.Account_RK    
                                                  AND aa.StatusId_New         = 'FC4AA910-6EC3-430B-AE47-2287A8FB8277'--AND (aa.StatusId_New = 'FC4AA910-6EC3-430B-AE47-2287A8FB8277' OR aa.StatusId_Old = 'FC4AA910-6EC3-430B-AE47-2287A8FB8277' )--Передан в суд
    LEFT  JOIN  tz_dds.Cashflow               cf   ON a.Account_RK            = cf.Account_RK    
                                                  AND p.TypeId                = 'B6428F70-7F4F-4172-8BE6-F28F497B19B5' --PDL
    LEFT  JOIN  tz_dds.Balance                bl   ON a.Account_RK            = bl.Account_RK    
                                                  AND p.TypeId                = '93A179A9-EFA0-40ED-BC04-6C5E29A4DB1F' --IL
    LEFT  JOIN  tz_dds.CashflowStatus         cfs  ON cfs.CashflowStatus_RK   = cf.CashflowStatus_RK
    LEFT  JOIN  tz_dds.CashflowCategory       cfct ON cf.CashflowCategory_RK  = cfct.CashflowCategory_RK
    LEFT  JOIN  tz_dds.CashflowCategory       blct ON bl.OperationCategory_RK = blct.CashflowCategory_RK
    WHERE 1=1
        AND a.EffectiveDateTill = @MAX_EFFECTIVE_DATE;
    --a.IsNew = 1
END;