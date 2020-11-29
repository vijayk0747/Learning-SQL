--Display full dates, including the correct suffix (1st, 2nd, 3rd, etc). 

SELECT 
       [EventName],

	   Datename(weekday, EventDate) + ' ' + Datename(day, EventDate) +

	   	CASE 

		WHEN DatePart(day,EventDate) IN (1,21,31) THEN 'st'
		WHEN DatePart(day,EventDate) IN (2,22)  THEN 'nd'
		WHEN DatePart(day,EventDate) IN (3,23)  THEN 'rd'
		ELSE 'th'

	END + ' ' + 

		DATENAME(month,EventDate) + ' ' +
		DATENAME(year,EventDate) AS 'Full date'

  FROM [WorldEvents].[dbo].[tblEvent]