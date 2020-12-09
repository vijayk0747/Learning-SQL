--Create a query using the designer, joining 2 tables, then tidy it up and comment its SQL.

SELECT tblCountry.CountryName AS Country, tblEvent.EventName AS WhatHappened, tblEvent.EventDate AS WhenHappened
FROM   tblCountry INNER JOIN
           tblEvent ON tblCountry.CountryID = tblEvent.CountryID
ORDER BY WhenHappened

