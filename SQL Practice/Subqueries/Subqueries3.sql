--	Using sub queries filter the select statement.

USE WorldEvents

SELECT tc.ContinentName, te.EventName

FROM tblContinent tc INNER JOIN tblCountry ON tc.ContinentID = tblCountry.ContinentID INNER JOIN tblEvent te ON tblCountry.CountryID = te.CountryID

WHERE tc.ContinentName IN 

(SELECT TOP 3 tc.ContinentName
FROM tblContinent tc INNER JOIN tblCountry ON tc.ContinentID = tblCountry.ContinentID INNER JOIN tblEvent te ON tblCountry.CountryID = te.CountryID
GROUP BY tc.ContinentName
ORDER BY COUNT(te.EventName))

ORDER BY tc.ContinentName ASC






--SELECT TOP 3 tc.ContinentName
--FROM tblContinent tc INNER JOIN tblCountry ON tc.ContinentID = tblCountry.ContinentID INNER JOIN tblEvent te ON tblCountry.CountryID = te.CountryID
--GROUP BY tc.ContinentName
--ORDER BY COUNT(te.EventName)
