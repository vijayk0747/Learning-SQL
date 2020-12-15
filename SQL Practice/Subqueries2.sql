--Use subqueries to filter with aggregates.

SELECT te.EventName

FROM tblEvent te

WHERE LEN(te.EventName) > (SELECT AVG(LEN(EventName)) FROM tblEvent)