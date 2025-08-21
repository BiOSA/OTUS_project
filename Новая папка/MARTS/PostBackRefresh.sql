CREATE PROCEDURE [marts].[PostBack]
	@Date DATE = NULL
AS
BEGIN

	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT, XACT_ABORT ON;

	SET @Date = ISNULL(@Date, GETUTCDATE()); 

	BEGIN TRY

		DECLARE @TRANCOUNT INT = @@TRANCOUNT
		BEGIN TRAN					

			SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

			IF OBJECT_ID('tempdb..#Count') IS NOT NULL DROP TABLE #Count;
			SELECT 
				  a.ContactId
				, COUNT(a.Id) 							AS [AppCount]
				, COUNT(a.PaymentDate) 					AS [LoanCount]
			INTO #Count
			FROM dds.Application a
			GROUP BY  a.ContactId;

			DELETE FROM report.PostBack WHERE CreatedOn >= @Date
			INSERT INTO report.PostBack(ReportDate, [ApplicationId], [Number], [ContactId], [Email], [ContactMobilePhone], [ContactSource], [SourceURL], [AppCount], [LoanCount], [ClientType], [CreatedOn], [FillingDate], [PaymentDate], [Product], [Decision], [SourceGroup], [AnswerURL], [AnswerURL3], [ProductId], [ContactSourceId], [SourceGroupId], [OfferSum], [ProductType], [wmid], [Cookie])
			SELECT 
				  @Date																																																															AS  ReportDate
				, a.Id																																																															AS 	[ApplicationId]
				, a.Number																																																														AS	[Number]					--[Номер заявки]
				, a.ContactId																																																													AS	[ContactId]
				, a.Email																																																														AS	[Email]
				, a.ContactMobilePhone																																																											AS  [ContactMobilePhone]		--[Мобильный телефон контакта]
				, cs.[Name]																																																														AS	[ContactSource]				--[Источник заявки]
				, a.SourceURL																																																													AS	[SourceURL]					--[URL заявки]
				, ct.[AppCount]																																																													AS	[AppCount]					--[Количество заявок у клиента]
				, ct.[LoanCount]																																																												AS	[LoanCount]					--[Количество выданных займов]
				, IIF(l.LoanNum = 0, 'Новый', 'Повторный')																																																						AS	[ClientType]				--[Тип клиента]
				, a.CreatedOnDT 																																																												AS  [CreatedOn]					--[Дата создания]
				, a.FillingDateDT																																																												AS	[FillingDate]				--[Дата подачи заявки]
				, a.PaymentDateDT																																																												AS	[PaymentDate]				--[Дата выдачи займа]
				, p.[Name]																																																														AS	[Product]					--[Продукт]
				, ad.[Name]																																																														AS	[Decision]					--[Решение]
				, cg.[Name]																																																														AS 	[SourceGroup]			    --[Наименование группы]
				, a.AnswerURL																																																													AS	[AnswerURL]					--[URL постбэка поданной заяки]
				, a.AnswerURL3																																																													AS	[AnswerURL3]				--[URL постбэка выданного займа]
				, p.Id																																																															AS	[ProductId]
				, cs.Id																																																															AS	[ContactSourceId]
				, cg.Id																																																															AS	[SourceGroupId]
				, a.OfferSum																																																													AS	[OfferSum]
				, CASE 
					WHEN a.OfferSum BETWEEN 1000 AND 2000 AND t.[Name] = 'Краткосрочный заём' AND l.LoanNum = 0		THEN 'PDL с норм КИ' 
					WHEN t.[Name] = 'Краткосрочный заём' AND l.LoanNum != 0											THEN 'PDL с удв КИ'
					WHEN a.OfferSum >= 3000 AND l.LoanNum != 0 AND t.[Name] = 'Долгосрочный заём'					THEN 'IL'
					WHEN a.OfferSum >= 3000 AND l.LoanNum != 0 AND t.[Name] = 'Долгосрочный заём'					THEN 'PDL'
				  END																																																															AS	[ProductType]
				, IIF(CHARINDEX('wmid=', SourceURL)>0, RIGHT(SourceURL, LEN(SourceURL)-CHARINDEX('wmid=', SourceURL) - LEN('wmid=') + 1), NULL)																																	AS	[wmid] 
				, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(a.Cookie, '%22', '"'), '%7B','{'), '%3A',':'), '%2C',','), '%7D', '}'), '%3D', '='), '%26', '&'), '%5C', '\'), '%2F', '/'), '%3F', '?')										AS	[Cookie]
			FROM dds.Application a
			INNER JOIN dds.Product				p	ON p.Id				= a.ProductId
			INNER JOIN dds.ProductType			t	ON t.id				= p.TypeId
			LEFT  JOIN dds.ApplicationDecision	ad	ON ad.Id			= a.DecisionId
			LEFT  JOIN dds.ContactSource		cs	ON cs.Id			= a.ContactSourceId
			LEFT  JOIN dds.ContactSourceGroup	cg	ON cg.Id			= cs.SourceGroupId
			LEFT  JOIN #Count					ct	ON ct.ContactId		= a.ContactId		
			OUTER APPLY 
			(
				SELECT COUNT(*) AS LoanNum
				FROM dds.Application a2
				WHERE a2.ContactId = a.ContactId
					AND a2.PaymentDate < a.CreatedOn
			) l
			WHERE a.EffectiveDateTill = '5999-12-31'
			AND a.CreatedOnDT >= @Date;


			IF OBJECT_ID('tempdb..#Count') IS NOT NULL DROP TABLE #Count; 

		COMMIT TRAN;
	END TRY
	BEGIN CATCH

		IF OBJECT_ID('tempdb..#Count') IS NOT NULL DROP TABLE #Count; 

		WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		RETURN 1;
	END CATCH;

	RETURN 0;

END

