--Use an outer join and criterion to list out the countries which have no corresponding events.

SELECT tblCountry.CountryName, tblEvent.EventName, tblEvent.EventDetails
FROM   tblEvent FULL OUTER JOIN
           tblCountry ON tblEvent.CountryID = tblCountry.CountryID

Where EventID IS NULL