--Create a list variable to store all the events released in a specified year.

DECLARE @EventsInYear varchar(max) = '' 

SELECT TOP 3 @EventsInYear = @EventsInYear + EventName + ', '
FROM tblEvent
WHERE YEAR(EventDate) = 2001
ORDER BY EventName ASC


IF LEN(@EventsInYear) = 0 
	SELECT 'There were no Events in this Year'
ELSE
	BEGIN
		SET @EventsInYear = LEFT(@EventsInYear, LEN(@EventsInYear) - 1)
		SELECT @EventsInYear AS 'Eventful year'
	END