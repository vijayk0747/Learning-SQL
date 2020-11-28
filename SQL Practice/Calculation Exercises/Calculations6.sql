SELECT 
       [EventName],

	   CASE

	   WHEN CHARINDEX(LEFT(EventName,1),'a,e,i,o,u',1) > 0 and LEFT(EventName,1) = RIGHT(EventName,1) THEN 'Same Vowel'

	   WHEN LEFT(EventName,1) = RIGHT (EventName,1) THEN 'Same Letter'

	   WHEN CHARINDEX(left(EventName,1),'aeiou',1) > 0 and CHARINDEX(right(EventName,1),'aeiou',1) > 0 THEN 'Begins and ends with vowel'
	   
	   ELSE 'Boring Event'

	   END AS Verdict

  FROM [WorldEvents].[dbo].[tblEvent]

  WHERE 

  	   CASE

	   WHEN CHARINDEX(LEFT(EventName,1),'a,e,i,o,u',1) > 0 and LEFT(EventName,1) = RIGHT(EventName,1) THEN 'Same Vowel'

	   WHEN LEFT(EventName,1) = RIGHT (EventName,1) THEN 'Same Letter'

	   WHEN CHARINDEX(left(EventName,1),'aeiou',1) > 0 and CHARINDEX(right(EventName,1),'aeiou',1) > 0 THEN 'Begins and ends with vowel'
	   
	   ELSE 'Boring Event'

	   END <> 'Boring Event'