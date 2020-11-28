SELECT [EventID]
      ,[EventName]
      ,[EventDetails]
	  ,[CategoryID]
  FROM [WorldEvents].[dbo].[tblEvent]
  WHERE EventDetails LIKE '%TRAIN%' and CategoryID != 14

SELECT [EventID]
      ,[EventName]
      ,[EventDetails]
	  ,[CountryID]
  FROM [WorldEvents].[dbo].[tblEvent]
  WHERE CountryID = 13 and EventDetails NOT LIKE '%SPACE%' and EventName NOT LIKE '%SPACE%'

SELECT 
       [EventName]
      ,[EventDetails]
  FROM [WorldEvents].[dbo].[tblEvent]
  WHERE CategoryID in (5,6) and EventDetails NOT LIKE '%WAR%' AND EventDetails NOT LIKE '%Death%'



