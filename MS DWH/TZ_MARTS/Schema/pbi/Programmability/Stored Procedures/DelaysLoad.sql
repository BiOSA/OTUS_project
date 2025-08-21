
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET NOCOUNT ON;

IF OBJECT_ID('tempdb..#Dates') IS NOT NULL DROP TABLE #Dates;
CREATE TABLE #Dates (ProcessDate DATE)

DECLARE 
	  @DateFrom   DATE	= (SELECT MIN(PaymentDateDT) FROM TZ_DDS.tz.Application WHERE PaymentDateDT IS NOT NULL)
	, @DateTill   DATE	= CAST(GETDATE() AS DATE)


WHILE @DateFrom <= @DateTill
BEGIN
	INSERT INTO #Dates
	SELECT @DateFrom
	SET @DateFrom = DATEADD(DAY, 1, @DateFrom)
END


IF OBJECT_ID('tempdb..#Accrual') IS NOT NULL DROP TABLE #Accrual;
	SELECT 
			  a.ApplicationId
			, a.AccrualDateDT
			, IIF(cc.Name = 'Сумма займа' 				, SUM(a.AmountAccrued), 0)	 AS	[OD]
			, IIF(cc.Name = 'Проценты по займу' 		, SUM(a.AmountAccrued), 0)	 AS	[Perc]
			, IIF(cc.Name = 'Пени' 						, SUM(a.AmountAccrued), 0)	 AS	[Peni]
			, IIF(cc.Name = 'Госпошлина' 				, SUM(a.AmountAccrued), 0)	 AS	[State]
	INTO #Accrual
   	FROM TZ_DDS.tz.Accrual a
	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= a.TypeId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
	GROUP BY a.ApplicationId, a.AccrualDateDT, cc.Name


IF OBJECT_ID('tempdb..#Cashflow') IS NOT NULL DROP TABLE #Cashflow;
	SELECT 
		  c.ApplicationId
		, c.ActualDateDT
		, IIF(cc.Name = 'Сумма займа' 				, SUM(c.Amount), 0)	 AS	[OD]
		, IIF(cc.Name = 'Проценты по займу' 		, SUM(c.Amount), 0)	 AS	[Perc]
		, IIF(cc.Name = 'Пени' 						, SUM(c.Amount), 0)	 AS	[Peni]
		, IIF(cc.Name = 'Госпошлина' 				, SUM(c.Amount), 0)	 AS	[State]
	INTO #Cashflow
	FROM TZ_DDS.tz.Cashflow c
	INNER JOIN TZ_DDS.tz.CashflowTypes		ct	ON ct.CashflowTypesId		= c.TypeId		AND ct.Name = 'Приход'
	INNER JOIN TZ_DDS.tz.CashflowStatus		cs	ON cs.CashflowStatusId		= c.StatusId	AND cs.Name = 'Выполнена'
	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= c.CategoryId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
	INNER JOIN TZ_DDS.tz.Application		ap	ON ap.ApplicationId			= c.ApplicationId
	INNER JOIN TZ_DDS.tz.Product			pr	ON ap.ProductId				= ap.ProductId
	INNER JOIN TZ_DDS.tz.ProductType		pt	ON pr.TypeId				= pt.ProductTypeId AND pt.Name = 'Краткосрочный заём' 
	GROUP BY c.ApplicationId, c.ActualDateDT, cc.Name


IF OBJECT_ID('tempdb..#Balance') IS NOT NULL DROP TABLE #Balance;
	SELECT 
		  c.ApplicationId
		, c.ActualDateDT
		, IIF(cc.Name = 'Сумма займа' 				, SUM(c.Amount), 0)	 AS	[OD]
		, IIF(cc.Name = 'Проценты по займу' 		, SUM(c.Amount), 0)	 AS	[Perc]
		, IIF(cc.Name = 'Пени' 						, SUM(c.Amount), 0)	 AS	[Peni]
		, IIF(cc.Name = 'Госпошлина' 				, SUM(c.Amount), 0)	 AS	[State]
	INTO #Balance
	FROM TZ_DDS.tz.Balance c
	INNER JOIN TZ_DDS.tz.CashflowTypes		ct	ON ct.CashflowTypesId		= c.OperationTypeId		AND ct.Name = 'Приход'
	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= c.OperationCategoryId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
	INNER JOIN TZ_DDS.tz.Application		ap	ON ap.ApplicationId			= c.ApplicationId
	INNER JOIN TZ_DDS.tz.Product			pr	ON ap.ProductId				= ap.ProductId
	INNER JOIN TZ_DDS.tz.ProductType		pt	ON pr.TypeId				= pt.ProductTypeId AND pt.Name = 'Долгосрочный заём' 
	GROUP BY c.ApplicationId, c.ActualDateDT, cc.Name



