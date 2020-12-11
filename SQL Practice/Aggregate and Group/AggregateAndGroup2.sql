--Use GROUP BY and COUNT to report on the number of events for each category.

SELECT tc.CategoryName, count(*) as NumberOfEvents

FROM tblCategory tc INNER JOIN tblEvent te

ON tc.CategoryID = te.CategoryID

GROUP BY CategoryName

ORDER BY NumberOfEvents DESC
