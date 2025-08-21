-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-01-19
-- Description:   Выгрузка данных для витрины pbi.Deal
-- =============================================
CREATE PROCEDURE pbi.DealLoad
    @BatchId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET XACT_ABORT ON;
    SET NOCOUNT ON;

    DECLARE 
          @MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
        , @MAX_EFFECTIVE_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE)
        , @MartRegistryId             BIGINT        = (SELECT TOP 1 MartRegistryId FROM dbo.MartRegistry WHERE OBJECT_ID(DataLoadProcedure) = OBJECT_ID(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)));

    IF NOT EXISTS(SELECT TOP 1 1 FROM pbi.DealByDate WHERE BatchId = @BatchId)
        EXEC pbi.DealPrepare
             @BatchId = @BatchId;

    DROP TABLE IF EXISTS #tz_Deal_prepare;
    SELECT TOP 0 * INTO #tz_Deal_prepare FROM pbi.Deal;
    CREATE CLUSTERED    INDEX PK_#tz_Deal_prepare                   ON #tz_Deal_prepare(ACCOUNT_RK);
    CREATE NONCLUSTERED INDEX tz_#tz_Deal_prepare_IssueDatetimeDT   ON #tz_Deal_prepare(IssueDatetimeDT);
    CREATE NONCLUSTERED INDEX tz_#tz_Deal_prepare_Id                ON #tz_Deal_prepare(Id) INCLUDE (EffectiveDateFrom);

    INSERT INTO #tz_Deal_prepare
    (
	      BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, ChannelIssue, NumLoans, NumLoansPdl, NumLoansIL, IssueDatetime, IssueDatetimeDT, IssueWeek, ApproveAmt, LoanAmt, VASAmt, Product
	    , ProductDetail, IsRefinanced, InterestRate, TermContract, TermFactClose, TermFact, ExcepectedPaymentContractDate, ExcepectedPaymentDate, DelqDays, DelqDate1, DelqDate17, DelqDate20, DelqDate90, CollectionDate, LoanStatus, CloseDate, SoldDate, CourtDate, DealCourtDecisionDate, AnnulmentDate, WriteOffDate, IsClosedToRefinance, RequestProduct
	    , RequestProductDetail, RequestTerm, RequestAmt, ProlongationAmt, Prolongation1Start, Prolongation1End, Prolongation2Start, Prolongation2End, Prolongation3Start, Prolongation3End, Prolongation4Start, Prolongation4End, Prolongation5Start, Prolongation5End, PrincipalPaid, InteresPaid, VASPaid, OtherPaid
	    --служебные поля
	    , FIO, PassportSeries, PassportNumber, BirthDate, BatchIdSource, CreatedDatetime, FinancingInstrument_RK, IssuanceType_RK
    )
    SELECT
          @BatchId                                                                            AS BatchId
	    , CAST(CONVERT(CHAR(8), CAST(s.EffectiveDate AS DATE), 112) AS BIGINT)                AS DateKey
        , CAST(s.EffectiveDate AS DATE)                                                       AS DateAlternateKey
        , s.EffectiveDate                                                                     AS EffectiveDateFrom                                                 -- брать в зависимости от изменившегося факта, не только Application
        , @MAX_EFFECTIVE_DATE                                                                 AS EffectiveDateTill
	    , app.ApplicationId
        , app.Account_RK
        , app.ContactId
        , app.Customer_RK
	    , 0                                                                                   AS HasBD
        , app.LandingSource
        , app.MarketingSource
        , app.MarketingWeb
        , NULL                                                                                AS ClientType
        , NULL                                                                                AS ClientTypeDetail
        , NULL                                                                                AS ChannelIssue
        , NULL                                                                                AS NumLoans
        , NULL                                                                                AS NumLoansPdl
        , NULL                                                                                AS NumLoansIL
        , app.PaymentDate                                                                     AS IssueDatetime
        , app.PaymentDateDT                                                                   AS IssueDatetimeDT
        , NULL                                                                                AS IssueWeek
        , app.OfferSum                                                                        AS ApproveAmt
        , app.OfferSum                                                                        AS LoanAmt
        , NULL                                                                                AS VASAmt
        , NULL                                                                                AS Product
        , NULL                                                                                AS ProductDetail
        , NULL                                                                                AS IsRefinanced
        , NULL                                                                                AS InterestRate
        , NULL                                                                                AS TermContract
        , NULL                                                                                AS TermFactClose
        , NULL                                                                                AS TermFact
        , DATEADD(DAY, app.OfferPeriod, app.PaymentDateDT)                                    AS ExcepectedPaymentContractDate
        , NULL                                                                                AS ExcepectedPaymentDate
        , NULL                                                                                AS DelqDays
        , NULL                                                                                AS DelqDate1
        , NULL                                                                                AS DelqDate17
        , NULL                                                                                AS DelqDate20
        , NULL                                                                                AS DelqDate90
        , NULL                                                                                AS CollectionDate
        , NULL                                                                                AS LoanStatus
        , NULL                                                                                AS CloseDate
        , NULL                                                                                AS SoldDate
        , NULL                                                                                AS CourtDate
        , NULL                                                                                AS DealCourtDecisionDate
        , NULL                                                                                AS AnnulmentDate
        , NULL                                                                                AS WriteOffDate
        , NULL                                                                                AS IsClosedToRefinance
        , IIF(app.RequestedOfferSum>30, 'IL', 'PDL')                                          AS RequestProduct
        , NULL                                                                                AS RequestProductDetail
        , app.RequestedOfferPeriod                                                            AS RequestTerm
        , app.RequestedOfferSum                                                               AS RequestAmt
        , NULL                                                                                AS ProlongationAmt
        , NULL                                                                                AS Prolongation1Start
        , NULL                                                                                AS Prolongation1End
        , NULL                                                                                AS Prolongation2Start
        , NULL                                                                                AS Prolongation2End
        , NULL                                                                                AS Prolongation3Start
        , NULL                                                                                AS Prolongation3End
        , NULL                                                                                AS Prolongation4Start
        , NULL                                                                                AS Prolongation4End
        , NULL                                                                                AS Prolongation5Start
        , NULL                                                                                AS Prolongation5End
        , NULL                                                                                AS PrincipalPaid
        , NULL                                                                                AS InteresPaid
        , NULL                                                                                AS VASPaid
        , NULL                                                                                AS OtherPaid
	    --служебные поля
	    , REPLACE(REPLACE(REPLACE(UPPER(app.ContactFamilyName+app.ContactFirstName+app.ContactFatherName), ' ', ''), '-', ''), 'Ё', 'Е') 
                                                                                              AS FIO
	    , app.ContactDocumentSeries                                                           AS PassportSeries
        , app.ContactDocumentNumber                                                           AS PassportNumber
	    , app.ContactBirthDate                                                                AS BirthDate
	    , app.BatchId                                                                         AS BatchIdSource
	    , app.CreatedOn                                                                       AS CreatedDatetime
	    , app.FinancingInstrument_RK                                                          AS FinancingInstrument_RK
	    , app.IssuanceType_RK                                                                 AS IssuanceType_RK
    FROM (
        --надо взять все займы, которые поучаствовали в изменениях
        --но так как изменения бывают в смежных объектах по займам в Application их может не быть с заданным BatchId
        --поэтому надо взять последнюю версию из Application и потом уже дополнять выборку смежными данными
	    --declare @BatchId int=110,@MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
        SELECT app.Id, prp.Account_RK, prp.EffectiveDate, ROW_NUMBER() OVER (PARTITION BY prp.Account_RK ORDER BY b.DateFrom DESC) AS rn
        FROM       pbi.DealByDate          prp
	    INNER JOIN tz_dds.[Application]    app ON prp.Account_RK = app.Account_RK
	    INNER JOIN tz_work.dbo_Batch       b   ON b.BatchId      = app.BatchId
	    WHERE   prp.BatchId       =  @BatchId
	        AND app.FillingDateDT >= @MARTS_INITIAL_DATE
    ) s
    INNER JOIN tz_dds.[Application] app ON app.Id = s.Id
                                          AND s.rn   = 1;

    UPDATE app SET
        HasBD = 1
    FROM #tz_Deal_prepare                app
    INNER JOIN tz_dds.BD_MaxContactDeals bd  ON bd.FIO                = app.FIO COLLATE DATABASE_DEFAULT
                                            AND ABS(DATEDIFF(DAY, TRY_CAST(app.BirthDate AS DATETIME), TRY_CAST(bd.BirthDate AS DATETIME)))<=1
                                            AND app.EffectiveDateFrom BETWEEN bd.EffectiveDateFrom AND bd.EffectiveDateTill
    WHERE   app.HasBD   = 0
        AND bd.NumLoans > 0

    --есть ли клиент в Быстроденьгах. По паспорту
    UPDATE app SET
        HasBD = 1
    FROM       #tz_Deal_prepare          app
    INNER JOIN tz_dds.BD_MaxContactDeals bd  ON bd.PassportSeries     = app.PassportSeries COLLATE DATABASE_DEFAULT
                                            AND bd.PassportNumber     = app.PassportNumber COLLATE DATABASE_DEFAULT
                                            AND app.EffectiveDateFrom BETWEEN bd.EffectiveDateFrom AND bd.EffectiveDateTill
    WHERE   app.HasBD   = 0
        AND bd.NumLoans > 0;

    UPDATE ap SET
          Product                        = CASE 
                                               WHEN pt.ProductType_RK = 3 THEN 'PDL'
                                               WHEN pt.ProductType_RK = 2 THEN 'IL'
                                               ELSE pt.[Name]
                                           END
        , ProductDetail                  = p.[Name]
        , InterestRate                   = IIF(--PDL без льготного периода (INST поставится ниже)
                                                     p.ProductType_RK                = 3
                                                 AND p.StartRate                     > 1 
                                                 AND app.FullOfferSum - app.OfferSum = 0
                                               , 0            
                                               , p.FullCost  
                                           )
        , TermContract                   = DATEDIFF(DAY, app.PaymentDateDT, 
	                                           CASE p.PeriodTypeId
                                                   WHEN '40250AE9-0770-4CA9-939D-FDB3A3C867BD' THEN DATEADD(DAY,   app.OfferPeriod, app.PaymentDateDT)--Дни
                                                   WHEN 'C0259C89-D87E-404C-84DD-30282D0C7ABF' THEN DATEADD(WEEK,  app.OfferPeriod, app.PaymentDateDT)--Недели
                                                   WHEN '3A09D08D-3F09-44C1-8533-5E6A16429C4B' THEN DATEADD(MONTH, app.OfferPeriod, app.PaymentDateDT)--Месяцы
                                               END
									       )
        , TermFactClose                  = DATEDIFF(DAY, app.PaymentDateDT, app.ReturnDateDT)
	    , TermFact                       = IIF(
	                                             app.ReturnDateDT IS NOT NULL
										       , DATEDIFF(DAY, app.PaymentDateDT, app.ReturnDateDT)
										       , DATEDIFF(DAY, app.PaymentDateDT, CAST(ap.EffectiveDateFrom AS DATE))
                                           )
        , LoanStatus                     = aps.[Name]--прописанный в займе
	    , CloseDate                      = app.ReturnDate
	    , SoldDate                       = app.SaleDate
    FROM      #tz_Deal_prepare                 ap
    INNER JOIN tz_dds.[Application]            app  ON app.Account_RK           = ap.ACCOUNT_RK
                                                   AND app.BatchId              = ap.BatchIdSource
    LEFT  JOIN tz_dds.Product                  p    ON p.Product_RK             = app.Product_RK
                                                   --AND ap.EffectiveDateFrom     BETWEEN p.EffectiveDateFrom  AND  p.EffectiveDateTill
    LEFT  JOIN tz_dds.ProductType              pt   ON pt.ProductType_RK        = p.ProductType_RK
                                                   --AND ap.EffectiveDateFrom     BETWEEN pt.EffectiveDateFrom AND pt.EffectiveDateTill
    INNER JOIN tz_dds.ApplicationStatus        aps  ON aps.ApplicationStatus_RK = app.ApplicationStatus_RK
											       --AND ap.EffectiveDateFrom     BETWEEN aps.EffectiveDateFrom AND aps.EffectiveDateTill;

    --Статус займа для загружаемых задним числом по истории статусов, а не последнему 
    --переписать последний как более актуальный на последнюю дату в периоде
    UPDATE ap SET 
       ap.LoanStatus = aa.Name
    FROM #tz_Deal_prepare ap
    INNER JOIN (
	    SELECT ap.Id, aps.Name, ROW_NUMBER() OVER (PARTITION BY aa.ACCOUNT_RK ORDER BY aa.ChangeDate DESC) AS rn
	    FROM      #tz_Deal_prepare                 ap
	    INNER JOIN tz_dds.ApplicationAudit      aa ON aa.ACCOUNT_RK            = ap.ACCOUNT_RK
												  AND ap.EffectiveDateFrom     BETWEEN ap.EffectiveDateFrom AND ap.EffectiveDateTill
	    INNER JOIN tz_dds.ApplicationStatus    aps ON aps.ApplicationStatus_RK = aa.Status_New_RK
												  AND ap.EffectiveDateFrom     BETWEEN aps.EffectiveDateFrom AND aps.EffectiveDateTill
    ) aa ON aa.Id = ap.Id
        AND aa.rn = 1;

    UPDATE app SET 
          ClientType       = IIF(ISNULL(app3.LoanAmount, 0) = 0, 'Новый', 'Повторный')
        , ClientTypeDetail = CASE
                                 WHEN app.Product = 'PDL' THEN IIF(ISNULL(app3.LoanAmountPDL, 0)>0, 'Повторный PDL', 'Новый')
                                 WHEN app.Product = 'IL'  THEN IIF(ISNULL(app3.LoanAmountIL , 0)>0, 'Повторный IL',  'Новый')
                             END
    FROM #tz_Deal_prepare app
    LEFT JOIN (
        SELECT
              app.Id
            , COUNT(DISTINCT anl.Account_RK)                                AS LoanAmount
            , COUNT(DISTINCT IIF(p.ProductType_RK=3, anl.Account_RK, NULL)) AS LoanAmountPDL
            , COUNT(DISTINCT IIF(p.ProductType_RK=2, anl.Account_RK, NULL)) AS LoanAmountIL
        FROM       #tz_Deal_prepare         app
        INNER JOIN tz_dds.Application       anl  ON anl.Customer_RK        = app.CUSTOMER_RK
                                                AND anl.Account_RK        != app.ACCOUNT_RK
                                                AND anl.PaymentDate        < app.CreatedDatetime
                                                --AND app.EffectiveDateFrom  BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        INNER JOIN tz_dds.Product           p    ON anl.Product_RK         = p.Product_RK
                                                --AND app.EffectiveDateFrom  BETWEEN p.EffectiveDateFrom AND p.EffectiveDateTill
        GROUP BY app.Id
    ) app3 ON app3.Id = app.Id;

    UPDATE prp SET
        ChannelIssue = CASE 
	                       WHEN fr1.Name = 'Платёжная карта'			  THEN 'card'
				           WHEN fr1.Name = 'Яндекс.Кошелек'				  THEN 'yandex'
				           WHEN fr1.Name = 'Получить переводом "Contact"' THEN 'contact'
				       												      ELSE
																		       CASE 
																		           WHEN fr2.Name = 'Платёжная карта'				THEN 'card'
																		           WHEN fr2.Name = 'Яндекс.Кошелек'					THEN 'yandex'
																		           WHEN fr2.Name = 'Получить переводом "Contact"'	THEN 'contact'
																		           WHEN fr2.Name = 'Доставить быстрокарту на дом'	THEN 'dbk'
																		           WHEN fr2.Name = 'Временно недоступно'			THEN 'card'
				       																											    ELSE 'card'
																		       END
				       END
    FROM      #tz_Deal_prepare                  prp
    LEFT JOIN tz_dds.FinancingInstrument        fi  ON prp.FinancingInstrument_RK    = fi.FinancingInstrument_RK
                                               AND prp.EffectiveDateFrom             BETWEEN fi.EffectiveDateFrom AND fi.EffectiveDateTill
    LEFT JOIN tz_dds.FinancingInstrumentType    fr1	ON fi.FinancingInstrumentType_RK = fr1.FinancingInstrumentType_RK
                                               AND prp.EffectiveDateFrom             BETWEEN fr1.EffectiveDateFrom AND fr1.EffectiveDateTill
    LEFT JOIN tz_dds.FinancingInstrumentType	fr2	ON prp.IssuanceType_RK           = fr2.FinancingInstrumentType_RK
                                               AND prp.EffectiveDateFrom             BETWEEN fr2.EffectiveDateFrom AND fr2.EffectiveDateTill;

    UPDATE app SET
          NumLoans    = ISNULL(NumLoan.NumLoans,    0)
        , NumLoansPdl = ISNULL(NumLoan.NumLoansPDL, 0)
        , NumLoansIL  = ISNULL(NumLoan.NumLoansIL,  0)
    FROM #tz_Deal_prepare app
    LEFT JOIN (
        SELECT 
              app.Id
            , COUNT(DISTINCT anl.Account_RK)                                                             AS NumLoans
            , COUNT(DISTINCT IIF(p.ProductType_RK=3, anl.Account_RK, NULL)) AS NumLoansPDL
            , COUNT(DISTINCT IIF(p.ProductType_RK=2, anl.Account_RK, NULL)) AS NumLoansIL
        FROM       tz_dds.[Application] anl
        INNER JOIN #tz_Deal_prepare     app ON anl.CUSTOMER_RK          = app.CUSTOMER_RK
                                           AND anl.Account_RK           != app.ACCOUNT_RK
                                           AND anl.PaymentDate          < app.CreatedDatetime
                                           AND anl.ApplicationStatus_RK = 12--Закрыт
										   --AND app.EffectiveDateFrom    BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        INNER JOIN tz_dds.Product       p   ON anl.Product_RK           = p.Product_RK
	                                       --AND app.EffectiveDateFrom    BETWEEN p.EffectiveDateFrom AND p.EffectiveDateTill
        GROUP BY app.Id
    ) NumLoan ON app.Id = NumLoan.Id;

    --поиск последнего дня недели от выдачи
    UPDATE dp SET
        IssueWeek = sunday.DateAlternateKey
    FROM       #tz_Deal_prepare dp
    INNER JOIN dbo.DimDate      today  ON today.DateAlternateKey = dp.IssueDatetimeDT
    INNER JOIN dbo.DimDate      sunday ON today.WeekOfYear       = sunday.WeekOfYear
                                      AND today.CalendarYear     = sunday.CalendarYear
							          AND sunday.[DayOfWeek]     = 7;

    --Судебные дела
    UPDATE app SET
        CourtDate = l.CreatedOn
    FROM #tz_Deal_prepare app
    INNER JOIN (
        SELECT app.Id, lccsh.CreatedOn, ROW_NUMBER() OVER (PARTITION BY app.Id ORDER BY lccsh.CreatedOn) AS rn
        FROM       #tz_Deal_prepare                            app
        INNER JOIN tz_dds.LegalCollectionContract              lcc   ON lcc.Account_RK                   = app.ACCOUNT_RK
																    AND app.EffectiveDateFrom            BETWEEN lcc.EffectiveDateFrom AND lcc.EffectiveDateTill
        INNER JOIN tz_dds.LegalCollectionContractStatusHistory lccsh ON lccsh.LegalCollectionContract_RK = lcc.LegalCollectionContract_RK
                                                                    AND app.EffectiveDateFrom            BETWEEN lccsh.EffectiveDateFrom AND lccsh.EffectiveDateTill
        WHERE lccsh.LegalCollectionContractStatus_RK = 11--Приостановлено начисление процентов--TODO: оставить RK, переделать на Id?
    ) l ON l.Id = app.Id
       AND l.rn = 1;

    UPDATE app SET
        DealCourtDecisionDate = l.CreatedOn
    FROM #tz_Deal_prepare app
    INNER JOIN (
        SELECT app.Id, lccsh.CreatedOn, ROW_NUMBER() OVER (PARTITION BY app.Id ORDER BY lccsh.CreatedOn) AS rn
        FROM       #tz_Deal_prepare                            app
        INNER JOIN tz_dds.LegalCollectionContract              lcc   ON lcc.Account_RK                   = app.ACCOUNT_RK
																    AND app.EffectiveDateFrom            BETWEEN lcc.EffectiveDateFrom AND lcc.EffectiveDateTill
        INNER JOIN tz_dds.LegalCollectionContractStatusHistory lccsh ON lccsh.LegalCollectionContract_RK = lcc.LegalCollectionContract_RK
																    AND app.EffectiveDateFrom            BETWEEN lccsh.EffectiveDateFrom AND lccsh.EffectiveDateTill
        WHERE lccsh.LegalCollectionContractStatus_RK IN (
	          14 -- Удовлетворено районным судом
            , 18 -- Получен приказ мирового суда
            , 38 -- Выдан исполнительный лист
	    )
    ) l ON l.Id = app.Id
       AND l.rn = 1;

    --IsRefinanced - флаг выдачи займа с целью рефинансирования предыдущего займа
    UPDATE app SET
        IsRefinanced = ISNULL(ref.IsRefinanced, 0)
    FROM #tz_Deal_prepare app
    LEFT JOIN (
        SELECT 
    	      app.Id
            , sil.IsRefinanced
            , ROW_NUMBER() OVER(PARTITION BY sil.Account_RK ORDER BY sil.CreatedOn desc) AS rn
        FROM       #tz_Deal_prepare          app
        INNER JOIN tz_dds.SandboxInputLog    sil ON sil.Account_RK        = app.Account_RK
	                                            AND app.EffectiveDateFrom BETWEEN sil.EffectiveDateFrom AND sil.EffectiveDateTill
        WHERE   sil.Decision IN ('AutoApprove', 'Refer') 
            AND sil.ApplicationRefinancingId IS NULL
    ) ref ON ref.Id = app.Id
         AND ref.rn = 1;

    --флаг закрытия текущего займа с целью рефинансирования в продукте IL
    --Ставить 1, если следующий займ был взят для рефинансирования текущего
    --TODO:проверить
    UPDATE app SET
        app.IsClosedToRefinance = sil.IsRefinanced
    FROM       #tz_Deal_prepare      app
    LEFT JOIN (
        SELECT app.Id, a.Account_RK, a.EffectiveDateFrom, ROW_NUMBER() OVER (PARTITION BY app.ACCOUNT_RK ORDER BY a.CreatedOnDT) AS rn
        FROM       #tz_Deal_prepare   app
        INNER JOIN tz_dds.Application a   ON a.Customer_RK         = app.CUSTOMER_RK
                                         AND app.EffectiveDateFrom BETWEEN a.EffectiveDateFrom AND a.EffectiveDateTill
    									 AND a.Account_RK          !=app.ACCOUNT_RK
    									 AND a.PaymentDate         > app.IssueDatetime
    ) nxt ON nxt.Id = app.Id
         AND nxt.rn = 1
    LEFT JOIN tz_dds.SandboxInputLog sil ON sil.Account_RK          = nxt.Account_RK
	                                    AND nxt.EffectiveDateFrom BETWEEN sil.EffectiveDateFrom AND sil.EffectiveDateTill
                                        AND sil.Decision          IN ('AutoApprove', 'Refer') 
                                        AND sil.ApplicationRefinancingId IS NULL;

    --Аннулирован
    UPDATE app SET
        AnnulmentDate = aa.ChangeDate
    FROM #tz_Deal_prepare           app
    INNER JOIN (
        SELECT app.Id, aa.ChangeDate, ROW_NUMBER() OVER (PARTITION BY app.Id ORDER BY aa.ChangeDate) AS rn
        FROM       #tz_Deal_prepare        app
        INNER JOIN tz_dds.ApplicationAudit aa  ON app.ACCOUNT_RK        = aa.ACCOUNT_RK
                                              AND app.EffectiveDateFrom BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
        WHERE aa.Status_New_RK = 15
    ) aa ON aa.Id = app.Id
        AND aa.rn = 1;

    --страховки
    --страховки
    UPDATE dp SET
		  VASAmt  = vas.VASAmt
		, VASPaid = vas.VASPaid
	FROM       #tz_Deal_prepare                    dp
	INNER JOIN (
		SELECT 
			  dp.Id
			, SUM(ABS(aap.Amount))                                     AS VASAmt
			, SUM(IIF(aap.PayDate IS NOT NULL, ABS(aap.Amount), NULL)) AS VASPaid
		FROM       #tz_Deal_prepare                    dp
		INNER JOIN tz_dds.ApplicationAdditionalProduct aap ON aap.Account_RK          = dp.Account_RK
														  AND dp.EffectiveDateFrom    BETWEEN aap.EffectiveDateFrom AND aap.EffectiveDateTill
		INNER JOIN tz_dds.AdditionalProduct            ap  ON ap.AdditionalProduct_RK = aap.AdditionalProduct_RK
														  AND dp.EffectiveDateFrom    BETWEEN ap.EffectiveDateFrom AND ap.EffectiveDateTill
		WHERE   ap.AdditionalProductType_RK = 4
		GROUP BY dp.Id
	) vas ON dp.Id = vas.Id;
        --AND aap.StatusId IN (--TODO:надо ли*
        --                    	  '332B5184-3033-4239-B8D1-C1B05A2CCBDD'  --Действующий
        --                    	, 'C69A3CE5-47A7-4A61-8D51-CE294E50B8AD'  --Возврат
        --                    	, '475B8F41-42F6-4135-B9AE-4355648666D1'  --Истек
        --                    );

    --списание
    UPDATE dp SET
        WriteOffDate = wo.WriteOffDate
    FROM #tz_Deal_prepare dp
    INNER JOIN (
        SELECT 
    	      dp.Id
    	    , IIF(c.ActualDate< '1970-01-01', c.EffectiveDateFrom, c.ActualDate)                                                             AS WriteOffDate
    	    , ROW_NUMBER() OVER (PARTITION BY c.Account_RK ORDER BY IIF(c.ActualDate< '1970-01-01', c.EffectiveDateFrom, c.ActualDate) DESC) AS rn
        FROM       #tz_Deal_prepare    dp
        INNER JOIN tz_dds.Cashflow  c  ON dp.ACCOUNT_RK     = c.Account_RK
    	                                 AND dp.EffectiveDateFrom BETWEEN c.EffectiveDateFrom AND c.EffectiveDateTill
        WHERE   c.PaymentSystemAccountInfo LIKE '%Списан%' 
    	    AND ABS(c.Amount)       > 0
		    AND c.CashflowType_RK   = 1 --Приход
		    AND c.CashflowStatus_RK = 4 --Выполнена
    ) wo ON wo.Id = dp.Id
        AND wo.rn = 1;

    --Пролонгации. Количество
    UPDATE dp SET
        ProlongationAmt = aa.ProlongationAmt
    FROM       #tz_Deal_prepare              dp
    INNER JOIN (
	    SELECT dp.Id, COUNT(*) AS ProlongationAmt
	    FROM       #tz_Deal_prepare              dp
	    INNER JOIN tz_dds.AdditionalAgreement aa ON dp.ACCOUNT_RK        = aa.Account_RK
    										    AND dp.EffectiveDateFrom BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
	    WHERE   aa.AdditionalAgreementType_RK   IN (10, 7) --Пролонгация, Автопролонгации
		    AND aa.AdditionalAgreementStatus_RK IN (7,  9) --Действующее, Закрыто
	    GROUP BY dp.Id
    ) aa ON aa.Id = dp.Id;

    --Общее
    --Пролонгации
    WITH aa AS (
	    SELECT dp.Id, aa.StartDate, aa.EndDate, ROW_NUMBER() OVER (PARTITION BY aa.Account_RK ORDER BY aa.StartDate) AS rn
	    FROM       #tz_Deal_prepare              dp
	    INNER JOIN tz_dds.AdditionalAgreement aa ON dp.ACCOUNT_RK        = aa.Account_RK
    										    AND dp.EffectiveDateFrom BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
	    WHERE     aa.AdditionalAgreementType_RK IN (10, 7) --Пролонгация, Автопролонгации
	        AND aa.AdditionalAgreementStatus_RK IN (7,  9) --Закрыто, Действующее
		    AND dp.ProlongationAmt > 0
    )
    UPDATE dp SET
          Prolongation1Start    = aa1.StartDate
	    , Prolongation1End	    = aa1.EndDate
	    , Prolongation2Start    = aa2.StartDate
	    , Prolongation2End	    = aa2.EndDate
	    , Prolongation3Start    = aa3.StartDate
	    , Prolongation3End	    = aa3.EndDate
	    , Prolongation4Start    = aa4.StartDate
	    , Prolongation4End	    = aa4.EndDate
	    , Prolongation5Start    = aa5.StartDate
	    , Prolongation5End      = aa5.EndDate
        , ExcepectedPaymentDate = COALESCE(aa5.EndDate, aa4.EndDate, aa3.EndDate, aa2.EndDate, aa1.EndDate) --Дата оплаты договора с учетом пролонгаций. Берем последнюю не пустую
    FROM        #tz_Deal_prepare dp
    LEFT JOIN   aa               aa1 ON aa1.Id = dp.Id AND aa1.rn = 1
    LEFT JOIN   aa               aa2 ON aa2.Id = dp.Id AND aa2.rn = 2
    LEFT JOIN   aa               aa3 ON aa3.Id = dp.Id AND aa3.rn = 3
    LEFT JOIN   aa               aa4 ON aa4.Id = dp.Id AND aa4.rn = 4
    LEFT JOIN   aa               aa5 ON aa5.Id = dp.Id AND aa5.rn = 5
    WHERE dp.ProlongationAmt>0;

    --Выплаченное
    --PDL
    UPDATE dp SET
          PrincipalPaid = ISNULL(f.op_sum, 0)
	    , InteresPaid   = ISNULL(f.percent_sum, 0)
	    , OtherPaid     = ISNULL(f.other_sum, 0)
    FROM #tz_Deal_prepare dp
    LEFT JOIN (
	    SELECT
		      dp.Id
		    , SUM(IIF(c.CashflowCategory_RK = 15,     c.Amount, 0)) AS op_sum	--Сумма займа
		    , SUM(IIF(c.CashflowCategory_RK IN (
                                          13--Проценты по займу
                                        , 31--Пролонгация
                                    ),                c.Amount, 0)) AS percent_sum
            , SUM(IIF(c.CashflowCategory_RK IN (
                                          26--Пени
                                        , 27--Штрафные санкции
                                    ),                c.Amount, 0)) AS other_sum
	    FROM       tz_dds.Cashflow c
	    INNER JOIN #tz_Deal_prepare   dp ON dp.ACCOUNT_RK        = c.Account_RK
	                                    AND dp.EffectiveDateFrom BETWEEN c.EffectiveDateFrom AND c.EffectiveDateTill
									    AND c.ActualDate         <= dp.EffectiveDateFrom
	    WHERE   dp.Product        = 'PDL'
		    AND c.CashflowType_RK = 1 --Приход
		    AND c.CashflowCategory_RK IN (
			      15	--Сумма займа
                , 13	--Проценты по займу
                , 27	--Штрафные санкции
                , 26	--Пени
                , 31	--Пролонгация
		    )
		    AND c.CashflowStatus_RK = 4--Выполнена
	    GROUP BY dp.Id
    ) f ON f.Id = dp.Id
    WHERE   dp.Product   = 'PDL';

    --IL
    UPDATE dp SET
          PrincipalPaid = ISNULL(cf.op_sum, 0)
        , InteresPaid   = ISNULL(cf.percent_sum, 0)
        , OtherPaid     = ISNULL(cf.other_sum, 0)
    FROM #tz_Deal_prepare dp
    LEFT JOIN (
        SELECT b.Account_RK
            , SUM(IIF(OperationCategory_RK = 15,        ABS(b.Amount), 0)) AS op_sum
            , SUM(IIF(OperationCategory_RK = 13,        ABS(b.Amount), 0)) AS percent_sum
            , SUM(IIF(OperationCategory_RK IN (26, 27), ABS(b.Amount), 0)) AS other_sum
        FROM       tz_dds.Balance  b
        INNER JOIN #tz_Deal_prepare   dp ON dp.ACCOUNT_RK        = b.Account_RK
	                                    AND dp.EffectiveDateFrom BETWEEN b.EffectiveDateFrom AND b.EffectiveDateTill
									    AND b.ActualDate         <= dp.EffectiveDateFrom
        WHERE dp.Product           = 'IL'
		    AND b.OperationType_RK = 2  --Расход
		    AND b.OperationCategory_RK IN (
			      15	--Сумма займа
			    , 13	--Проценты по займу
			    , 27	--Штрафные санкции
			    , 26	--Пени
		    )
        GROUP BY b.Account_RK
    ) cf ON cf.Account_RK = dp.ACCOUNT_RK
    WHERE dp.Product   = 'IL';

    --Просрочки
    DROP TABLE IF EXISTS #tz_Deal_delay;
    CREATE TABLE #tz_Deal_delay
    (
          Account_RK     BIGINT NULL
        , DelayDate      DATE   NULL--дата начала просрочки
    );
    CREATE CLUSTERED INDEX PK_#tz_Deal_delay ON #tz_Deal_delay(Account_RK);

    INSERT INTO #tz_Deal_delay(Account_RK, DelayDate)
    --PDL
    SELECT ap.Account_RK, CAST(DATEADD(DAY, 1, ap.CurrentReturnDate) AS DATE)
    FROM       #tz_Deal_prepare        dp
    INNER JOIN tz_dds.[Application] ap ON dp.ACCOUNT_RK      = ap.Account_RK
                                         AND dp.EffectiveDateFrom BETWEEN ap.EffectiveDateFrom AND ap.EffectiveDateTill
    WHERE   (dp.Product           =  'PDL')
        AND (ap.CurrentReturnDate <= dp.EffectiveDateFrom)
        AND (
            (ap.ReturnDate IS NULL)
                OR
            (ap.ReturnDate > ap.CurrentReturnDate)
        )
    UNION
    --IL
    SELECT ap.Account_RK, MIN(DATEADD(DAY, 1, ps.PayDate))
    FROM       #tz_Deal_prepare          dp
    INNER JOIN tz_dds.[Application]   ap ON dp.ACCOUNT_RK     = ap.Account_RK
                                        AND dp.EffectiveDateFrom BETWEEN ap.EffectiveDateFrom AND ap.EffectiveDateTill
    INNER JOIN tz_dds.PaymentSchedule ps ON ps.Account_RK     = ap.Account_RK
                                        AND dp.EffectiveDateFrom BETWEEN ps.EffectiveDateFrom AND ps.EffectiveDateTill
    WHERE   (dp.Product       =  'IL')
        AND (ps.PayDate       <= dp.EffectiveDateFrom)
        AND (ps.RepaymentDate IS NULL)
    GROUP BY ap.Account_RK;

    UPDATE dp SET
          DelqDays       = del.DelqDays
	    , DelqDate1      = IIF(del.DelqDate1  > EffectiveDateFrom, NULL, del.DelqDate1)
	    , DelqDate17     = IIF(del.DelqDate17 > EffectiveDateFrom, NULL, del.DelqDate17)
	    , DelqDate20     = IIF(del.DelqDate20 > EffectiveDateFrom, NULL, del.DelqDate20)
	    , DelqDate90     = IIF(del.DelqDate90 > EffectiveDateFrom, NULL, del.DelqDate90)
    FROM #tz_Deal_prepare dp 
    INNER JOIN 
    (
	    SELECT 
		      dp.Id
		    , del.DelayDate
		    , DATEDIFF(DAY, del.DelayDate, dp.EffectiveDateFrom) AS DelqDays
		    , DATEADD(DAY, 1,  del.DelayDate)                    AS DelqDate1
		    , DATEADD(DAY, 17, del.DelayDate)                    AS DelqDate17
		    , DATEADD(DAY, 20, del.DelayDate)                    AS DelqDate20
		    , DATEADD(DAY, 90, del.DelayDate)                    AS DelqDate90
	    FROM       #tz_Deal_prepare   dp
	    INNER JOIN #tz_Deal_delay     del ON dp.ACCOUNT_RK = del.Account_RK
    ) del ON dp.Id        = del.Id
         AND del.DelqDays > 0;

    --Дата выхода в Collection
    UPDATE #tz_Deal_prepare SET CollectionDate = DelqDate1;

    DROP TABLE IF EXISTS #tz_Deal_prepare_last;
    SELECT app.ACCOUNT_RK, app.EffectiveDateFrom, app.Id
    INTO #tz_Deal_prepare_last
    FROM       pbi.Deal         app
    INNER JOIN #tz_Deal_prepare prp ON prp.ACCOUNT_RK = app.ACCOUNT_RK
    WHERE   app.EffectiveDateTill = @MAX_EFFECTIVE_DATE;

    --Вносим те, которые были ранее, но изменились
    DELETE FROM pbi.Deal WHERE BatchId = @BatchId;

    INSERT INTO pbi.Deal(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, ChannelIssue, NumLoans, NumLoansPdl, NumLoansIL, IssueDatetime, IssueDatetimeDT, IssueWeek, ApproveAmt, LoanAmt, VASAmt, Product, ProductDetail, IsRefinanced, InterestRate, TermContract, TermFactClose, TermFact, ExcepectedPaymentContractDate, ExcepectedPaymentDate, DelqDays, DelqDate1, DelqDate17, DelqDate20, DelqDate90, CollectionDate, LoanStatus, CloseDate, SoldDate, CourtDate, DealCourtDecisionDate, AnnulmentDate, WriteOffDate, IsClosedToRefinance, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, ProlongationAmt, Prolongation1Start, Prolongation1End, Prolongation2Start, Prolongation2End, Prolongation3Start, Prolongation3End, Prolongation4Start, Prolongation4End, Prolongation5Start, Prolongation5End, PrincipalPaid, InteresPaid, VASPaid, OtherPaid, FIO, PassportSeries, PassportNumber, BirthDate, BatchIdSource, CreatedDatetime, FinancingInstrument_RK, IssuanceType_RK)
    SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.ApplicationId, p.ACCOUNT_RK, p.ContactId, p.CUSTOMER_RK, p.HasBD, p.LandingSource, p.MarketingSource, p.MarketingWeb, p.ClientType, p.ClientTypeDetail, p.ChannelIssue, p.NumLoans, p.NumLoansPdl, p.NumLoansIL, p.IssueDatetime, p.IssueDatetimeDT, p.IssueWeek, p.ApproveAmt, p.LoanAmt, p.VASAmt, p.Product, p.ProductDetail, p.IsRefinanced, p.InterestRate, p.TermContract, p.TermFactClose, p.TermFact, p.ExcepectedPaymentContractDate, p.ExcepectedPaymentDate, p.DelqDays, p.DelqDate1, p.DelqDate17, p.DelqDate20, p.DelqDate90, p.CollectionDate, p.LoanStatus, p.CloseDate, p.SoldDate, p.CourtDate, p.DealCourtDecisionDate, p.AnnulmentDate, p.WriteOffDate, p.IsClosedToRefinance, p.RequestProduct, p.RequestProductDetail, p.RequestTerm, p.RequestAmt, p.ProlongationAmt, p.Prolongation1Start, p.Prolongation1End, p.Prolongation2Start, p.Prolongation2End, p.Prolongation3Start, p.Prolongation3End, p.Prolongation4Start, p.Prolongation4End, p.Prolongation5Start, p.Prolongation5End, p.PrincipalPaid, p.InteresPaid, p.VASPaid, p.OtherPaid, p.FIO, p.PassportSeries, p.PassportNumber, p.BirthDate, p.BatchIdSource, p.CreatedDatetime, p.FinancingInstrument_RK, p.IssuanceType_RK
    FROM (
        SELECT ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, ChannelIssue, NumLoans, NumLoansPdl, NumLoansIL, IssueDatetime, IssueDatetimeDT, IssueWeek, ApproveAmt, LoanAmt, VASAmt, Product, ProductDetail, IsRefinanced, InterestRate, TermContract, TermFactClose, TermFact, ExcepectedPaymentContractDate, ExcepectedPaymentDate, DelqDays, DelqDate1, DelqDate17, DelqDate20, DelqDate90, CollectionDate, LoanStatus, CloseDate, SoldDate, CourtDate, DealCourtDecisionDate, AnnulmentDate, WriteOffDate, IsClosedToRefinance, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, ProlongationAmt, Prolongation1Start, Prolongation1End, Prolongation2Start, Prolongation2End, Prolongation3Start, Prolongation3End, Prolongation4Start, Prolongation4End, Prolongation5Start, Prolongation5End, PrincipalPaid, InteresPaid, VASPaid, OtherPaid, FIO, PassportSeries, PassportNumber, BirthDate, BatchIdSource, CreatedDatetime, FinancingInstrument_RK, IssuanceType_RK
        FROM (
            SELECT prp.*
            FROM       #tz_Deal_prepare_last l
            INNER JOIN #tz_Deal_prepare      prp ON l.ACCOUNT_RK = prp.ACCOUNT_RK
        ) prp
        EXCEPT
        (
            SELECT ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, ChannelIssue, NumLoans, NumLoansPdl, NumLoansIL, IssueDatetime, IssueDatetimeDT, IssueWeek, ApproveAmt, LoanAmt, VASAmt, Product, ProductDetail, IsRefinanced, InterestRate, TermContract, TermFactClose, TermFact, ExcepectedPaymentContractDate, ExcepectedPaymentDate, DelqDays, DelqDate1, DelqDate17, DelqDate20, DelqDate90, CollectionDate, LoanStatus, CloseDate, SoldDate, CourtDate, DealCourtDecisionDate, AnnulmentDate, WriteOffDate, IsClosedToRefinance, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, ProlongationAmt, Prolongation1Start, Prolongation1End, Prolongation2Start, Prolongation2End, Prolongation3Start, Prolongation3End, Prolongation4Start, Prolongation4End, Prolongation5Start, Prolongation5End, PrincipalPaid, InteresPaid, VASPaid, OtherPaid, FIO, PassportSeries, PassportNumber, BirthDate, BatchIdSource, CreatedDatetime, FinancingInstrument_RK, IssuanceType_RK
            FROM (
                SELECT app.*
                FROM       pbi.Deal              app
                INNER JOIN #tz_Deal_prepare_last l   ON l.Id = app.Id
            ) l
        )
    ) n
    INNER JOIN #tz_Deal_prepare p ON p.ACCOUNT_RK = n.ACCOUNT_RK;

    --предыдущим записям уменьшаем "Дату актуальности до"
    UPDATE old SET
        EffectiveDateTill = DATEADD(MS, -2, new.EffectiveDateFrom)
    FROM       pbi.Deal              new
    INNER JOIN #tz_Deal_prepare_last l   ON l.ACCOUNT_RK = new.ACCOUNT_RK
                                        AND new.BatchId  = @BatchId
    INNER JOIN pbi.Deal              old ON l.Id         = old.Id;

    --Те, которых вообще не было
    INSERT INTO pbi.Deal(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, ChannelIssue, NumLoans, NumLoansPdl, NumLoansIL, IssueDatetime, IssueDatetimeDT, IssueWeek, ApproveAmt, LoanAmt, VASAmt, Product, ProductDetail, IsRefinanced, InterestRate, TermContract, TermFactClose, TermFact, ExcepectedPaymentContractDate, ExcepectedPaymentDate, DelqDays, DelqDate1, DelqDate17, DelqDate20, DelqDate90, CollectionDate, LoanStatus, CloseDate, SoldDate, CourtDate, DealCourtDecisionDate, AnnulmentDate, WriteOffDate, IsClosedToRefinance, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, ProlongationAmt, Prolongation1Start, Prolongation1End, Prolongation2Start, Prolongation2End, Prolongation3Start, Prolongation3End, Prolongation4Start, Prolongation4End, Prolongation5Start, Prolongation5End, PrincipalPaid, InteresPaid, VASPaid, OtherPaid, FIO, PassportSeries, PassportNumber, BirthDate, BatchIdSource, CreatedDatetime, FinancingInstrument_RK, IssuanceType_RK)
    SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.ApplicationId, p.ACCOUNT_RK, p.ContactId, p.CUSTOMER_RK, p.HasBD, p.LandingSource, p.MarketingSource, p.MarketingWeb, p.ClientType, p.ClientTypeDetail, p.ChannelIssue, p.NumLoans, p.NumLoansPdl, p.NumLoansIL, p.IssueDatetime, p.IssueDatetimeDT, p.IssueWeek, p.ApproveAmt, p.LoanAmt, p.VASAmt, p.Product, p.ProductDetail, p.IsRefinanced, p.InterestRate, p.TermContract, p.TermFactClose, p.TermFact, p.ExcepectedPaymentContractDate, p.ExcepectedPaymentDate, p.DelqDays, p.DelqDate1, p.DelqDate17, p.DelqDate20, p.DelqDate90, p.CollectionDate, p.LoanStatus, p.CloseDate, p.SoldDate, p.CourtDate, p.DealCourtDecisionDate, p.AnnulmentDate, p.WriteOffDate, p.IsClosedToRefinance, p.RequestProduct, p.RequestProductDetail, p.RequestTerm, p.RequestAmt, p.ProlongationAmt, p.Prolongation1Start, p.Prolongation1End, p.Prolongation2Start, p.Prolongation2End, p.Prolongation3Start, p.Prolongation3End, p.Prolongation4Start, p.Prolongation4End, p.Prolongation5Start, p.Prolongation5End, p.PrincipalPaid, p.InteresPaid, p.VASPaid, p.OtherPaid, p.FIO, p.PassportSeries, p.PassportNumber, p.BirthDate, p.BatchIdSource, p.CreatedDatetime, p.FinancingInstrument_RK, p.IssuanceType_RK
    FROM      #tz_Deal_prepare      p
    LEFT JOIN #tz_Deal_prepare_last l ON p.ACCOUNT_RK = l.ACCOUNT_RK
    WHERE l.ACCOUNT_RK IS NULL;

    DROP TABLE IF EXISTS #tz_Deal_prepare, #tz_Deal_delay, #tz_Deal_prepare_last;

    UPDATE dbo.MartRegistry SET
        LastLoadDate = GETDATE()
    WHERE MartRegistryId = @MartRegistryId;
END;