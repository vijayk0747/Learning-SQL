--Create a correlated subquery to list out all countries having more than 8 events.

USE WorldEvents

SELECT tc.CountryName

FROM tblCountry tc 

WHERE 8 < (SELECT COUNT(te.EventID) FROM tblEvent te  WHERE tc.CountryID = te.CountryID)

GROUP BY tc.CountryName