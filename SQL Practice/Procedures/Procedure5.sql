--Create a stored procedure to list Dr Who episodes by frequency in two ways.

CREATE PROC spSummariseEpisodes AS

SELECT TOP 3 tc.CompanionName, COUNT(*) AS 'Episodes'

FROM tblCompanion tc INNER JOIN tblEpisodeCompanion ON tc.CompanionId = tblEpisodeCompanion.CompanionId INNER JOIN tblEpisode te ON tblEpisodeCompanion.EpisodeId = te.EpisodeId

GROUP BY tc.CompanionName

ORDER BY 'Episodes' DESC


SELECT TOP 3 EnemyName, COUNT(*) AS 'Episodes'

FROM tblEnemy te INNER JOIN tblEpisodeEnemy ON te.EnemyId = tblEpisodeEnemy.EnemyId INNER JOIN tblEpisode tep ON tblEpisodeEnemy.EpisodeId = tep.EpisodeId

GROUP BY te.EnemyName

ORDER BY 'Episodes' DESC