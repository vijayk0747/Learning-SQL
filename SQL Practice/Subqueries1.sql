--Use a subquery to show events which happened since the last one for a particular country occurred.

USE WorldEvents

SELECT te.EventName, te.EventDate, tc.CountryName

FROM tblEvent te INNER JOIN tblCountry tc ON te.CountryID = tc.CountryID

WHERE te.EventDate > (SELECT MAX(te.EventDate) FROM tblEvent te WHERE te.CountryID = 21)

ORDER BY te.EventDate DESC