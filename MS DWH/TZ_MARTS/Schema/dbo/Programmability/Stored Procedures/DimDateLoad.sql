-- =============================================
-- Author:		Дзреян К.Е..
-- Create date: 2023-11-28
-- Description:	Обновление данных в реестре дат. Основаниа на процедуре Ильина Игоря dc1-dwh-db1.MARTS.pbi.p_Load_DimDate
-- =============================================
CREATE PROCEDURE dbo.DimDateLoad
	  @DateFrom DATETIME
	, @DateTill DATETIME
AS BEGIN
	SET NOCOUNT ON;	
	-- для правильноuо расчета дней недели и ISO года принципиально, чтобы параметр DATEFIRST был равен 7
	-- Требования заказчика по словам Ильина Игоря.
	SET DATEFIRST 7;
	SET LANGUAGE 'English';

	WITH cteDimDate AS 
	(
		SELECT @DateFrom AS Date
		UNION ALL
		SELECT DATEADD(DAY, 1, Date)
		FROM cteDimDate
		WHERE DATEADD(DAY, 1, Date) <= @DateTill
	)
	, c AS (
		SELECT
			  CONVERT(BIGINT, CONVERT(VARCHAR(8), Date, 112))                                                                                                                                                                                               AS DateKey
			, CONVERT(DATE, Date)                                                                                                                                                                                                                           AS DateAlternateKey
			, CONVERT(SMALLINT, YEAR(Date))                                                                                                                                                                                                                 AS CalendarYear 
			, CONVERT(TINYINT, MONTH(Date))                                                                                                                                                                                                                 AS MonthOfYear
			, CONVERT(TINYINT, DATEPART(qq, Date))                                                                                                                                                                                                          AS CalendarQuarter
			, CONVERT(TINYINT, DATEPART (isowk, Date))                                                                                                                                                                                                      AS ISOWeek
			, CONVERT(TINYINT, DATEPART(dw, Date))                                                                                                                                                                                                          AS [DayOfWeek]
			, FORMAT(Date, 'ddd', 'en-US')                                                                                                                                                                                                                  AS DayCaption
			, FORMAT(Date, 'ddd', 'ru-RU')                                                                                                                                                                                                                  AS DayCaptionRUS
			, CONVERT(SMALLINT, DATEPART(YEAR, DATEADD(d, -(DATEPART(WEEKDAY, Date) +5) % 7 + 3, Date)))                                                                                                                                                    AS YearOfISOWeek
			, CONVERT(SMALLINT, DATEPART(dy, Date))                                                                                                                                                                                                         AS DayNumberOfYear
			, CONVERT(TINYINT, DAY(Date))                                                                                                                                                                                                                   AS DayNumberOfMonth
			, CONVERT(NVARCHAR(10), Date, 104)                                                                                                                                                                                                              AS DateCaption
			, FORMAT(Date, 'MMM', 'en-US') + ' ' + CONVERT(NVARCHAR(4), YEAR(Date))                                                                                                                                                                         AS MonthCaption
			, FORMAT(Date, 'MMM', 'ru-RU') + ' ' + CONVERT(NVARCHAR(4), YEAR(Date))                                                                                                                                                                         AS MonthCaptionRUS
			, 'Q' + CONVERT(NVARCHAR(1), DATEPART(qq, Date)) + ' ' + CONVERT(NVARCHAR(4), YEAR(Date))                                                                                                                                                       AS QuarterCaption
			, DATENAME(mm, Date)                                                                                                                                                                                                                            AS [MonthName]
			, FORMAT(Date,'MMMM','ru-RU')                                                                                                                                                                                                                   AS MonthNameRUS
			, 'Q' + CONVERT(NVARCHAR(1), DATEPART(qq, Date))                                                                                                                                                                                                AS QuarterName
			, DATEPART(qq, Date)                                                                                                                                                                                                                            AS QuarterValue
			, CONVERT(DATE, DATEADD(dd, 1 - DAY(Date), Date))                                                                                                                                                                                               AS MonthValue
			, 'Wk ' + LEFT(REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2), DATEPART(isowk, Date)))), 2) + CONVERT(NVARCHAR(2), DATEPART(isowk, Date)) + ', ' + CONVERT(NVARCHAR(4), DATEPART(YEAR, DATEADD(d, -(DATEPART(WEEKDAY, Date) +5) % 7 + 3, Date)))     AS WeekCaption
			, 'Неделя ' + LEFT(REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2), DATEPART(isowk, Date)))), 2) + CONVERT(NVARCHAR(2), DATEPART(isowk, Date)) + ', ' + CONVERT(NVARCHAR(4), DATEPART(YEAR, DATEADD(d, -(DATEPART(WEEKDAY, Date) +5) % 7 + 3, Date))) AS WeekCaptionRUS
			, FORMAT(Date, 'ddd', 'en-US') + ', ' + CONVERT(NVARCHAR(10), Date, 104)                                                                                                                                                                        AS WeekDayCaption
			, FORMAT(Date, 'ddd', 'ru-RU') + ', ' + CONVERT(NVARCHAR(10), Date, 104)                                                                                                                                                                        AS WeekDayCaptionRUS
			, CASE
				 WHEN MONTH(Date) BETWEEN 3 AND 5  THEN 'Spring'
				 WHEN MONTH(Date) BETWEEN 6 AND 8  THEN 'Summer'
				 WHEN MONTH(Date) BETWEEN 9 AND 11 THEN 'Autumn'
												   ELSE 'Winter'
			  END                                                                                                                                                                                                                                           AS Season
			  , CASE
				 WHEN MONTH(Date) BETWEEN 3 AND 5  THEN 'Весна'
				 WHEN MONTH(Date) BETWEEN 6 AND 8  THEN 'Лето'
				 WHEN MONTH(Date) BETWEEN 9 AND 11 THEN 'Осень'
												   ELSE 'Зима'
			  END                                                                                                                                                                                                                                           AS SeasonRUS
			, CASE 
				 WHEN DATEPART(qq, Date) IN (1,2) THEN 1
												  ELSE 2 
			  END                                                                                                                                                                                                                                           AS Half
			, CONVERT(SMALLINT, DATEPART(WEEK, Date))                                                                                                                                                                                                       AS WeekOfYear
			, 'Wk '+CAST (DATEPART(WEEK, Date) AS NVARCHAR(2)) +', '+CAST (YEAR(Date) AS NVARCHAR(4))                                                                                                                                                       AS WeekOfYCaption
			, 'Неделя '+CAST (DATEPART(WEEK, Date) AS NVARCHAR(2)) +', '+CAST (YEAR(Date) AS NVARCHAR(4))                                                                                                                                                   AS WeekOfYCaptionRUS
			, dbo.MonthFirstDay(Date)                                                                                                                                                                                                                       AS FirstMonthDay 
			, EOMONTH(Date)                                                                                                                                                                                                                                 AS LastMonthDay  
		FROM      cteDimDate c
	)
	INSERT dbo.DimDate
	(
          DateKey
        , DateAlternateKey
        , CalendarYear 
        , MonthOfYear
        , CalendarQuarter
        , ISOWeek
        , [DayOfWeek]
        , DayCaption
        , DayCaptionRUS
        , YearOfISOWeek
        , DayNumberOfYear
        , DayNumberOfMonth
        , DateCaption
        , MonthCaption
        , MonthCaptionRUS
        , QuarterCaption
        , [MonthName]
        , MonthNameRUS
        , QuarterName
        , QuarterValue
        , MonthValue
        , WeekCaption
        , WeekCaptionRUS
        , WeekDayCaption
        , WeekDayCaptionRUS
        , Season
        , SeasonRUS
        , Half
        , WeekOfYear
        , WeekOfYCaption
        , WeekOfYCaptionRUS
        , FirstMonthDay 
        , LastMonthDay  
	)
	SELECT
	      c.DateKey
        , c.DateAlternateKey
        , c.CalendarYear 
        , c.MonthOfYear
        , c.CalendarQuarter
        , c.ISOWeek
        , c.[DayOfWeek]
        , c.DayCaption
        , c.DayCaptionRUS
        , c.YearOfISOWeek
        , c.DayNumberOfYear
        , c.DayNumberOfMonth
        , c.DateCaption
        , c.MonthCaption
        , c.MonthCaptionRUS
        , c.QuarterCaption
        , c.[MonthName]
        , c.MonthNameRUS
        , c.QuarterName
        , c.QuarterValue
        , c.MonthValue
        , c.WeekCaption
        , c.WeekCaptionRUS
        , c.WeekDayCaption
        , c.WeekDayCaptionRUS
        , c.Season
        , c.SeasonRUS
        , c.Half
        , c.WeekOfYear
        , c.WeekOfYCaption
        , c.WeekOfYCaptionRUS
        , c.FirstMonthDay 
		, c.LastMonthDay
	FROM c
	LEFT JOIN dbo.DimDate d ON d.DateKey = c.DateKey
	WHERE d.DateKey IS NULL
	OPTION (MAXRECURSION 0);
END;