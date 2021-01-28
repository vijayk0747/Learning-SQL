Declare @StartYear INT = 2001;
Declare @EndYear INT = 2020;

WHILE @StartYear < @EndYear

BEGIN

DECLARE @EventCount INT =(SELECT COUNT(*) FROM tblEvent WHERE YEAR(EventDate) = @StartYear)

PRINT CAST(@EventCount as varchar(4)) + ' events occurred in ' + cast(@StartYear as varchar(4))

SET @StartYear = @StartYear + 1;

END
