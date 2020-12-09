--Link the continent, country and event tables with inner joins, and then filter by fields from 2 tables.

SELECT tblEvent.EventName, tblEvent.EventDate, tblCountry.CountryName, tblContinent.ContinentName
FROM   tblEvent INNER JOIN
           tblCountry ON tblEvent.CountryID = tblCountry.CountryID INNER JOIN
           tblContinent ON tblCountry.ContinentID = tblContinent.ContinentID
WHERE (tblCountry.CountryName = 'Russia') OR (tblContinent.ContinentName = 'Antarctic')