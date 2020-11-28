SELECT 
       [CountryName],

	   CASE
	   
	   WHEN ContinentID IN (1,3) THEN 'Eurasia'

	   WHEN ContinentID IN (5,6) THEN 'Americas'

	   WHEN ContinentID IN (2,4) THEN 'Somewhere Hot'

	   WHEN ContinentID = 7 THEN 'Somewhere Cold'

	   ELSE 'Somewhere Else'

	   END AS CountryLocation

  FROM [WorldEvents].[dbo].[tblCountry]