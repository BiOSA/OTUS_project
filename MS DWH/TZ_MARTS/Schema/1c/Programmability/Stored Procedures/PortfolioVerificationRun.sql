-- =============================================
-- Author:        Дзреян К.Е..
-- Create date:   2025-01-30
-- Description:   Сигнал из 1С, что в систему прилетел портфель за предыдущий месяц и можно запустить верификацию
-- =============================================
CREATE PROCEDURE [1c].PortfolioVerificationRun
AS BEGIN
	DECLARE 
		  @EmailText      VARCHAR(MAX) = 'Портфель выгружен'
		, @Subject        VARCHAR(300) = DB_NAME()+': Портфель выгружен'
		, @ADMIN_EMAILS   VARCHAR(300) = CAST(tz_work.prm_RegisterGet('ADMIN_EMAILS', 'itimofeev@eqvantalab.ru') AS VARCHAR(300))

	EXEC tz_dwh.EmailSend
		  @Whom    = @ADMIN_EMAILS
		, @Subject = @Subject
		, @Text    = @EmailText
		, @Format  = 'HTML';

	DECLARE @ReportDate DATE;
	EXEC mart.Portfolio1CLoad
		@ReportDate = @ReportDate OUT;

	EXEC tz_dwh.report_BKIOneSPortfolioDiffRefresh
		@ReportDate = @ReportDate;
END;
GO
GRANT EXEC ON [1c].PortfolioVerificationRun TO [1c_dwh];