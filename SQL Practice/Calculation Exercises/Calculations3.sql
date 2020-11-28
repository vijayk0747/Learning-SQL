SELECT
      [EventName] + ' (Category ' + CAST(CategoryID AS nchar) + ')'
     ,[EventDate]
  FROM [WorldEvents].[dbo].[tblEvent]