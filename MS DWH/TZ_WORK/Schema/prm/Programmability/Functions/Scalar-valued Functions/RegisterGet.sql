-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2022-09-09
-- Description:	Возвращение значения параметра @Code
-- @Default - значение по умолчанию, если параметра нет
-- =============================================
CREATE FUNCTION prm.RegisterGet
(
	@Code    VARCHAR(50),
	@Default SQL_VARIANT = NULL
)
RETURNS SQL_VARIANT
AS
BEGIN
	RETURN ISNULL((SELECT [Value] FROM prm.Register WHERE Code = @Code), @Default);
END
GO
GRANT EXEC ON prm.RegisterGet TO tz_report, [1c_dwh];