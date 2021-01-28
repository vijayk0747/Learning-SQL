-- Printing all Squares

DECLARE @IntValue INT = 1
DECLARE @DivideValue INT = 1

WHILE @IntValue < 1000

BEGIN

	DECLARE @sqrtValue FLOAT = SQRT(@IntValue);
	DECLARE @FloorValue INT = FLOOR(@sqrtValue);

	WHILE (@DivideValue <= @FloorValue)

	BEGIN

		IF (@IntValue % @DivideValue = 0)

		BEGIN

			PRINT(@IntValue);

		END

		SET @DivideValue = @DivideValue + 1

	END

	SET @IntValue = @IntValue + 1

END