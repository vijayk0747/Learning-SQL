SELECT 
       [EventName]
      ,[EventDate]
  FROM [WorldEvents].[dbo].[tblEvent]

  WHERE YEAR(EventDate) = 2005 and MONTH(EventDate) = 2