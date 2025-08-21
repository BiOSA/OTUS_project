-- =============================================
-- Author:      Дзреян К.Е..
-- Create date: 2025-07-21
-- Description: Проверка всех объектов на соответствие источникам
CREATE PROCEDURE chk.DDSQualityRun
AS BEGIN
	DECLARE
		  @ObjectName          VARCHAR(50)
		, @ErrorMessage        VARCHAR(300)
		, @NotInDWHAmount      BIGINT
		, @NotInSrcAmount      BIGINT
		, @Result              XML
		, @ADMIN_EMAILS        VARCHAR(300) = CAST(prm.RegisterGet('ADMIN_EMAILS', 'itimofeev@eqvantalab.ru') AS VARCHAR(300))
		, @Subject             VARCHAR(300)
        , @Text                VARCHAR(MAX)
		, @ProcedureName       sysname     = OBJECT_SCHEMA_NAME(@@PROCID)+'.'+OBJECT_NAME(@@PROCID)
		, @BusinessName        VARCHAR(50) = (SELECT RussianName FROM tz_dwh.Business)
		, @TotalReloadCount    BIGINT      = 0
		, @MAX_REALOAD_PER_RUN BIGINT      = 100000;

	DECLARE crs_quality CURSOR FOR
		SELECT obr.[Name]
		FROM      dbo.ObjectRegister obr
		LEFT JOIN (
			SELECT q.ObjectName, MAX(CheckDate) AS CheckDate
			FROM chk.Quality q
			GROUP BY q.ObjectName
		) q ON obr.Name = q.ObjectName
		WHERE (DATEDIFF(DAY, GETDATE(), q.CheckDate)>7 OR q.CheckDate IS NULL)
			AND obr.[Name] NOT IN ('tz.VwCheckBankScoringValue','tz.VerificationListResult','tz.VerificationListItem','tz.Calculator_MMK_customer','risk_spr.Application_final','bd_marts.BD_MaxContactDeals', 'tz.Accrual');
	OPEN crs_quality;
	WHILE 1=1 BEGIN
		FETCH NEXT FROM crs_quality INTO @ObjectName;
		IF @@FETCH_STATUS!=0
			BREAK;

		SELECT @NotInDWHAmount = NULL, @NotInSrcAmount  = NULL, @Result = NULL;
		BEGIN TRY
			PRINT @ObjectName;
			EXEC chk.DDSQualityObjectRun
				  @ObjectName     = @ObjectName
				, @NotInDWHAmount = @NotInDWHAmount	OUT
				, @NotInSrcAmount = @NotInSrcAmount	OUT
				, @Result         = @Result         OUT;
			SET @TotalReloadCount += @NotInDWHAmount;
			--Джоб запускается раз в день. Но если слишком много надо прегрузить, то перенесем на следующий день, чтобы не занимать много ресурсов.
			IF @TotalReloadCount>=@MAX_REALOAD_PER_RUN
				BREAK;
		END TRY
		BEGIN CATCH
			SET @ErrorMessage = ERROR_MESSAGE();

			SELECT 
				  @Text    = '<H1>' + @BusinessName + '</H1><P>Объект: ' + @ObjectName + '</P><P>Ошибка: ' + @ErrorMessage + '</P>'
				, @Subject = 'Ошибки при проверке качества данных хранилища: ' + @ProcedureName;

			EXEC tz_dwh.EmailSend
				  @Whom      = @ADMIN_EMAILS
				, @Subject   = @Subject
				, @Text      = @Text
				, @Format    = 'HTML';

		END CATCH;
	END;
	CLOSE crs_quality;
	DEALLOCATE crs_quality;
END