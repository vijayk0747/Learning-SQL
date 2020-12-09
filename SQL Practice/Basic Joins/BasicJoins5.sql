--Create an inner join in a query, then change it to an outer join to show categories having no events.

SELECT tblEvent.EventName, tblEvent.EventDate, tblCategory.CategoryName
FROM   tblCategory FULL OUTER JOIN
           tblEvent ON tblCategory.CategoryID = tblEvent.CategoryID
WHERE EventID is NULL 