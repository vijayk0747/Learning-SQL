--	Use two subqueries to list all events in neither the last 30 countries or the last 15 categories.

USE WorldEvents

SELECT te.EventName, te.EventDetails

FROM tblEvent te

WHERE te.CountryID NOT IN 

(SELECT TOP 30 tc.CountryID from tblCountry tc ORDER BY tc.CountryName DESC)

AND te.CategoryID NOT IN

(SELECT TOP 15 c.CategoryID from tblCategory c ORDER BY c.CategoryName DESC)
