-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2025-01-30
-- Description:   Импорт данных в витрину из источника
-- =============================================
CREATE PROCEDURE mart.Portfolio1CLoad
	@ReportDate DATE OUT
AS BEGIN
	DECLARE 
		  @LOAN_NUMBER_PREFIX VARCHAR(10) = CAST(tz_work.prm_RegisterGet('LOAN_NUMBER_PREFIX', NULL) AS VARCHAR(10))
		, @MAX_EFFECTIVE_DATE DATE        = CAST(tz_work.prm_RegisterGet('MAX_EFFECTIVE_DATE', '5999-12-31') AS DATE);

	SELECT TOP 1 @ReportDate = TRY_CONVERT(DATE, LEFT([Период], 10), 104) FROM [1c].Loans;

	MERGE mart.Portfolio1C AS trg
	USING
	(
		SELECT
			  TRY_CONVERT(DATE, LEFT([Период], 10), 104)                                                        AS ReportDate
			, CAST(REPLACE(REPLACE([ИДЗайма], '{', ''), '}', '') AS UNIQUEIDENTIFIER)                           AS ApplicationId
			, TRY_CONVERT(DATE, LEFT([ДатаВыдачи], 10), 104)                                                    AS PaymentDate
			, TRY_CAST(REPLACE(REPLACE([СуммаЗайма],                    ' ', ''), ',', '.') AS DECIMAL(18, 2))	AS OfferSum
			, TRY_CAST(REPLACE(REPLACE([СуммаЗадолженностиПоОД],        ' ', ''), ',', '.') AS DECIMAL(18, 2))	AS DebtOD
			, TRY_CAST(REPLACE(REPLACE([СуммаЗадолженностиПоПроцентам], ' ', ''), ',', '.') AS DECIMAL(18, 2))  AS DebtPercent
			, TRY_CAST(REPLACE(REPLACE([СуммаЗадолженностиПоПеням],     ' ', ''), ',', '.') AS DECIMAL(18, 2))  AS DebtOther
		FROM [1c].Loans
		WHERE   [НомерЗайма] LIKE @LOAN_NUMBER_PREFIX + '%' 
		    AND TRY_CAST([ИДЗайма] AS UNIQUEIDENTIFIER) IS NOT NULL
	) AS src
	ON      src.ReportDate    = trg.ReportDate
	    AND src.ApplicationId = trg.ApplicationId
	WHEN NOT MATCHED BY TARGET THEN
		INSERT (ReportDate, ApplicationId, OfferSum, DebtOD, DebtPercent, DebtOther)
		VALUES(src.ReportDate, src.ApplicationId, src.OfferSum, src.DebtOD, src.DebtPercent, src.DebtOther)
	WHEN NOT MATCHED BY SOURCE THEN
		DELETE
	WHEN MATCHED THEN
		UPDATE SET
			  trg.OfferSum       = src.OfferSum
			, trg.DebtOD         = src.DebtOD
			, trg.DebtPercent    = src.DebtPercent
	        , trg.DebtOther      = src.DebtOther;

	--конвертация RK-ключей
	DECLARE @TableName sysname = DB_NAME()+'.mart.Portfolio1C';
	EXEC tz_dds.conv_CodeTranslate
		@SourceTableName = @TableName;

	--Восстановление номера займа
	UPDATE p SET
		Number = a.Number
	FROM       mart.Portfolio1C        p
	INNER JOIN tz_dds.conv_APPLICATION a ON CAST(a.ID AS UNIQUEIDENTIFIER) = p.ApplicationId
	WHERE p.Number IS NULL;

	--Восстановление клиента
	UPDATE p SET
		  Contact_RK = a.Customer_RK
		, ContactId  = a.ContactId
	FROM       mart.Portfolio1C   p
	INNER JOIN tz_dds.APPLICATION a ON a.Account_RK        = p.Account_RK 
	                               AND a.EffectiveDateTill = @MAX_EFFECTIVE_DATE
	WHERE p.Contact_RK IS NULL;
END
GO
GRANT EXEC ON mart.Portfolio1CLoad TO [1c_dwh];