IF OBJECT_ID('tempdb..#final') IS NOT NULL DROP TABLE #final;
;WITH AdditionalAgreement AS
(
	SELECT 
		  ApplicationId
		, EndDate
		, ROW_NUMBER() OVER(PARTITION BY ApplicationId ORDER BY EndDate DESC) rn
	FROM TZ_DDS.tz.AdditionalAgreement
	WHERE 1=1
	AND StatusId	= 'BE29175E-80FE-4A38-BED8-51C38F82008D'	--Действующее
	AND TypeId		= 'D7AF2C29-5F1E-4A9F-BBBE-9D3113BAC315'	--Пролонгация
)
--, Cashflow AS 
--(
--	SELECT 
--		  c.ApplicationId
--		, c.ActualDateDT
--		, IIF(cc.Name = 'Сумма займа' 				, SUM(c.Amount), 0)	 AS	[OD]
--		, IIF(cc.Name = 'Проценты по займу' 		, SUM(c.Amount), 0)	 AS	[Perc]
--		, IIF(cc.Name = 'Пени' 						, SUM(c.Amount), 0)	 AS	[Peni]
--		, IIF(cc.Name = 'Госпошлина' 				, SUM(c.Amount), 0)	 AS	[State]
--	FROM TZ_DDS.tz.Cashflow c
--	INNER JOIN TZ_DDS.tz.CashflowTypes		ct	ON ct.CashflowTypesId		= c.TypeId		AND ct.Name = 'Приход'
--	INNER JOIN TZ_DDS.tz.CashflowStatus		cs	ON cs.CashflowStatusId		= c.StatusId	AND cs.Name = 'Выполнена'
--	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= c.CategoryId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
--	INNER JOIN TZ_DDS.tz.Application		ap	ON ap.ApplicationId			= c.ApplicationId
--	INNER JOIN TZ_DDS.tz.Product			pr	ON ap.ProductId				= ap.ProductId
--	INNER JOIN TZ_DDS.tz.ProductType		pt	ON pr.TypeId				= pt.ProductTypeId AND pt.Name = 'Краткосрочный заём' 
--	GROUP BY c.ApplicationId, c.ActualDateDT, cc.Name
--)
--, Balance AS 
--(
--	SELECT 
--		  c.ApplicationId
--		, c.ActualDateDT
--		, IIF(cc.Name = 'Сумма займа' 				, SUM(c.Amount), 0)	 AS	[OD]
--		, IIF(cc.Name = 'Проценты по займу' 		, SUM(c.Amount), 0)	 AS	[Perc]
--		, IIF(cc.Name = 'Пени' 						, SUM(c.Amount), 0)	 AS	[Peni]
--		, IIF(cc.Name = 'Госпошлина' 				, SUM(c.Amount), 0)	 AS	[State]
--	FROM TZ_DDS.tz.Balance c
--	INNER JOIN TZ_DDS.tz.CashflowTypes		ct	ON ct.CashflowTypesId		= c.OperationTypeId		AND ct.Name = 'Приход'
--	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= c.OperationCategoryId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
--	INNER JOIN TZ_DDS.tz.Application		ap	ON ap.ApplicationId			= c.ApplicationId
--	INNER JOIN TZ_DDS.tz.Product			pr	ON ap.ProductId				= ap.ProductId
--	INNER JOIN TZ_DDS.tz.ProductType		pt	ON pr.TypeId				= pt.ProductTypeId AND pt.Name = 'Долгосрочный заём' 
--	GROUP BY c.ApplicationId, c.ActualDateDT, cc.Name
--)
--, Accrual AS
--(
--	SELECT 
--			  a.ApplicationId
--			, a.AccrualDateDT
--			, IIF(cc.Name = 'Сумма займа' 				, SUM(a.AmountAccrued), 0)	 AS	[OD]
--			, IIF(cc.Name = 'Проценты по займу' 		, SUM(a.AmountAccrued), 0)	 AS	[Perc]
--			, IIF(cc.Name = 'Пени' 						, SUM(a.AmountAccrued), 0)	 AS	[Peni]
--			, IIF(cc.Name = 'Госпошлина' 				, SUM(a.AmountAccrued), 0)	 AS	[State]
--	FROM TZ_DDS.tz.Accrual a
--	INNER JOIN TZ_DDS.tz.CashflowCategory	cc	ON cc.CashflowCategoryId	= a.TypeId	AND cc.Name IN ('Сумма займа', 'Проценты по займу', 'Пени', 'Госпошлина')
--	GROUP BY a.ApplicationId, a.AccrualDateDT, cc.Name
--)


