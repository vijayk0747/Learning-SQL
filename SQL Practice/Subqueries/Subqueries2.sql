--Use subqueries to filter with aggregates.

USE WorldEvents

SELECT te.EventName

FROM tblEvent te

WHERE LEN(te.EventName) > (SELECT AVG(LEN(EventName)) FROM tblEvent)