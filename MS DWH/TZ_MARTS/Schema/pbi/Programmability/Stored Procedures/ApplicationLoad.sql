-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2024-01-19
-- Description:   Выгрузка данных для витрины pbi.[Application]
-- =============================================
CREATE PROCEDURE pbi.ApplicationLoad
    @BatchId BIGINT
AS BEGIN
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET XACT_ABORT ON;
    SET NOCOUNT ON;

    DECLARE 
          @MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
        , @MAX_EFFECTIVE_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE)
        , @MartRegistryId             BIGINT        = (SELECT TOP 1 MartRegistryId FROM dbo.MartRegistry WHERE OBJECT_ID(DataLoadProcedure) = OBJECT_ID(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)));

    IF NOT EXISTS(SELECT TOP 1 1 FROM pbi.ApplicationByDate WHERE BatchId = @BatchId)
        EXEC pbi.ApplicationPrepare
	        @BatchId = @BatchId;

    DROP TABLE IF EXISTS #tz_Application_prepare;
    SELECT TOP 0 * INTO #tz_Application_prepare FROM pbi.[Application];
    CREATE CLUSTERED    INDEX PK_#tz_Application_prepare                   ON #tz_Application_prepare(ACCOUNT_RK);
    CREATE NONCLUSTERED INDEX IX_#tz_Application_prepare_EffectiveDateFrom ON #tz_Application_prepare(EffectiveDateFrom) INCLUDE (ClientType);
    CREATE NONCLUSTERED INDEX IX_#tz_Application_prepare_Product           ON #tz_Application_prepare(Product)           INCLUDE (EffectiveDateFrom,ACCOUNT_RK);

    INSERT INTO #tz_Application_prepare(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, DealNumber, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, IsFirstApplication
        , NumAppDay, NumLoans, NumLoansPdl, NumLoansIL, CreatedDatetime, FillingDatetime, ScoringDatetime, GreyzoneDatetime, FinalDecisionDatetime, ApproveDatetime, RejectDatetime, IssueDatetime, DecisionGR, Decision, IsClientReject, IsPI, IsUprid, IsScan
        , IsResigning, IsAutoApprove, IsAutoIssue, CommentVerifier, IsApprove, IsApprovePDL, IsApproveIL, ApproveAmt, ApproveAmtPDL, ApproveAmtIL, TimeFillingApplication, DefaultProduct, DefaultTerm, DefaultAmt, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt
        , LoanAmt, Product, ProductDetail, InterestRate, TermContract, PhoneNumber, Surname, [Name], Patronymic, PassportSeries, PassportNumber, BirthDate, Age, RegAct, RegReg, MaritalStatus, Education, Gender, TypeEmployment, WorkPosition, Step_0, Step_1, Step_2, Step_3, Step_4, Step_5, Step_6, Step_7
        , SMEVIdentification, ESIAIdentification, OldIdentification, DocsIdentification, PFRIdentification, IsNewSpr, Email, FinancingInstrumentId, BIN, LastFourDigits, CardId, ExpiresOn, NameCommentFinancinginstrument
        --служебные поля
        , FIO, FullCostStartCalc, FillingDateDT, BatchIdSource
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
        , app.Number                                                                          AS DealNumber
        , 0                                                                                   AS HasBD
        , app.LandingSource
        , app.MarketingSource
        , app.MarketingWeb
        , NULL                                                                                AS ClientType
        , NULL                                                                                AS ClientTypeDetail
        , NULL                                                                                AS IsFirstApplication
        , NULL                                                                                AS NumAppDay
        , NULL                                                                                AS NumLoans
        , NULL                                                                                AS NumLoansPdl
        , NULL                                                                                AS NumLoansIL
        , app.CreatedOn                                                                       AS CreatedDatetime
        , app.FillingDate                                                                     AS FillingDatetime
        , NULL                                                                                AS ScoringDatetime
        , NULL                                                                                AS GreyzoneDatetime
        , app.ProceededOn                                                                     AS FinalDecisionDatetime
        , NULL                                                                                AS ApproveDatetime
        , NULL                                                                                AS RejectDatetime
        , app.PaymentDate                                                                     AS IssueDatetime
        , NULL                                                                                AS DecisionGR
        , NULL                                                                                AS Decision
        , NULL                                                                                AS IsClientReject
        , NULL                                                                                AS IsPI
        , NULL                                                                                AS IsUprid
        , NULL                                                                                AS IsScan
        , IIF(app.OfferSum!=app.RequestedOfferSum, 1, 0)                                      AS IsResigning
        , NULL                                                                                AS IsAutoApprove
        , NULL                                                                                AS IsAutoIssue
        , NULL                                                                                AS CommentVerifier
        , 0                                                                                   AS IsApprove
        , 0                                                                                   AS IsApprovePDL
        , 0                                                                                   AS IsApproveIL
        , app.OfferSum                                                                        AS ApproveAmt
        , NULL                                                                                AS ApproveAmtPDL
        , NULL                                                                                AS ApproveAmtIL
        , DATEDIFF(SECOND, app.CreatedOn, app.FillingDate)                                    AS TimeFillingApplication
        , NULL                                                                                AS DefaultProduct
        , NULL                                                                                AS DefaultTerm
        , NULL                                                                                AS DefaultAmt
        , IIF(app.RequestedOfferSum>30, 'IL', 'PDL')                                          AS RequestProduct
        , NULL                                                                                AS RequestProductDetail
        , app.RequestedOfferPeriod                                                            AS RequestTerm
        , app.RequestedOfferSum                                                               AS RequestAmt
        , IIF(app.PaymentDate IS NOT NULL, app.OfferSum, NULL)                                AS LoanAmt
        , NULL                                                                                AS Product
        , NULL                                                                                AS ProductDetail
        , NULL                                                                                AS InterestRate
        , NULL                                                                                AS TermContract
        , app.ContactMobilePhone                                                              AS PhoneNumber
        , app.ContactFamilyName                                                               AS Surname
        , app.ContactFirstName                                                                AS [Name]
        , app.ContactFatherName                                                               AS Patronymic
        , app.ContactDocumentSeries                                                           AS PassportSeries
        , app.ContactDocumentNumber                                                           AS PassportNumber
        , app.ContactBirthDate                                                                AS BirthDate
        , DATEDIFF(YEAR, app.ContactBirthDate, s.EffectiveDate)                               AS Age
        , NULL                                                                                AS RegAct
        , NULL                                                                                AS RegReg
        , NULL                                                                                AS MaritalStatus
        , NULL                                                                                AS Education
        , NULL                                                                                AS Gender
        , NULL                                                                                AS TypeEmployment
        , app.ContactJobTitle                                                                 AS WorkPosition
        , app.Step_0                                                                          AS Step_0
        , app.Step_1                                                                          AS Step_1
        , app.Step_2                                                                          AS Step_2
        , app.Step_3                                                                          AS Step_3
        , app.Step_4                                                                          AS Step_4
        , app.Step_5                                                                          AS Step_5
        , app.Step_6                                                                          AS Step_6
        , app.Step_7                                                                          AS Step_7
        , NULL                                                                                AS SMEVIdentification
        , NULL                                                                                AS ESIAIdentification
        , NULL                                                                                AS OldIdentification
        , NULL                                                                                AS DocsIdentification
        , NULL                                                                                AS PFRIdentification
        , 0                                                                                   AS IsNewSpr
        , app.Email                                                                           AS Email
        , app.FinancingInstrumentId                                                           AS FinancingInstrumentId
        , NULL                                                                                AS BIN
        , NULL                                                                                AS LastFourDigits
        , NULL                                                                                AS CardId
        , NULL                                                                                AS ExpiresOn
        , NULL                                                                                AS NameCommentFinancinginstrument
    
        , REPLACE(REPLACE(REPLACE(UPPER(app.ContactFamilyName+app.ContactFirstName+app.ContactFatherName), ' ', ''), '-', ''), 'Ё', 'Е') 
                                                                                             AS FIO
        , NULL                                                                               AS FullCostStartCalc
        , app.FillingDateDT
        , app.BatchId                                                                        AS BatchIdSource
    FROM (
        --надо взять все займы, которые поучаствовали в изменениях
        --но так как изменения бывают в смежных объектах по займам в Application их может не быть с заданным BatchId
        --поэтому надо взять последнюю версию из Application и потом уже дополнять выборку смежными данными
	    --declare @BatchId int=110,@MARTS_INITIAL_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MARTS_INITIAL_DATE', CAST('2019-01-01' AS DATE)) AS DATE)
        SELECT app.Id, prp.Account_RK, prp.EffectiveDate, ROW_NUMBER() OVER (PARTITION BY prp.Account_RK ORDER BY b.DateFrom DESC) AS rn
        FROM       pbi.ApplicationByDate          prp
	    INNER JOIN tz_dds.[Application]           app ON prp.Account_RK = app.Account_RK
	    INNER JOIN tz_work.dbo_Batch              b   ON b.BatchId      = app.BatchId
	    WHERE   prp.BatchId     =  @BatchId
	        AND app.CreatedOnDT >= @MARTS_INITIAL_DATE
    ) s
    INNER JOIN tz_dds.[Application] app ON app.Id = s.Id
                                       AND s.rn   = 1;

    UPDATE ap SET
          DecisionGR                     = dr.Name
        , Decision                       = ad.Name
        , IsUprid                        = ISNULL(ai.IdentificationbyPFR, 0)
        , CommentVerifier                = LEFT(v.Comment, 255)
        , ApproveAmtPDL                  = IIF(pt.ProductType_RK = 3, app.OfferSum, 0)
        , ApproveAmtIL                   = IIF(pt.ProductType_RK = 2, app.OfferSum, 0)
        , Product                        = CASE 
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
        , TermContract                   = DATEDIFF(DAY, app.PaymentDate, 
                                               CASE
                                                  WHEN app.CurrentReturnDateDT = app.PreviousReturnDateDT THEN app.CurrentReturnDateDT
                                                  ELSE
                                                      CASE p.PeriodTypeId
                                                          WHEN '40250AE9-0770-4CA9-939D-FDB3A3C867BD' THEN DATEADD(DAY,   app.OfferPeriod, app.PaymentDateDT)--Дни
                                                          WHEN 'C0259C89-D87E-404C-84DD-30282D0C7ABF' THEN DATEADD(WEEK,  app.OfferPeriod, app.PaymentDateDT)--Недели
                                                          WHEN '3A09D08D-3F09-44C1-8533-5E6A16429C4B' THEN DATEADD(MONTH, app.OfferPeriod, app.PaymentDateDT)--Месяцы
                                                      END
                                               END
                                           )
        , MaritalStatus                  = ms.[Name]
        , Education                      = ed.[Name]
        , Gender                         = g.[Name]
        , TypeEmployment                 = b.[Name]
        , BIN                            = fi.BIN
        , LastFourDigits                 = LEFT(fi.LastFourDigits, 4)
        , CardId                         = fi.CardId
        , ExpiresOn                      = fi.ExpiresOn
        , NameCommentFinancinginstrument = fi.[Name]
        , FullCostStartCalc              = CAST(DATEADD(DAY, p.StartRate - 1, DATEADD(HOUR, 3, app.PaymentDate)) AS DATE)
    FROM      #tz_Application_prepare         ap
    INNER JOIN tz_dds.[Application]           app ON app.Account_RK            = ap.ACCOUNT_RK
                                                 AND app.BatchId               = ap.BatchIdSource
    LEFT JOIN tz_dds.Product                  p   ON p.Product_RK              = app.Product_RK
                                                 AND app.EffectiveDateFrom     BETWEEN p.EffectiveDateFrom  AND  p.EffectiveDateTill
    LEFT JOIN tz_dds.ProductType              pt  ON pt.ProductType_RK         = p.ProductType_RK
                                                 AND app.EffectiveDateFrom     BETWEEN pt.EffectiveDateFrom AND pt.EffectiveDateTill
    LEFT JOIN tz_dds.MaritalStatus            ms  ON ms.MaritalStatus_RK       = app.MaritalStatus_RK
                                                 AND app.EffectiveDateFrom     BETWEEN ms.EffectiveDateFrom AND ms.EffectiveDateTill
    LEFT JOIN tz_dds.Education                ed  ON ed.Education_RK           = app.Education_RK
                                                 AND app.EffectiveDateFrom     BETWEEN ed.EffectiveDateFrom AND ed.EffectiveDateTill
    LEFT JOIN tz_dds.Gender                   g   ON g.Gender_RK               = app.Gender_RK
                                                 AND app.EffectiveDateFrom     BETWEEN g.EffectiveDateFrom  AND  g.EffectiveDateTill
    LEFT JOIN tz_dds.Busyness                 b   ON b.Busyness_RK             = app.Busyness_RK
                                                 AND app.EffectiveDateFrom     BETWEEN b.EffectiveDateFrom  AND  b.EffectiveDateTill
    LEFT JOIN tz_dds.FinancingInstrument      fi  ON fi.FinancingInstrument_RK = app.FinancingInstrument_RK
                                                 AND app.EffectiveDateFrom     BETWEEN fi.EffectiveDateFrom AND fi.EffectiveDateTill
    LEFT JOIN tz_dds.ApplicationIntegration   ai  ON ai.Account_RK             = app.Account_RK
                                                 AND app.EffectiveDateFrom     BETWEEN ai.EffectiveDateFrom AND ai.EffectiveDateTill
    LEFT JOIN tz_dds.DecisionReasons          dr  ON dr.DecisionReason_RK      = app.DecisionReason_RK
                                                 AND app.EffectiveDateFrom     BETWEEN dr.EffectiveDateFrom AND dr.EffectiveDateTill
    LEFT JOIN tz_dds.ApplicationDecision      ad  ON ad.ApplicationDecision_RK = app.DecisionReason_RK
                                                 AND app.EffectiveDateFrom     BETWEEN ad.EffectiveDateFrom AND ad.EffectiveDateTill
    LEFT JOIN tz_dds.Verification             v   ON v.Account_RK              = app.Account_RK
                                                 AND app.EffectiveDateFrom     BETWEEN v.EffectiveDateFrom  AND  v.EffectiveDateTill;

    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
          ScoringDatetime = sil.RequestDate
        , IsAutoApprove   = IIF(AAAmount>0, 1, 0)
    FROM #tz_Application_prepare app 
    LEFT JOIN (
        SELECT app.Id, MIN(RequestDate) AS RequestDate, SUM(CAST(sil.IsAutoApproved AS INT)) AS AAAmount
        FROM       tz_dds.SandboxInputLog  sil
        INNER JOIN #tz_Application_prepare app ON app.Account_RK        = sil.Account_RK
                                              AND app.EffectiveDateFrom BETWEEN sil.EffectiveDateFrom AND sil.EffectiveDateTill
        GROUP BY app.Id
    ) sil ON sil.Id = app.Id;

    --Тип клиента. По выдачам
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET 
          ClientType       = IIF(ISNULL(app3.LoanAmount, 0) = 0, 'Новый', 'Повторный')
        , ClientTypeDetail = CASE
                                 WHEN app.Product = 'PDL' THEN IIF(ISNULL(app3.LoanAmountPDL, 0)>0, 'Повторный PDL', 'Новый')
                                 WHEN app.Product = 'IL'  THEN IIF(ISNULL(app3.LoanAmountIL , 0)>0, 'Повторный IL',  'Новый')
                             END
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT
              app.Id
            , COUNT(DISTINCT anl.Account_RK)                                AS LoanAmount
            , COUNT(DISTINCT IIF(p.ProductType_RK=3, anl.Account_RK, NULL)) AS LoanAmountPDL
            , COUNT(DISTINCT IIF(p.ProductType_RK=2, anl.Account_RK, NULL)) AS LoanAmountIL
        FROM       #tz_Application_prepare  app
        INNER JOIN tz_dds.[Application]     anl  ON anl.Customer_RK       =  app.CUSTOMER_RK
											    AND anl.Account_RK        != app.ACCOUNT_RK
                                                AND anl.PaymentDate       <  app.CreatedDatetime
                                                --AND app.EffectiveDateFrom BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        INNER JOIN tz_dds.Product           p    ON anl.Product_RK        =  p.Product_RK
                                                --AND app.EffectiveDateFrom BETWEEN p.EffectiveDateFrom AND p.EffectiveDateTill
        GROUP BY app.Id
    ) app3 ON app3.Id = app.Id;

    --первая ли заявка
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        IsFirstApplication = IIF(ISNULL(ApplicationAmount, 0)>0, 0, 1)
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT app.Id, COUNT(DISTINCT anl.Account_RK) AS ApplicationAmount
        FROM       tz_dds.[Application]    anl
        INNER JOIN #tz_Application_prepare app ON anl.Customer_RK       = app.CUSTOMER_RK
                                              AND anl.Account_RK        != app.ACCOUNT_RK
                                              AND anl.CreatedOn         < app.CreatedDatetime
                                              --AND app.EffectiveDateFrom BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        GROUP BY app.Id
    ) app2 ON app2.Id = app.Id;

    --Заявок за день
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        NumAppDay = ISNULL(NumLoan.NumAppDay, 0) + 1
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT app.Id, COUNT(DISTINCT anl.Account_RK) AS NumAppDay
        FROM       tz_dds.[Application]    anl
        INNER JOIN #tz_Application_prepare app ON anl.Customer_RK       =  app.CUSTOMER_RK
                                              AND anl.Account_RK        != app.ACCOUNT_RK
                                              AND anl.CreatedOn         <  app.CreatedDatetime
                                              AND anl.CreatedOnDT       >= CAST(app.CreatedDatetime AS DATE)
                                              AND app.EffectiveDateFrom BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        GROUP BY app.Id
    ) NumLoan ON app.Id = NumLoan.Id;

    --Закрытые займы
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
          NumLoans    = ISNULL(NumLoan.NumLoans,    0)
        , NumLoansPdl = ISNULL(NumLoan.NumLoansPDL, 0)
        , NumLoansIL  = ISNULL(NumLoan.NumLoansIL,  0)
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT 
              app.Id
            , COUNT(DISTINCT anl.Account_RK)                                AS NumLoans
            , COUNT(DISTINCT IIF(p.ProductType_RK=3, anl.Account_RK, NULL)) AS NumLoansPDL
            , COUNT(DISTINCT IIF(p.ProductType_RK=2, anl.Account_RK, NULL)) AS NumLoansIL
        FROM       tz_dds.[Application]    anl
        INNER JOIN #tz_Application_prepare app ON anl.Customer_RK          =  app.CUSTOMER_RK
                                              AND anl.Account_RK           != app.ACCOUNT_RK
                                              AND anl.PaymentDate          <  app.CreatedDatetime
                                              AND anl.ApplicationStatus_RK = 12--Закрыт
                                              --AND app.EffectiveDateFrom BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
        INNER JOIN tz_dds.Product          p   ON anl.Product_RK           = p.Product_RK
                                              --AND app.EffectiveDateFrom BETWEEN p.EffectiveDateFrom AND p.EffectiveDateTill
        GROUP BY app.Id
    ) NumLoan ON app.Id = NumLoan.Id;

    --Клиент отклонил заявку
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        IsClientReject = IIF(rej.Id IS NULL, 0, 1)
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT app.Id
        FROM       tz_dds.[Application]    anl
        INNER JOIN #tz_Application_prepare app ON anl.Account_RK           = app.ACCOUNT_RK
										      AND anl.ApplicationStatus_RK = 3-- Отказ клиента--TODO:брать максимальную по Application_audit
                                              AND app.EffectiveDateFrom    BETWEEN anl.EffectiveDateFrom AND anl.EffectiveDateTill
    ) rej ON app.Id = rej.Id;

    --Одобрение
    --DECLARE @SliceDate DATE = '20240101'
    DROP TABLE IF EXISTS #tz_Application_prepare_appl;
	SELECT *
	INTO #tz_Application_prepare_appl
	FROM (
		SELECT  
			  a.ACCOUNT_RK
			, a.FillingDateDT
			, a.EffectiveDateFrom
			, aa.Status_New_RK                                                                 AS Status_RK
			, ap.ApplicationDecision_RK
			, ap.DecisionReason_RK

			, ast.[Name]                                                                       AS StatusName
			, ad.[Name]                                                                        AS DesicionName
			, adr.[Name]                                                                       AS DesicionReasonName
			, ROW_NUMBER() OVER (PARTITION BY a.ACCOUNT_RK ORDER BY aa.EffectiveDateFrom DESC) AS rn
		FROM       #tz_Application_prepare    a
		INNER JOIN tz_dds.[Application]       ap  ON a.ACCOUNT_RK              = ap.Account_RK
												-- AND a.EffectiveDateFrom       BETWEEN ap.EffectiveDateFrom AND ap.EffectiveDateTill
		INNER JOIN tz_dds.ApplicationAudit    aa  ON aa.ACCOUNT_RK             = a.ACCOUNT_RK
												 AND a.EffectiveDateFrom       BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
		LEFT  JOIN tz_dds.ApplicationStatus   ast ON ast.ApplicationStatus_RK  = aa.Status_New_RK
												 AND a.EffectiveDateFrom       BETWEEN ast.EffectiveDateFrom AND ast.EffectiveDateTill
		LEFT  JOIN tz_dds.ApplicationDecision ad  ON ad.ApplicationDecision_RK = ap.ApplicationDecision_RK
												 AND a.EffectiveDateFrom       BETWEEN ad.EffectiveDateFrom AND ad.EffectiveDateTill
		LEFT  JOIN tz_dds.DecisionReasons     adr ON adr.DecisionReason_RK     = ap.DecisionReason_RK
												 AND a.EffectiveDateFrom       BETWEEN adr.EffectiveDateFrom AND adr.EffectiveDateTill
	) d
	WHERE d.rn = 1;

	DROP TABLE IF EXISTS #tz_Application_prepare_appl_verif;
	SELECT *
	INTO #tz_Application_prepare_appl_verif
	FROM (
		SELECT
			  a.ACCOUNT_RK
			, vlr.Name
			, IIF(vli.Name = 'Дополнительная проверка по скорингу (автоматическая)', v.Comment, vli.Name) AS Decision
			, v.Position                                                                                  AS CheckOrd
			, ROW_NUMBER() OVER (PARTITION BY a.ACCOUNT_RK ORDER BY v.Position)                           AS rn
		FROM #tz_Application_prepare_appl       a
		LEFT JOIN tz_dds.Verification           v   ON a.ACCOUNT_RK                = v.Account_RK
												   AND a.EffectiveDateFrom         BETWEEN v.EffectiveDateFrom AND v.EffectiveDateTill
		LEFT JOIN tz_dds.VerificationListItem   vli ON v.VerificationListItem_RK   = vli.VerificationListItem_RK
												   AND a.EffectiveDateFrom         BETWEEN vli.EffectiveDateFrom AND vli.EffectiveDateTill
		LEFT JOIN tz_dds.VerificationListResult vlr ON v.VerificationListResult_RK = vlr.VerificationListResult_RK
												   AND a.EffectiveDateFrom         BETWEEN vlr.EffectiveDateFrom AND vlr.EffectiveDateTill
		WHERE 1=1
			--AND vlr.Name = 'Не подтвержден'
			AND (
					(
						FillingDateDT>='2022-06-09' 
						AND (vli.Name IS NULL OR vli.Name!='Проверка по информационным сервисам') 
					) 
					OR FillingDateDT<'2022-06-09'
				)
	) s
	WHERE s.rn = 1;

	UPDATE ap SET
	    IsApprove = 
		    CASE 
		        WHEN a.StatusName in ('В процессе оформления', 'На рассмотрении') THEN 0
		        WHEN a.DesicionName = 'Заявка утверждена'and  (a.DesicionReasonName = 'Автоматическое одобрение' OR  a.DesicionReasonName = 'Все проверки пройдены успешно') THEN 1
		        WHEN a.DesicionReasonName = 'Индивидуальное решение'and  (a.StatusName in ('Действующий', 'Продан') OR v.Decision IS NULL) THEN 1
		    END
	FROM       #tz_Application_prepare_appl       a
	INNER JOIN #tz_Application_prepare            ap ON a.ACCOUNT_RK = ap.ACCOUNT_RK
	INNER JOIN #tz_Application_prepare_appl_verif v  ON a.ACCOUNT_RK = v.ACCOUNT_RK;
    /*
    UPDATE app SET 
    --    IsApprove = CASE
    --                    WHEN a.ApplicationDecision_RK = 2/*Заявка утверждена*/      AND a.DecisionReason_RK IN (8, 5/*Автоматическое одобрение, Все проверки пройдены успешно*/) THEN 1
    --                    WHEN a.DecisionReason_RK      = 3/*Индивидуальное решение*/ AND a.ApplicationStatus_RK IN (8, 10/*Продан, Действующий*/) OR v.Decision IS NULL           THEN 1
    --                                                                                                                                                                             ELSE 0
    --                END
    --FROM       #tz_Application_prepare app
    --INNER JOIN tz_dds.[Application] a   ON app.ACCOUNT_RK        = a.Account_RK
    --                                   AND app.EffectiveDateFrom BETWEEN a.EffectiveDateFrom AND a.EffectiveDateTill
    --LEFT  JOIN (
    --    SELECT 
    --          app.Id
    --        , v.VerificationListItem_RK                                           AS Decision
    --        , ROW_NUMBER() OVER (PARTITION BY app.Account_RK ORDER BY v.Position) AS rn
    --    FROM       #tz_Application_prepare app
    --    INNER JOIN tz_dds.Verification    v ON app.ACCOUNT_RK        = v.ACCOUNT_RK
    --                                       AND app.EffectiveDateFrom BETWEEN v.EffectiveDateFrom AND v.EffectiveDateTill
    --    WHERE   v.VerificationListResult_RK = 4 --Не подтвержден
    --        AND 
    --        (
    --           (
    --                  app.FillingDateDT>='2022-06-09' 
    --              AND 
    --              (
    --                     v.VerificationListItem_RK IS NULL 
    --                  OR v.VerificationListItem_RK != 1/*Проверка по информационным сервисам*/
    --              ) 
    --           )
    --           OR 
    --           app.FillingDateDT<'2022-06-09'
    --        )
    --) v ON v.Id = app.Id 
    --   AND v.rn = 1;
    */
    --одобрение по типу продукта
    --дата и время финального одобрения компании по заявке
    --дата и время финального отказа компании по заявке
    UPDATE app SET
          IsApprovePDL    = IIF(app.Product = 'PDL', app.IsApprove, 0)
        , IsApproveIL     = IIF(app.Product = 'IL',  app.IsApprove, 0)
        , ApproveDatetime = IIF(app.IsApprove = 1, app.FinalDecisionDatetime, NULL)
        , RejectDatetime  = IIF(app.IsApprove = 0, NULL, app.FinalDecisionDatetime)
    FROM #tz_Application_prepare app;

    --Адрес фактический или проживания
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        RegAct = r.[Name]
    FROM #tz_Application_prepare app
    INNER JOIN (
        SELECT app.Id, rf.Name, ROW_NUMBER() OVER (PARTITION BY app.Account_RK ORDER BY caf.EffectiveDateFrom DESC) AS rn
        FROM       #tz_Application_prepare  app
        INNER JOIN tz_dds.ContactAddress caf ON caf.Customer_RK         = app.CUSTOMER_RK
                                            AND app.EffectiveDateFrom   BETWEEN caf.EffectiveDateFrom AND caf.EffectiveDateTill
                                            AND caf.AddressType_RK      IN (3, 6)
        INNER JOIN tz_dds.Region         rf  ON rf.Region_RK            = caf.Region_RK
                                            AND app.EffectiveDateFrom   BETWEEN rf.EffectiveDateFrom AND rf.EffectiveDateTill
    ) r ON r.Id = app.Id
       AND r.rn = 1;

    --Адрес регистрации
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        RegReg = r.[Name]
    FROM #tz_Application_prepare app
    INNER JOIN (
        SELECT app.Id, rf.[Name], ROW_NUMBER() OVER (PARTITION BY app.Account_RK ORDER BY caf.EffectiveDateFrom DESC) AS rn
        FROM       #tz_Application_prepare  app
        INNER JOIN tz_dds.ContactAddress caf ON caf.Customer_RK         = app.CUSTOMER_RK
                                            AND app.EffectiveDateFrom   BETWEEN caf.EffectiveDateFrom AND caf.EffectiveDateTill
										    AND caf.AddressType_RK      = 4
        INNER JOIN tz_dds.Region         rf  ON rf.Region_RK            = caf.Region_RK
                                            AND app.EffectiveDateFrom   BETWEEN rf.EffectiveDateFrom AND rf.EffectiveDateTill
    ) r ON r.Id = app.Id
       AND r.rn = 1;

    --Займ был в новой СПР
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        IsNewSpr = IIF(af.SprId IS NOT NULL, 1, 0)
    FROM      #tz_Application_prepare  app
    LEFT JOIN tz_dds.Application_final af  ON af.Account_RK         = app.ACCOUNT_RK
                                          AND app.EffectiveDateFrom BETWEEN af.EffectiveDateFrom AND af.EffectiveDateTill;

    --есть ли клиент в Быстроденьгах. По ФИО
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        HasBD = 1
    FROM #tz_Application_prepare         app
    INNER JOIN tz_dds.BD_MaxContactDeals bd  ON bd.FIO = app.FIO COLLATE DATABASE_DEFAULT
                                            AND ABS(DATEDIFF(DAY, TRY_CAST(app.BirthDate AS DATETIME), TRY_CAST(bd.BirthDate AS DATETIME)))<=1
                                            AND app.EffectiveDateFrom BETWEEN bd.EffectiveDateFrom AND bd.EffectiveDateTill
    WHERE   app.HasBD   = 0
        AND bd.NumLoans > 0;

    --есть ли клиент в Быстроденьгах. По паспорту
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        HasBD = 1
    FROM       #tz_Application_prepare   app
    INNER JOIN tz_dds.BD_MaxContactDeals bd  ON bd.PassportSeries     = app.PassportSeries COLLATE DATABASE_DEFAULT
                                            AND bd.PassportNumber     = app.PassportNumber COLLATE DATABASE_DEFAULT
                                            AND app.EffectiveDateFrom BETWEEN bd.EffectiveDateFrom AND bd.EffectiveDateTill
    WHERE   app.HasBD   = 0
        AND bd.NumLoans > 0;

    --процентная ставка для IL
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        InterestRate = ps.APSK
    FROM       #tz_Application_prepare app
    INNER JOIN 
    (
    --DECLARE @SliceDate DATE = '20240101'
        SELECT IIF(pr.StartRate > 1 AND a.FullOfferSum - a.OfferSum  = 0, 0, ps.APSK) AS APSK, app.Id, ROW_NUMBER() OVER (PARTITION BY app.ACCOUNT_RK ORDER BY ps.PayDate) AS rn
        FROM       tz_dds.PaymentSchedule ps
        INNER JOIN #tz_Application_prepare   app  ON ps.Account_RK         = app.ACCOUNT_RK
        LEFT  JOIN tz_dds.[Application]      a    ON app.ACCOUNT_RK        = a.Account_RK
                                                 AND app.EffectiveDateFrom BETWEEN a.EffectiveDateFrom AND a.EffectiveDateTill
        LEFT  JOIN tz_dds.[Product]          pr   ON pr.Product_RK         = a.Product_RK
                                                 AND app.EffectiveDateFrom BETWEEN pr.EffectiveDateFrom AND pr.EffectiveDateTill
        WHERE   app.Product           = 'IL'
            AND ps.APSK               > 0
            AND app.EffectiveDateFrom BETWEEN ps.EffectiveDateFrom AND ps.EffectiveDateTill
    ) ps ON ps.Id = app.Id
        AND ps.rn = 1;

    --процентная ставка для льготного периода
    UPDATE app SET
        InterestRate = 0.0
    FROM #tz_Application_prepare app
    WHERE  
        (
            FullCostStartCalc > app.EffectiveDateFrom
                OR
            InterestRate      = 0.0
        );

    --Идентификация
    --TODO:pbi.Identification?
    --СМЭВ
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        SMEVIdentification = v.SMEVIdentification
    FROM #tz_Application_prepare app
    INNER JOIN (
        --DECLARE @SliceDate DATE = '20240101'
        SELECT app.Id, MAX(v.EffectiveDateFrom) AS SMEVIdentification, IIF(COUNT(*) >1 AND COUNT(*) = SUM(IIF(v.Confirmed=1,1,0)),1,0) AS IsSigned
        FROM       #tz_Application_prepare           app
        INNER JOIN tz_dds.VwCheckBankScoringValue    v   ON app.ACCOUNT_RK        = v.Account_RK
                                                        AND app.EffectiveDateFrom BETWEEN v.EffectiveDateFrom AND v.EffectiveDateTill
        WHERE v.Name IN ('Проверка паспорта ', 'Проверка СНИЛС ')
        GROUP BY app.Id
    ) v ON v.Id = app.Id;

    --ЕСИА. TODO: или по ApplicationIntegration?
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        ESIAIdentification = v.ESIAIdentification
    FROM #tz_Application_prepare                 app
    INNER JOIN (
        SELECT app.Id, ci.CreatedOn AS ESIAIdentification, ci.TrustedEsia, ROW_NUMBER() OVER (PARTITION BY ci.Customer_RK ORDER BY ci.CreatedOn DESC) AS rn
        FROM       #tz_Application_prepare    app
        INNER JOIN tz_dds.ContactIntegration  ci   ON app.CUSTOMER_RK       = ci.Customer_RK
                                                  AND app.EffectiveDateFrom BETWEEN ci.EffectiveDateFrom AND ci.EffectiveDateTill
    ) v ON v.Id          = app.Id
       AND v.rn          = 1
       AND v.TrustedEsia = 1;

    --Сканы или доки
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        DocsIdentification = v.DocsIdentification
    FROM #tz_Application_prepare                 app
    INNER JOIN (
        SELECT app.Id, COALESCE(aa.ApprovalDate, aa.EffectiveDateFrom) AS DocsIdentification
        FROM       #tz_Application_prepare    app
        INNER JOIN tz_dds.ApplicationApproval aa  ON app.ACCOUNT_RK        = aa.Account_RK
                                                 AND app.EffectiveDateFrom BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
        INNER JOIN tz_dds.Contact             c   ON c.Customer_RK         = aa.SetCustomer_RK
                                                 AND app.EffectiveDateFrom BETWEEN c.EffectiveDateFrom AND c.EffectiveDateTill
        WHERE   c.[Name]             != 'Автоматический Верификатор'
            AND aa.ApprovalStatus_RK =  18--Положительная
    ) v ON v.Id = app.Id;

    --ПФР+ФНС
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        PFRIdentification     = IIF(f.Result = 1 AND p.Result = 1, p.CreatedOn, NULL)
    FROM #tz_Application_prepare             app
    LEFT JOIN (
        --DECLARE @SliceDate DATE = '20240101'
        SELECT app.Id, asl.EffectiveDateFrom AS CreatedOn, asl.Result, ROW_NUMBER() OVER (PARTITION BY asl.Account_RK ORDER BY asl.EffectiveDateFrom DESC) AS rn
        FROM       #tz_Application_prepare    app
        INNER JOIN tz_dds.AgredatorServiceLog asl ON asl.Account_RK            = app.ACCOUNT_RK
                                                 AND asl.[Service]             = 'fns-paspinn'
                                                 AND app.EffectiveDateFrom     BETWEEN asl.EffectiveDateFrom AND asl.EffectiveDateTill
        INNER JOIN tz_dds.AgredatorRequestLog arl ON asl.AgredatorServiceLog_RK = arl.AgredatorServiceLog_RK
                                                 AND app.EffectiveDateFrom     BETWEEN arl.EffectiveDateFrom AND arl.EffectiveDateTill
        WHERE   arl.RequestUrl = 'callback'
    ) f ON f.Id = app.Id
       AND f.rn = 1
    LEFT JOIN (
        SELECT app.Id, asl.EffectiveDateFrom AS CreatedOn, asl.Result, ROW_NUMBER() OVER (PARTITION BY asl.Account_RK ORDER BY asl.EffectiveDateFrom DESC) AS rn
        FROM       #tz_Application_prepare    app
        INNER JOIN tz_dds.AgredatorServiceLog asl ON asl.Account_RK             = app.ACCOUNT_RK
                                                 AND asl.[Service]              = 'pfr-snils-validation'
                                                 AND app.EffectiveDateFrom      BETWEEN asl.EffectiveDateFrom AND asl.EffectiveDateTill
        INNER JOIN tz_dds.AgredatorRequestLog arl ON asl.AgredatorServiceLog_RK = arl.AgredatorRequestLog_RK
                                                 AND app.EffectiveDateFrom      BETWEEN arl.EffectiveDateFrom AND arl.EffectiveDateTill
        WHERE   arl.RequestUrl ='callback'
    ) p ON p.Id = app.Id
       AND p.rn = 1;

    --Старая идентификация
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        OldIdentification = ai.OldIdentificationDate
    FROM       #tz_Application_prepare       app
    INNER JOIN tz_dds.ApplicationIntegration ai  ON ai.Account_RK         = app.ACCOUNT_RK
                                                AND app.EffectiveDateFrom BETWEEN ai.EffectiveDateFrom AND ai.EffectiveDateTill
    WHERE   ai.CheckBankScoringId IS NOT NULL;

    --флаг загрузки сканов клиентом
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        IsScan = ISNULL(IIF(s.ScanAmount = 2, 1, 0), 0)
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT app.Id, SUM(IIF(pcf.IsNotValid IS NULL, 1, 0)) AS ScanAmount
        FROM      #tz_Application_prepare app
        LEFT JOIN tz_dds.PersCabFile      pcf ON app.ACCOUNT_RK        = pcf.Account_RK
                                             AND app.EffectiveDateFrom BETWEEN pcf.EffectiveDateFrom AND pcf.EffectiveDateTill
                                             AND pcf.PersCabFileTypeId IN ('AF1E9FBC-E315-4214-B458-5EF818B7DA8A','574D5F75-D49F-430A-B990-DEF93A78F6DE')
        GROUP BY app.Id
    ) s ON app.Id = s.Id;

    --флаг прохождения полной индентификации клиента
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        IsPI = ISNULL(IIF(ai.IsAI = 1 AND s.ScanAmount=2, 1, 0), 0)
    FROM #tz_Application_prepare app
    LEFT JOIN (
        SELECT app.Id, IIF(ai.IdentificationByDigitalProfile = 1 AND ai.IdentificationByTinkoffID = 1, 1, 0) AS IsAI
        FROM      #tz_Application_prepare       app
        LEFT JOIN tz_dds.ApplicationIntegration ai  ON app.ACCOUNT_RK        = ai.Account_RK
                                                   AND app.EffectiveDateFrom BETWEEN ai.EffectiveDateFrom AND ai.EffectiveDateTill
    ) ai ON app.Id = ai.Id
    LEFT JOIN (
        SELECT app.Id, SUM(IIF(IsNotValid = 0, 1, 0)) AS ScanAmount
        FROM      #tz_Application_prepare app
        LEFT JOIN tz_dds.PersCabFile      pcf ON app.ACCOUNT_RK        = pcf.Account_RK
                                             AND app.EffectiveDateFrom BETWEEN pcf.EffectiveDateFrom AND pcf.EffectiveDateTill
                                             AND pcf.PersCabFileTypeId IN ('AF1E9FBC-E315-4214-B458-5EF818B7DA8A', '574D5F75-D49F-430A-B990-DEF93A78F6DE')
        GROUP BY app.Id
    ) s ON app.Id = s.Id;

    --Срок и сумма по умолчанию
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
          DefaultTerm = IIF(ClientType = 'Новый', new.DefaultPeriod, rpt.DefaultPeriod)
        , DefaultAmt  = IIF(ClientType = 'Новый', new.DefaultSum   , rpt.DefaultSum)
    FROM      #tz_Application_prepare           app
    CROSS APPLY (
        SELECT *
        FROM (
            SELECT cs.EffectiveDateFrom, cs.EffectiveDateTill, cs.DefaultSum, cs.DefaultPeriod, ROW_NUMBER() OVER (PARTITION BY cs.EffectiveDateFrom, cs.EffectiveDateTill ORDER BY cs.DefaultSum DESC) AS rn
            FROM tz_dds.CalculatorSetup cs
            WHERE cs.PossibilityRegistrationForm = 1
        ) s
        WHERE s.rn = 1
    ) new
    CROSS APPLY (
        SELECT *
        FROM (
            SELECT cs.EffectiveDateFrom, cs.EffectiveDateTill, cs.DefaultSum, cs.DefaultPeriod, ROW_NUMBER() OVER (PARTITION BY cs.EffectiveDateFrom, cs.EffectiveDateTill ORDER BY cs.DefaultSum DESC) AS rn
            FROM tz_dds.CalculatorSetup cs
            WHERE cs.PossibilityAuthForm = 1
                --@SliceDate BETWEEN cs.EffectiveDateFrom AND cs.EffectiveDateTill
        ) s
        WHERE s.rn = 1
    ) rpt
    WHERE 
        app.EffectiveDateFrom BETWEEN new.EffectiveDateFrom AND new.EffectiveDateTill
            AND
        app.EffectiveDateFrom BETWEEN rpt.EffectiveDateFrom AND rpt.EffectiveDateTill;

    --Время попадания в серую зону
    --DECLARE @SliceDate DATE = '20240101'
    UPDATE app SET
        GreyzoneDatetime = aa.GreyzoneDatetime
    FROM #tz_Application_prepare app
    INNER JOIN (
        SELECT app.Id, MIN(aa.CreatedOn) AS GreyzoneDatetime
        FROM       #tz_Application_prepare    app
        INNER JOIN tz_dds.ApplicationApproval aa  ON app.ACCOUNT_RK        = aa.Account_RK
                                                 AND app.EffectiveDateFrom BETWEEN aa.EffectiveDateFrom AND aa.EffectiveDateTill
        GROUP BY app.Id
    ) aa ON aa.Id = app.Id;

    --флаг автовыдачи
    UPDATE app SET
        IsAutoIssue = IIF(app.IssueDatetime IS NOT NULL AND ai.ApplicationIntegrationId IS NOT NULL AND aa.ApplicationApprovalId IS NOT NULL, 1, 0)
    FROM       #tz_Application_prepare      app
    LEFT JOIN tz_dds.ApplicationIntegration ai  ON ai.Account_RK         = app.ACCOUNT_RK
                                               AND app.EffectiveDateFrom BETWEEN ai.EffectiveDateFrom AND ai.EffectiveDateTill
                                               AND ai.ProductChanged     = 0 -- не менялся продукт
    LEFT JOIN tz_dds.ApplicationApproval    aa  ON app.ACCOUNT_RK        = aa.Account_RK
                                               AND aa.AuthorId           = '580419CC-07BA-4082-A499-6E86C5E03C82'  -- ScoringAutoVerifier
											   AND aa.ApprovalStatus_RK  = 18;  -- Положительная

    /*
    Находим в MART последнюю версию займа с EffectiveTo=5999
    1. Если нет вообще в витрине, то вставляем полностью. Дата с = dds.EffectiveFrom, дата по = dds.EffectiveTo
    2. Те которые есть
        а. Чем-то отличаются. В старой меняем дату по на dds.EffectiveFrom - 2мс, новый вставляем. Дата с = dds.EffectiveFrom, дата по = dds.EffectiveTo
        б. Ничем не отличаются - ничего не делаем.
    */

    --declare @MAX_EFFECTIVE_DATE date=CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE);
    DROP TABLE IF EXISTS #tz_Application_prepare_last;
    CREATE TABLE #tz_Application_prepare_last
    (
          ACCOUNT_RK        BIGINT
        , EffectiveDateFrom DATETIME
        , Id                BIGINT
    );
    CREATE CLUSTERED    INDEX PK_#tz_Application_prepare_last    ON #tz_Application_prepare_last(ACCOUNT_RK);
    CREATE NONCLUSTERED INDEX IX_#tz_Application_prepare_last_Id ON #tz_Application_prepare_last(Id);

    INSERT INTO #tz_Application_prepare_last(ACCOUNT_RK, EffectiveDateFrom, Id)
    SELECT app.ACCOUNT_RK, app.EffectiveDateFrom, app.Id
    FROM       pbi.Application         app
    INNER JOIN #tz_Application_prepare prp ON prp.ACCOUNT_RK = app.ACCOUNT_RK
    WHERE   app.EffectiveDateTill = @MAX_EFFECTIVE_DATE;

    --Вносим те, которые были ранее, но изменились
    DELETE FROM pbi.[Application] WHERE BatchId = @BatchId;

    INSERT INTO pbi.[Application](BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, DealNumber, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, IsFirstApplication, NumAppDay, NumLoans, NumLoansPdl, NumLoansIL, CreatedDatetime, FillingDatetime, ScoringDatetime, GreyzoneDatetime, FinalDecisionDatetime, ApproveDatetime, RejectDatetime, IssueDatetime, DecisionGR, Decision, IsClientReject, IsPI, IsUprid, IsScan, IsResigning, IsAutoApprove, IsAutoIssue, CommentVerifier, IsApprove, IsApprovePDL, IsApproveIL, ApproveAmt, ApproveAmtPDL, ApproveAmtIL, TimeFillingApplication, DefaultProduct, DefaultTerm, DefaultAmt, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, LoanAmt, Product, ProductDetail, InterestRate, TermContract, PhoneNumber, Surname, Name, Patronymic, PassportSeries, PassportNumber, BirthDate, Age, RegAct, RegReg, MaritalStatus, Education, Gender, TypeEmployment, WorkPosition, Step_0, Step_1, Step_2, Step_3, Step_4, Step_5, Step_6, Step_7, SMEVIdentification, ESIAIdentification, OldIdentification, DocsIdentification, PFRIdentification, IsNewSpr, Email, FinancingInstrumentId, BIN, LastFourDigits, CardId, ExpiresOn, NameCommentFinancinginstrument, FIO, FullCostStartCalc, FillingDateDT)
    SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.ApplicationId, p.ACCOUNT_RK, p.ContactId, p.CUSTOMER_RK, p.DealNumber, p.HasBD, p.LandingSource, p.MarketingSource, p.MarketingWeb, p.ClientType, p.ClientTypeDetail, p.IsFirstApplication, p.NumAppDay, p.NumLoans, p.NumLoansPdl, p.NumLoansIL, p.CreatedDatetime, p.FillingDatetime, p.ScoringDatetime, p.GreyzoneDatetime, p.FinalDecisionDatetime, p.ApproveDatetime, p.RejectDatetime, p.IssueDatetime, p.DecisionGR, p.Decision, p.IsClientReject, p.IsPI, p.IsUprid, p.IsScan, p.IsResigning, p.IsAutoApprove, p.IsAutoIssue, p.CommentVerifier, p.IsApprove, p.IsApprovePDL, p.IsApproveIL, p.ApproveAmt, p.ApproveAmtPDL, p.ApproveAmtIL, p.TimeFillingApplication, p.DefaultProduct, p.DefaultTerm, p.DefaultAmt, p.RequestProduct, p.RequestProductDetail, p.RequestTerm, p.RequestAmt, p.LoanAmt, p.Product, p.ProductDetail, p.InterestRate, p.TermContract, p.PhoneNumber, p.Surname, p.Name, p.Patronymic, p.PassportSeries, p.PassportNumber, p.BirthDate, p.Age, p.RegAct, p.RegReg, p.MaritalStatus, p.Education, p.Gender, p.TypeEmployment, p.WorkPosition, p.Step_0, p.Step_1, p.Step_2, p.Step_3, p.Step_4, p.Step_5, p.Step_6, p.Step_7, p.SMEVIdentification, p.ESIAIdentification, p.OldIdentification, p.DocsIdentification, p.PFRIdentification, p.IsNewSpr, p.Email, p.FinancingInstrumentId, p.BIN, p.LastFourDigits, p.CardId, p.ExpiresOn, p.NameCommentFinancinginstrument, p.FIO, p.FullCostStartCalc, p.FillingDateDT
    FROM (
        SELECT ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, DealNumber, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, IsFirstApplication, NumAppDay, NumLoans, NumLoansPdl, NumLoansIL, CreatedDatetime, FillingDatetime, ScoringDatetime, GreyzoneDatetime, FinalDecisionDatetime, ApproveDatetime, RejectDatetime, IssueDatetime, DecisionGR, Decision, IsClientReject, IsPI, IsUprid, IsScan, IsResigning, IsAutoApprove, IsAutoIssue, CommentVerifier, IsApprove, IsApprovePDL, IsApproveIL, ApproveAmt, ApproveAmtPDL, ApproveAmtIL, TimeFillingApplication, DefaultProduct, DefaultTerm, DefaultAmt, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, LoanAmt, Product, ProductDetail, InterestRate, TermContract, PhoneNumber, Surname, Name, Patronymic, PassportSeries, PassportNumber, BirthDate, Age, RegAct, RegReg, MaritalStatus, Education, Gender, TypeEmployment, WorkPosition, Step_0, Step_1, Step_2, Step_3, Step_4, Step_5, Step_6, Step_7, SMEVIdentification, ESIAIdentification, OldIdentification, DocsIdentification, PFRIdentification, IsNewSpr, Email, FinancingInstrumentId, BIN, LastFourDigits, CardId, ExpiresOn, NameCommentFinancinginstrument, FIO, FullCostStartCalc, FillingDateDT
        FROM (
            SELECT prp.*
            FROM       #tz_Application_prepare_last l
            INNER JOIN #tz_Application_prepare      prp ON l.ACCOUNT_RK = prp.ACCOUNT_RK
        ) prp
        EXCEPT
        (
            SELECT ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, DealNumber, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, IsFirstApplication, NumAppDay, NumLoans, NumLoansPdl, NumLoansIL, CreatedDatetime, FillingDatetime, ScoringDatetime, GreyzoneDatetime, FinalDecisionDatetime, ApproveDatetime, RejectDatetime, IssueDatetime, DecisionGR, Decision, IsClientReject, IsPI, IsUprid, IsScan, IsResigning, IsAutoApprove, IsAutoIssue, CommentVerifier, IsApprove, IsApprovePDL, IsApproveIL, ApproveAmt, ApproveAmtPDL, ApproveAmtIL, TimeFillingApplication, DefaultProduct, DefaultTerm, DefaultAmt, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, LoanAmt, Product, ProductDetail, InterestRate, TermContract, PhoneNumber, Surname, Name, Patronymic, PassportSeries, PassportNumber, BirthDate, Age, RegAct, RegReg, MaritalStatus, Education, Gender, TypeEmployment, WorkPosition, Step_0, Step_1, Step_2, Step_3, Step_4, Step_5, Step_6, Step_7, SMEVIdentification, ESIAIdentification, OldIdentification, DocsIdentification, PFRIdentification, IsNewSpr, Email, FinancingInstrumentId, BIN, LastFourDigits, CardId, ExpiresOn, NameCommentFinancinginstrument, FIO, FullCostStartCalc, FillingDateDT
            FROM (
                SELECT app.*
                FROM       pbi.[Application]            app
                INNER JOIN #tz_Application_prepare_last l   ON l.Id = app.Id
            ) l
        )
    ) n
    INNER JOIN #tz_Application_prepare      p ON p.ACCOUNT_RK = n.ACCOUNT_RK;

    --предыдущим записям уменьшаем "Дату актуальности до"
    UPDATE old SET
        EffectiveDateTill = DATEADD(MS, -2, new.EffectiveDateFrom)
    FROM       pbi.Application              new
    INNER JOIN #tz_Application_prepare_last l   ON l.ACCOUNT_RK = new.ACCOUNT_RK
                                               AND new.BatchId  = @BatchId
    INNER JOIN pbi.Application              old ON l.Id         = old.Id;

    --Те, которых вообще не было
    INSERT INTO pbi.Application(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, ApplicationId, ACCOUNT_RK, ContactId, CUSTOMER_RK, DealNumber, HasBD, LandingSource, MarketingSource, MarketingWeb, ClientType, ClientTypeDetail, IsFirstApplication, NumAppDay, NumLoans, NumLoansPdl, NumLoansIL, CreatedDatetime, FillingDatetime, ScoringDatetime, GreyzoneDatetime, FinalDecisionDatetime, ApproveDatetime, RejectDatetime, IssueDatetime, DecisionGR, Decision, IsClientReject, IsPI, IsUprid, IsScan, IsResigning, IsAutoApprove, IsAutoIssue, CommentVerifier, IsApprove, IsApprovePDL, IsApproveIL, ApproveAmt, ApproveAmtPDL, ApproveAmtIL, TimeFillingApplication, DefaultProduct, DefaultTerm, DefaultAmt, RequestProduct, RequestProductDetail, RequestTerm, RequestAmt, LoanAmt, Product, ProductDetail, InterestRate, TermContract, PhoneNumber, Surname, Name, Patronymic, PassportSeries, PassportNumber, BirthDate, Age, RegAct, RegReg, MaritalStatus, Education, Gender, TypeEmployment, WorkPosition, Step_0, Step_1, Step_2, Step_3, Step_4, Step_5, Step_6, Step_7, SMEVIdentification, ESIAIdentification, OldIdentification, DocsIdentification, PFRIdentification, IsNewSpr, Email, FinancingInstrumentId, BIN, LastFourDigits, CardId, ExpiresOn, NameCommentFinancinginstrument, FIO, FullCostStartCalc, FillingDateDT)
    SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.ApplicationId, p.ACCOUNT_RK, p.ContactId, p.CUSTOMER_RK, p.DealNumber, p.HasBD, p.LandingSource, p.MarketingSource, p.MarketingWeb, p.ClientType, p.ClientTypeDetail, p.IsFirstApplication, p.NumAppDay, p.NumLoans, p.NumLoansPdl, p.NumLoansIL, p.CreatedDatetime, p.FillingDatetime, p.ScoringDatetime, p.GreyzoneDatetime, p.FinalDecisionDatetime, p.ApproveDatetime, p.RejectDatetime, p.IssueDatetime, p.DecisionGR, p.Decision, p.IsClientReject, p.IsPI, p.IsUprid, p.IsScan, p.IsResigning, p.IsAutoApprove, p.IsAutoIssue, p.CommentVerifier, p.IsApprove, p.IsApprovePDL, p.IsApproveIL, p.ApproveAmt, p.ApproveAmtPDL, p.ApproveAmtIL, p.TimeFillingApplication, p.DefaultProduct, p.DefaultTerm, p.DefaultAmt, p.RequestProduct, p.RequestProductDetail, p.RequestTerm, p.RequestAmt, p.LoanAmt, p.Product, p.ProductDetail, p.InterestRate, p.TermContract, p.PhoneNumber, p.Surname, p.Name, p.Patronymic, p.PassportSeries, p.PassportNumber, p.BirthDate, p.Age, p.RegAct, p.RegReg, p.MaritalStatus, p.Education, p.Gender, p.TypeEmployment, p.WorkPosition, p.Step_0, p.Step_1, p.Step_2, p.Step_3, p.Step_4, p.Step_5, p.Step_6, p.Step_7, p.SMEVIdentification, p.ESIAIdentification, p.OldIdentification, p.DocsIdentification, p.PFRIdentification, p.IsNewSpr, p.Email, p.FinancingInstrumentId, p.BIN, p.LastFourDigits, p.CardId, p.ExpiresOn, p.NameCommentFinancinginstrument, p.FIO, p.FullCostStartCalc, p.FillingDateDT
    FROM      #tz_Application_prepare      p
    LEFT JOIN #tz_Application_prepare_last l ON p.ACCOUNT_RK = l.ACCOUNT_RK
    WHERE l.ACCOUNT_RK IS NULL;

    DROP TABLE IF EXISTS #tz_Application_prepare, #tz_Application_prepare_last, #tz_Application_prepare_appl_verif;

    UPDATE dbo.MartRegistry SET
        LastLoadDate = GETDATE()
    WHERE MartRegistryId = @MartRegistryId;
END;