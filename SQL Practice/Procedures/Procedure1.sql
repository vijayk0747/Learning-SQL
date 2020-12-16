CREATE PROCEDURE uspCountriesEurope AS

SELECT tc.CountryName

FROM tblCountry tc

GROUP BY tc.CountryName, tc.ContinentID

HAVING tc.ContinentID = 3

ORDER BY CountryName ASC


EXEC uspCountriesEurope 