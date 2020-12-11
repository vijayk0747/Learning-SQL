--Use SELECT, FROM, WHERE, GROUP BY, HAVING and ORDER BY to list non-European busy countries.

SELECT tc.ContinentName AS CONTINENT, tcc.CountryName AS COUNTRY, Count(*) AS 'Number of Events'

FROM tblContinent tc INNER JOIN tblCountry tcc ON tc.ContinentID = tcc.ContinentID INNER JOIN tblEvent te ON te.CountryID = tcc.CountryID

WHERE tc.ContinentName <> 'Europe'

GROUP BY tc.ContinentName, tcc.CountryName

HAVING Count(*) > 5

ORDER BY tcc.CountryName




