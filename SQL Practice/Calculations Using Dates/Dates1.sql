--Combine the YEAR, CONVERT and FORMAT functions to show events in your year of birth.

SELECT 
       [EventName],
	   [EventDate] as NotFormatted,
	   FORMAT(EventDate, 'dd/MM/yy') as UsingFormat,
	   CONVERT(char(10), EventDate, 103) as UsingConvert


   FROM [WorldEvents].[dbo].[tblEvent]

   WHERE YEAR([EventDate]) = 2001 
   ORDER BY MONTH([EventDate]) 
