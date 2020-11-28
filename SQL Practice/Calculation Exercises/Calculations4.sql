SELECT 
       [EventName],
       [EventDate],

	  CHARINDEX('this', EventDetails, 1) AS ThisPosition,
	  CHARINDEX('that', EventDetails, 1) AS ThatPosition,

	  CHARINDEX('that', EventDetails, 1) - CHARINDEX('this', EventDetails, 1) AS Offset

  FROM [WorldEvents].[dbo].[tblEvent]

  WHERE 

  CHARINDEX('this', EventDetails, 1) > 0 AND
  CHARINDEX('that', EventDetails, 1) > 0 AND
  CHARINDEX('that', EventDetails, 1) - CHARINDEX('this', EventDetails, 1) > 0


