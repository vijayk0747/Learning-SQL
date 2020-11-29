--Use the DATENAME and DATEPART functions to show events taking place on Friday 13th of any month/year.

SELECT 
       [EventName],
       [EventDate],

	   DATENAME(weekday, [EventDate]) as DayOfTheWeek,
	   Day(EventDate) as DayNumber

FROM [WorldEvents].[dbo].[tblEvent]