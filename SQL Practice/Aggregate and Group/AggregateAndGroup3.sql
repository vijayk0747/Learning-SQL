--Use COUNT, MAX and MIN to show statistics about the rows in the events table.

SELECT COUNT(EventID) AS TotalEvents, MAX(te.EventDate) AS LastDate, MIN(te.EventDate) AS FirstDate

FROM tblEvent te