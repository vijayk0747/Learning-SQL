--Filtering a stored procedure using variables.

CREATE PROC uspBirthDayEvents AS

DECLARE @FirstDay DATETIME SET @FirstDay ='2001-01-31'

DECLARE @LastDay DATETIME SET @LastDay = '2001-12-31'

SELECT EventName, EventDate, CountryName

FROM tblEvent INNER JOIN tblCountry ON tblEvent.CountryID = tblCountry.CountryID

WHERE EventDate BETWEEN @FirstDay AND @LastDay

ORDER BY EventDate