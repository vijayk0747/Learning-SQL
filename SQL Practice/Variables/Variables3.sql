--	Create a simple stored procedure with a single variable to work out your age, and then print it out.

CREATE PROC spCalculateAge AS

DECLARE @Age INT

SET @Age = DateDiff(year,'03/04/1964',GetDate())

PRINT 'You are ' + CAST(@Age AS Varchar(3)) + ' years old'