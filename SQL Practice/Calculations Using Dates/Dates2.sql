--Use the DATEDIFF and the ABS functions to list the events in order of closeness to when you were born.

SELECT 
       [EventName],
       [EventDate],

	   ABS(DATEDIFF(day, EventDate, '20010716')) as DaysOffset

  FROM [WorldEvents].[dbo].[tblEvent]

  order by DaysOffset asc