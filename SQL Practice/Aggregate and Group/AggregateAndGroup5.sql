--Group by 2 fields and use HAVING clause to show popular combinations.

USE DoctorWho

SELECT ta.authorname AS 'Author Name', td.doctorname AS 'Doctor Name', COUNT(*) AS 'Episodes'

FROM tblAuthor ta INNER JOIN tblEpisode te ON ta.AuthorId = te.AuthorId INNER JOIN tblDoctor td ON td.DoctorId = te.DoctorId

GROUP BY ta.AuthorName, td.DoctorName

HAVING COUNT(*) > 5

ORDER BY 'Episodes' desc
