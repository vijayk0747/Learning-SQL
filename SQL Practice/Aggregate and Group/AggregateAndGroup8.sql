--Use a complex CASE statement to show the number of events for each century, including the CUBE function.

USE WorldEvents

SELECT 

CASE 

	WHEN YEAR(te.EventDate) > 1700 AND YEAR(te.EventDate) < 1801 THEN '18th Century'
	WHEN YEAR(te.EventDate) > 1800 AND YEAR(te.EventDate) < 1901 THEN '19th Century'
	WHEN YEAR(te.EventDate) > 1900 AND YEAR(te.EventDate) < 2001 THEN '20th Century'
	WHEN YEAR(te.EventDate) > 2000 AND YEAR(te.EventDate) < 2101 THEN '21st Century'
	ELSE NULL

END AS Century, COUNT(te.EventName) AS 'Number of Events'

FROM tblEvent te

GROUP BY CUBE(

CASE 

	WHEN YEAR(te.EventDate) > 1700 AND YEAR(te.EventDate) < 1801 THEN '18th Century'
	WHEN YEAR(te.EventDate) > 1800 AND YEAR(te.EventDate) < 1901 THEN '19th Century'
	WHEN YEAR(te.EventDate) > 1900 AND YEAR(te.EventDate) < 2001 THEN '20th Century'
	WHEN YEAR(te.EventDate) > 2000 AND YEAR(te.EventDate) < 2101 THEN '21st Century'
	ELSE NULL

END)

ORDER BY COUNT(te.EventName) DESC

