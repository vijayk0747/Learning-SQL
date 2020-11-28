SELECT  
       [EventName]
      ,[EventDate]
  FROM [WorldEvents].[dbo].[tblEvent]

  WHERE EventName LIKE '%TELETUBBIES%' OR EventName LIKE '%Pandy%'