SELECT DISTINCT 
		--TOP 100
	  a.ApplicationId																										AS [appid]
	, a.ContactId																											AS [clientid]
	, a.Number																												AS [loannum]
	, a.PaymentDateDT																										AS [issue_dt]
	, a.ReturnDateDT 																										AS [dateClose]
	, CAST(a.SaleDate AS DATE)																								AS [dateSold]
	, s.[Name]																												AS [loanstatus]
	, a.OfferSum																											AS [loanamt]
	, CASE	WHEN	pt.Name = 'Краткосрочный заём'	THEN 'PDL'
			WHEN	pt.Name = 'Долгосрочный заём'	THEN 'IL'
		END																													AS [product]
	, d.ProcessDate																											AS [report_dt]
	, DATEDIFF(DAY, a.PaymentDateDT, d.ProcessDate) + 1																		AS [day]
	, CASE	WHEN a.ReturnDateDT IS NULL 
			AND s.Name NOT IN ('Закрыт', 'Отказ клиента', 'Продан', 'Погашен')
				THEN DATEDIFF(DAY, ISNULL(aa.EndDate, a.CurrentReturnDateDT), CAST(DATEADD(HOUR, 3, GETDATE()) AS DATE))
			ELSE 0
		  END																												AS [dpd]
	,  0									AS	principal_paid			--Сумма выплаченного ОД
	,  0									AS	interest_paid			--Сумма выплаченных %
	,  0									AS	fee_paid				--Сумма выплаченных пени
	,  0									AS	court_paid				--Сумма выплаченной госпошлины
	,  0									AS	principal_schedule		--Сумма начисленного ОД
	,  0									AS	interest_schedule		--Сумма начисленных %
	,  0									AS	fee_schedule			--Сумма начисленной пени
	,  0									AS	court_fee_schedule		--Сумма начисленной госпошлины
	,  0									AS	DebtAmt_Principal		--Остаток залдолженности ОД
	,  0									AS	DebtAmt_interest		--Остаток залдолженности %
	,  0									AS	DebtAmt_fee				--Остаток залдолженности пени
	,  0									AS	DebtAmt_court_fee		--Остаток залдолженности госпошлины
INTO #final
FROM TZ_DDS.tz.Application a
LEFT JOIN TZ_DDS.tz.ApplicationStatus	s	ON	a.StatusId		= s.ApplicationStatusId
LEFT JOIN TZ_DDS.tz.Product				p	ON	a.ProductId		= p.ProductId
LEFT JOIN TZ_DDS.tz.ProductType			pt	ON	p.TypeId		= pt.ProductTypeId
LEFT JOIN AdditionalAgreement			aa	ON	a.ApplicationId	= aa.ApplicationId	AND aa.rn = 1 
--LEFT JOIN Cashflow						cf	ON	a.ApplicationId	= cf.ApplicationId
--LEFT JOIN Balance						bl	ON	a.ApplicationId	= bl.ApplicationId
LEFT JOIN #Dates						d	ON	d.ProcessDate BETWEEN a.PaymentDateDT AND ISNULL(a.ReturnDateDT, CAST(GETDATE() AS DATE))
WHERE 1=1
AND a.PaymentDateDT IS NOT NULL
--AND a.ApplicationId = 'D1A30314-24D9-4326-87DC-939CDB215060'
 


DELETE FROM #final
WHERE principal_paid IS NULL

UPDATE f SET
		principal_paid	= ISNULL(cf.[OD]	, bl.[OD])		
	,	interest_paid	= ISNULL(cf.[Perc]	, bl.[Perc])
	,	fee_paid		= ISNULL(cf.[Peni]	, bl.[Peni])
	,	court_paid		= ISNULL(cf.[State] , bl.[State])	
FROM #final f
LEFT JOIN #Cashflow	cf	ON	f.appid	= cf.ApplicationId
LEFT JOIN #Balance	bl	ON	f.appid	= bl.ApplicationId


UPDATE f SET
	  f.principal_schedule		= a.[OD]
	, f.interest_schedule		= a.[Perc]
	, f.fee_schedule			= a.[Peni]
	, f.court_fee_schedule		= a.[State]
FROM #final f
INNER JOIN #Accrual a ON a.ApplicationId = f.appid



UPDATE f SET
	  f.DebtAmt_Principal	= f.principal_schedule	- f.principal_paid	
	, f.DebtAmt_interest	= f.interest_schedule	- f.interest_paid	
	, f.DebtAmt_fee			= f.fee_schedule		- f.fee_paid		
	, f.DebtAmt_court_fee	= f.court_fee_schedule	- f.court_paid		
FROM #final f 


IF OBJECT_ID('TZ_MARTS.pbi.Delays') IS NOT NULL DROP TABLE TZ_MARTS.pbi.Delays --TODO: заменить на Overdue 
SELECT 
	  [appid]
	, [clientid]
	, [loannum]
	, [issue_dt]
	, [dateClose]
	, [dateSold]
	, [loanstatus]
	, [loanamt]
	, [product]
	, [report_dt]
	, [day]
	, [dpd]
	, principal_paid		
	, interest_paid		
	, fee_paid			
	, court_paid			
	, principal_schedule	
	, interest_schedule	
	, fee_schedule		
	, court_fee_schedule	
	, DebtAmt_Principal	
	, DebtAmt_interest	
	, DebtAmt_fee			
	, DebtAmt_court_fee	
INTO TZ_MARTS.pbi.Delays
FROM #final




--SELECT * FROM TZ_MARTS.pbi.Delays 
--WHERE appid = 'D1A30314-24D9-4326-87DC-939CDB215060'
--ORDER BY [day]

