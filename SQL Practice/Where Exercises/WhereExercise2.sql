SELECT 
       [EventName]
      ,[EventDetails]
      ,[EventDate]
  FROM [WorldEvents].[dbo].[tblEvent]

 Where (CategoryID = 4 or CountryID in (8,22,30,35) or EventDetails LIKE '% WATER %') AND Year(EventDate)>1970