--Use IF to change the SELECT statement that a stored proc runs.

CREATE PROC uspInformation (@Variable1 varchar(100) = NULL) AS

IF @Variable1 LIKE '%Event%' 

BEGIN

SELECT te.EventName AS 'EventName', te.EventDate, te.EventDetails

FROM tblEvent te INNER JOIN tblCountry tc ON te.CountryID = tc.CountryID INNER JOIN tblContinent tcc ON tcc.ContinentID = tc.ContinentID

END

ELSE IF @Variable1 LIKE '%Country%'

BEGIN

SELECT tc.CountryName AS 'CountryName', te.EventDate, te.EventDetails

FROM tblEvent te INNER JOIN tblCountry tc ON te.CountryID = tc.CountryID INNER JOIN tblContinent tcc ON tcc.ContinentID = tc.ContinentID

END

ELSE IF @Variable1 LIKE '%Continent%'

BEGIN

SELECT tcc.ContinentName AS 'Continent Name', te.EventDate, te.EventDetails

FROM tblEvent te INNER JOIN tblCountry tc ON te.CountryID = tc.CountryID INNER JOIN tblContinent tcc ON tcc.ContinentID = tc.ContinentID

END

ELSE

BEGIN

PRINT('Enter Event, Country, or Continent please')

END


 




--exec uspInformation 'Event'

--exec uspInformation 'Country'

--exec uspInformation 'Continent'

--exec uspInformation 'ErrorCheck'
