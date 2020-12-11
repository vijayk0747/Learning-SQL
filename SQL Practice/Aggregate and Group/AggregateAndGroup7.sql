--Combine CAST, AVG, COUNT, LEN, UPPER and LEFT to show the average length of event names by category initial.

USE WorldEvents

SELECT LEFT(tc.CategoryName,1) AS 'Category Initial', COUNT(*) AS 'Number of Events', CONVERT(NUMERIC(10,2),AVG(CAST(LEN(te.EventName) AS DECIMAL))) AS 'Average Event Length'

FROM tblCategory tc INNER JOIN tblEvent te ON tc.CategoryID = te.CategoryID

GROUP BY LEFT(tc.CategoryName,1)