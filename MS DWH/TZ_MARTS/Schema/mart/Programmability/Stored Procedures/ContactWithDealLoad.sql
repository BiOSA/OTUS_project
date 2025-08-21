-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2024-11-26
-- Description:	Кеширование данных для витрины Клиенты, по которым была хоть одна выдача mart.ContactWithDeal
-- https://jira.bistrodengi.ru/browse/TZSMIS-9286
-- =============================================
CREATE PROCEDURE mart.ContactWithDealLoad
	@BatchId BIGINT
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SET XACT_ABORT ON;
    SET NOCOUNT ON;

	DECLARE
		  @LogMessageText             XML
		, @Sender                     sysname       = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @MAX_EFFECTIVE_DATE         DATE          = CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE)
		, @MessageText                VARCHAR(500)
		, @MartRegistryId             BIGINT        = (SELECT TOP 1 MartRegistryId FROM dbo.MartRegistry WHERE OBJECT_ID(DataLoadProcedure) = OBJECT_ID(OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)));

	BEGIN TRY
		IF NOT EXISTS(SELECT TOP 1 1 FROM pbi.Deal WHERE BatchId = @BatchId)
			THROW 50001, 'Сначала надо обновить витрину pbi.Deal', 1;

		--Подготовка данных, измененных в этой пачке
		DROP TABLE IF EXISTS #tz_ContactWithDeal_ByBatch;
		CREATE TABLE #tz_ContactWithDeal_ByBatch
		(
			  RK                BIGINT NOT NULL PRIMARY KEY
			, EffectiveDateFrom DATETIME
		);
		INSERT INTO #tz_ContactWithDeal_ByBatch(RK, EffectiveDateFrom)
		SELECT RK, MIN(EffectiveDateFrom)
		FROM (
			SELECT c.Customer_RK AS RK, c.EffectiveDateFrom
			FROM tz_dds.Contact c
			WHERE c.BatchId = @BatchId
			UNION
			SELECT c.Customer_RK, c.EffectiveDateFrom
			FROM tz_dds.ContactAddress c
			WHERE c.BatchId = @BatchId
		) s
		GROUP BY RK;

		DROP TABLE IF EXISTS #tz_ContactWithDeal_prepare;
		SELECT TOP 0 * INTO #tz_ContactWithDeal_prepare FROM mart.ContactWithDeal;
		CREATE CLUSTERED INDEX IX_#tz_ContactWithDeal_prepare ON #tz_ContactWithDeal_prepare(Customer_RK);

		INSERT INTO #tz_ContactWithDeal_prepare
		(
			  Customer_RK
			, DateKey
			, DateAlternateKey
			, EffectiveDateFrom
			, EffectiveDateTill
			, BatchId
			, ContactId
			, MobilePhone
			, BirthDate
			, FirstName
			, SecondName
			, MiddleName
			, Email
			, GenderName
			, BirthPlace
			, DocumentSeries
			, DocumentNumber
			, DepartmentCode
			, IssuedBy
			, IssuedOn
			, SNILS
			, JobTitle
			, Company
		)
		SELECT 
			  b.RK
			, CAST(CONVERT(CHAR(8), CAST(b.EffectiveDateFrom AS DATE), 112) AS BIGINT)
			, CAST(b.EffectiveDateFrom AS DATE)
			, b.EffectiveDateFrom
			, @MAX_EFFECTIVE_DATE
			, @BatchId
			, c.ContactId
			, LEFT(c.MobilePhone, 100)
			, c.BirthDate
			, LEFT(c.FirstName, 100)
			, LEFT(c.SecondName, 100)
			, LEFT(c.MiddleName, 100)
			, LEFT(c.Email, 100)
			, g.Name
			, LEFT(c.BirthPlace, 1000)
			, LEFT(c.DocumentSeries, 50)
			, LEFT(c.DocumentNumber, 50)
			, LEFT(c.DepartmentCode, 50)
			, LEFT(c.IssuedBy, 500)
			, c.IssuedOn
			, LEFT(c.SNILS, 50)
			, LEFT(c.JobTitle, 500)
			, LEFT(c.Company, 500)
		FROM       #tz_ContactWithDeal_ByBatch b
		INNER JOIN tz_dds.Contact           c      ON b.RK                     = c.Customer_RK
		LEFT  JOIN tz_dds.Gender            g      ON c.Gender_RK              = g.Gender_RK 
													 AND g.EffectiveDateTill      = @MAX_EFFECTIVE_DATE
		WHERE   c.EffectiveDateTill = @MAX_EFFECTIVE_DATE
			AND EXISTS(SELECT TOP 1 1 FROM pbi.Deal d WHERE c.Customer_RK = d.Customer_RK)--Была выдача
		--Адреса
		UPDATE p SET
			  AddressReg = ca_reg.Address
			, AddressFct = ca_fct.Address
		FROM #tz_ContactWithDeal_prepare p
		LEFT JOIN (
			SELECT ca_reg.Customer_RK, ca_reg.Address, ROW_NUMBER() OVER (PARTITION BY ca_reg.Customer_RK ORDER BY ca_reg.IsNotActual ASC, ca_reg.EffectiveDateFrom DESC) AS rn--Так как IsNotActual нерегулряно заполнен и Actual вообще непонятно как, то выбираем по такому хитрому пути
			FROM       #tz_ContactWithDeal_prepare p
			INNER JOIN tz_dds.ContactAddress    ca_reg ON ca_reg.Customer_RK          = p.Customer_RK
														 AND ca_reg.AddressType_RK    = 4--адрес регистрации
														 AND ca_reg.EffectiveDateTill = @MAX_EFFECTIVE_DATE
		) ca_reg ON ca_reg.Customer_RK = p.Customer_RK
				AND ca_reg.rn          = 1
		LEFT JOIN (
			SELECT ca_fct.Customer_RK, ca_fct.Address, ROW_NUMBER() OVER (PARTITION BY ca_fct.Customer_RK ORDER BY ca_fct.IsNotActual ASC, ca_fct.EffectiveDateFrom DESC) AS rn
			FROM       #tz_ContactWithDeal_prepare p
			INNER JOIN tz_dds.ContactAddress    ca_fct ON ca_fct.Customer_RK          = p.Customer_RK
														 AND ca_fct.AddressType_RK    = 6--адрес проживания
														 AND ca_fct.EffectiveDateTill = @MAX_EFFECTIVE_DATE
		) ca_fct ON ca_fct.Customer_RK = p.Customer_RK
				AND ca_fct.rn          = 1;
		--Адреса, которые не нашлись в первом случае
		UPDATE p SET
			  AddressReg = ISNULL(AddressReg, ca_reg.Address)
			, AddressFct = ISNULL(AddressFct, ca_fct.Address)
		FROM #tz_ContactWithDeal_prepare p
		LEFT JOIN (
			SELECT ca_reg.Customer_RK, ca_reg.Address, ROW_NUMBER() OVER (PARTITION BY ca_reg.Customer_RK ORDER BY ca_reg.IsNotActual ASC, ca_reg.EffectiveDateFrom DESC) AS rn--Так как IsNotActual нерегулряно заполнен и Actual вообще непонятно как, то выбираем по такому хитрому пути
			FROM       #tz_ContactWithDeal_prepare p
			INNER JOIN tz_dds.ApplicationAddress   ca_reg ON ca_reg.Customer_RK       = p.Customer_RK
														 AND ca_reg.AddressType_RK    = 4--адрес регистрации
														 AND ca_reg.EffectiveDateTill = @MAX_EFFECTIVE_DATE
		) ca_reg ON ca_reg.Customer_RK = p.Customer_RK
				AND ca_reg.rn          = 1
		LEFT JOIN (
			SELECT ca_fct.Customer_RK, ca_fct.Address, ROW_NUMBER() OVER (PARTITION BY ca_fct.Customer_RK ORDER BY ca_fct.IsNotActual ASC, ca_fct.EffectiveDateFrom DESC) AS rn--Так как IsNotActual нерегулряно заполнен и Actual вообще непонятно как, то выбираем по такому хитрому пути
			FROM       #tz_ContactWithDeal_prepare p
			INNER JOIN tz_dds.ApplicationAddress   ca_fct ON ca_fct.Customer_RK       = p.Customer_RK
														 AND ca_fct.AddressType_RK    = 6--адрес проживания
														 AND ca_fct.EffectiveDateTill = @MAX_EFFECTIVE_DATE
		) ca_fct ON ca_fct.Customer_RK = p.Customer_RK
				AND ca_fct.rn          = 1
		WHERE AddressReg IS NULL OR AddressFct IS NULL;

		--Вносим те, которые были ранее, но изменились
		DELETE FROM mart.ContactWithDeal WHERE BatchId = @BatchId;
		--последние записи
		DROP TABLE IF EXISTS #tz_ContactWithDeal_prepare_last;
		CREATE TABLE #tz_ContactWithDeal_prepare_last
		(
			  Customer_RK        BIGINT	  NULL
			, EffectiveDateFrom  DATETIME NULL
			, Id                 BIGINT   NULL
		);
		CREATE CLUSTERED INDEX IX_#tz_ContactWithDeal_prepare_last ON #tz_ContactWithDeal_prepare_last(Customer_RK);

		DECLARE @TRANCOUNT INT = @@TRANCOUNT;
		BEGIN TRAN;

		INSERT INTO #tz_ContactWithDeal_prepare_last(Customer_RK, EffectiveDateFrom, Id)
		SELECT c.Customer_RK, c.EffectiveDateFrom, c.Id
		FROM       mart.ContactWithDeal         c
		INNER JOIN #tz_ContactWithDeal_prepare  prp ON prp.Customer_RK = c.Customer_RK
		WHERE   c.EffectiveDateTill = @MAX_EFFECTIVE_DATE;

		INSERT INTO mart.ContactWithDeal(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, Customer_RK, ContactId, MobilePhone, BirthDate, FirstName, SecondName, MiddleName, Email, GenderName, BirthPlace, DocumentSeries, DocumentNumber, DepartmentCode, IssuedBy, IssuedOn, SNILS, JobTitle, Company, AddressReg, AddressFct)
		SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.Customer_RK, p.ContactId, p.MobilePhone, p.BirthDate, p.FirstName, p.SecondName, p.MiddleName, p.Email, p.GenderName, p.BirthPlace, p.DocumentSeries, p.DocumentNumber, p.DepartmentCode, p.IssuedBy, p.IssuedOn, p.SNILS, p.JobTitle, p.Company, p.AddressReg, p.AddressFct
		FROM (
			SELECT Customer_RK, ContactId, MobilePhone, BirthDate, FirstName, SecondName, MiddleName, Email, GenderName, BirthPlace, DocumentSeries, DocumentNumber, DepartmentCode, IssuedBy, IssuedOn, SNILS, JobTitle, Company, AddressReg, AddressFct
			FROM (
				SELECT prp.*
				FROM       #tz_ContactWithDeal_prepare_last l
				INNER JOIN #tz_ContactWithDeal_prepare      prp ON l.Customer_RK = prp.Customer_RK
			) prp
			EXCEPT
			(
				SELECT Customer_RK, ContactId, MobilePhone, BirthDate, FirstName, SecondName, MiddleName, Email, GenderName, BirthPlace, DocumentSeries, DocumentNumber, DepartmentCode, IssuedBy, IssuedOn, SNILS, JobTitle, Company, AddressReg, AddressFct
				FROM (
					SELECT app.*
					FROM       mart.ContactWithDeal             app
					INNER JOIN #tz_ContactWithDeal_prepare_last l   ON l.Id = app.Id
				) l
			)
		) n
		INNER JOIN #tz_ContactWithDeal_prepare p ON p.Customer_RK = n.Customer_RK;

		--предыдущим записям уменьшаем "Дату актуальности до"
		UPDATE old SET
			EffectiveDateTill = DATEADD(MS, -2, new.EffectiveDateFrom)
		FROM       mart.ContactWithDeal             new
		INNER JOIN #tz_ContactWithDeal_prepare_last l   ON l.Customer_RK = new.Customer_RK
											           AND new.BatchId   = @BatchId
		INNER JOIN mart.ContactWithDeal             old ON l.Id          = old.Id;

		--Те, которых вообще не было
		INSERT INTO mart.ContactWithDeal(BatchId, DateKey, DateAlternateKey, EffectiveDateFrom, EffectiveDateTill, Customer_RK, ContactId, MobilePhone, BirthDate, FirstName, SecondName, MiddleName, Email, GenderName, BirthPlace, DocumentSeries, DocumentNumber, DepartmentCode, IssuedBy, IssuedOn, SNILS, JobTitle, Company, AddressReg, AddressFct)
		SELECT p.BatchId, p.DateKey, p.DateAlternateKey, p.EffectiveDateFrom, p.EffectiveDateTill, p.Customer_RK, p.ContactId, p.MobilePhone, p.BirthDate, p.FirstName, p.SecondName, p.MiddleName, p.Email, p.GenderName, p.BirthPlace, p.DocumentSeries, p.DocumentNumber, p.DepartmentCode, p.IssuedBy, p.IssuedOn, p.SNILS, p.JobTitle, p.Company, p.AddressReg, p.AddressFct
		FROM      #tz_ContactWithDeal_prepare      p
		LEFT JOIN #tz_ContactWithDeal_prepare_last l ON p.Customer_RK = l.Customer_RK
		WHERE l.Customer_RK IS NULL;

		DROP TABLE IF EXISTS #tz_ContactWithDeal_prepare, #tz_ContactWithDeal_prepare_last;

		UPDATE dbo.MartRegistry SET
			LastLoadDate = GETDATE()
		WHERE MartRegistryId = @MartRegistryId;

		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		SET @MessageText    = ERROR_MESSAGE();
        SET @LogMessageText = (SELECT @MessageText AS ErrorText FOR XML PATH('Params'));

		WHILE(@@TRANCOUNT > @TRANCOUNT) 
			ROLLBACK TRANSACTION;

		EXEC tz_work.log_RegisterInsert
              @BatchId          = NULL
			, @ObjectRegisterId = NULL
			, @StatusCode       = 'ERROR'
			, @MessageText      = @LogMessageText
			, @Sender           = @Sender
			, @Params           = NULL
			, @ErrorLevel       = 0;

		THROW 50001, @MessageText, 1;

		RETURN 1;
	END CATCH;

	RETURN 0;
END;