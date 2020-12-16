--	Filter the select statement, only show events occuring in August.

CREATE PROC uspAugustEvents AS

SELECT te.EventID, te.EventName, te.EventDetails, te.EventDate

FROM tblEvent te

WHERE MONTH(te.EventDate) = 08

