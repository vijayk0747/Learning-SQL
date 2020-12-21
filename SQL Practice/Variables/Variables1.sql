--Declare 3 variables to hold different data types.

DECLARE @Name VarChar(30) = 'Vijay Krishnamoorthy'

DECLARE @DOB DATETIME = '2001-07-16'

DECLARE @Pets INT = 0

SELECT 'My Name is ' + @Name + ' I was born on: ' + convert(varchar(50),@DOB,101) + ' and I have ' + cast(@Pets as varchar(50)) + ' Pets' AS 'Fun Fact'
