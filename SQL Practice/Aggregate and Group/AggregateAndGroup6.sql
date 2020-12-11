--Use lots of grouping and criteria to list out year/doctor episode counts.

USE DoctorWho

SELECT YEAR(te.EpisodeDate) AS 'Episode Year', tee.EnemyName AS 'Enemy Name', COUNT(*) AS 'Number of Episodes'

FROM   tblEpisode te INNER JOIN tblEpisodeEnemy ON te.EpisodeId = tblEpisodeEnemy.EpisodeId INNER JOIN tblEnemy tee ON tblEpisodeEnemy.EnemyId = tee.EnemyId INNER JOIN tblDoctor td ON td.DoctorId = te.DoctorId

GROUP BY YEAR(te.EpisodeDate), tee.EnemyName, td.BirthDate

HAVING YEAR(td.BirthDate) < 1970 AND COUNT(*) > 1

ORDER BY COUNT(*) DESC