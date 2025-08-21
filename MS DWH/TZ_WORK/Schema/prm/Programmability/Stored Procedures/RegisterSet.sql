-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2022-09-09
-- Description:	установка значения параметра
-- если значение @Value равно DEFAULT_NULL_VALUE, то параметр уставится в NULL, если NULL - то не трогается (это надо если изменяется только Description)
-- аналогично для @Description
-- =============================================
CREATE PROCEDURE prm.RegisterSet
	@Code			VARCHAR(50),
	@Value			SQL_VARIANT  = 'DEFAULT_NULL_VALUE',
	@Description	VARCHAR(500) = 'DEFAULT_NULL_VALUE'
AS BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	MERGE prm.Register AS trg
	USING
	(
		SELECT @Code AS Code, @Description AS [Description], @Value AS [Value], CONVERT(sysname, SQL_VARIANT_PROPERTY(@Value,'BaseType')) AS DataType, GETDATE() AS DateUpdated, SUSER_NAME() AS UserUpdated
	) AS src (Code, [Description], [Value], DataType, DateUpdated, UserUpdated)
	ON trg.Code = src.Code
	WHEN NOT MATCHED THEN
		INSERT (Code, [Description], [Value], DataType, DateUpdated, UserUpdated)
		VALUES (src.Code, src.[Description], src.[Value], src.DataType, src.DateUpdated, src.UserUpdated)
	WHEN MATCHED THEN
		UPDATE SET
			trg.[Value]       = IIF(CAST(@Value AS VARCHAR(50)) = 'DEFAULT_NULL_VALUE', trg.[Value], @Value),
			trg.[Description] = IIF(@Description = 'DEFAULT_NULL_VALUE', trg.[Description], @Description),
			trg.DataType      = src.DataType;
END;