-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2023-06-26
-- Description:	Первый день месяца по дню
-- =============================================
CREATE FUNCTION dbo.MonthFirstDay
(
	@Date DATE
)
RETURNS DATE
AS
BEGIN
	RETURN DATEADD(DAY, -DAY(@Date) + 1, @Date)
END
