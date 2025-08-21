CREATE TABLE dbo.DimDate
(					  
	DateKey           BIGINT       NOT NULL CONSTRAINT PK_pbi_DimDate PRIMARY KEY,
	DateAlternateKey  DATE         NOT NULL,
	CalendarYear      SMALLINT     NOT NULL,
	MonthOfYear       TINYINT      NOT NULL,
	CalendarQuarter   TINYINT      NOT NULL,
	ISOWeek           TINYINT      NOT NULL,
	[DayOfWeek]       TINYINT      NOT NULL,
	DayCaption        NVARCHAR(10) NOT NULL,
	DayCaptionRUS     NVARCHAR(10) NOT NULL,
	YearOfISOWeek     SMALLINT     NOT NULL,
	DayNumberOfYear   SMALLINT     NOT NULL,
	DayNumberOfMonth  TINYINT      NOT NULL,
	DateCaption       NVARCHAR(10) NOT NULL,
	MonthCaption      NVARCHAR(20) NOT NULL,
	MonthCaptionRUS   NVARCHAR(20) NOT NULL,
	QuarterCaption    NVARCHAR(20) NOT NULL,
	[MonthName]       NVARCHAR(10) NOT NULL,
	MonthNameRUS      NVARCHAR(10) NOT NULL,
	QuarterName       NVARCHAR(10) NOT NULL,
	QuarterValue      SMALLINT     NOT NULL,
	MonthValue        DATE         NOT NULL,
	WeekCaption       NVARCHAR(50) NOT NULL,
	WeekCaptionRUS    NVARCHAR(50) NOT NULL,
	WeekDayCaption    NVARCHAR(50) NOT NULL,
	WeekDayCaptionRUS NVARCHAR(50) NOT NULL,
	Season            NVARCHAR(10) NOT NULL,
	SeasonRUS         NVARCHAR(10) NOT NULL,
	Half              SMALLINT     NOT NULL,
	WeekOfYear        SMALLINT     NOT NULL,
	WeekOfYCaption    NVARCHAR(50) NOT NULL,
	WeekOfYCaptionRUS NVARCHAR(50) NOT NULL,
	FirstMonthDay     DATE         NOT NULL,
	LastMonthDay      DATE         NOT NULL,
)
GO
CREATE NONCLUSTERED INDEX IX_dbo_DimDate_DateAlternateKey ON dbo.DimDate(DateAlternateKey);
GO
EXEC sys.sp_addextendedproperty @name=N'Description', @value=N'Различные представления дат' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Dimdate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate'
GO
