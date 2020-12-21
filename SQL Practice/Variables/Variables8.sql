--Given the name of a Doctor Who, use variables to print details for him.

USE DoctorWho

DECLARE @DoctorNumber int = 9
DECLARE @DoctorId int
DECLARE @DoctorName varchar(100) 

SELECT
	@DoctorId = DoctorId,
	@DoctorName = DoctorName
FROM
	tblDoctor 
WHERE
	DoctorNumber = @DoctorNumber

DECLARE @NumberEpisodes int = 
(
	SELECT COUNT(*) FROM tblEpisode
	WHERE DoctorId = @DoctorId
)

PRINT ''
PRINT 'Results for doctor number ' + CAST(@DoctorId AS varchar(100))
PRINT '------------------------'
PRINT ''
PRINT 'Doctor Name: ' + upper(@DoctorName)
PRINT ''
PRINT 'Episodes Appeared In: ' + CAST(@NumberEpisodes AS varchar(10))