--Read a list of the enemies of Doctor Who into a string variable.

DECLARE @EpisodeID int = 15

DECLARE @EnemyList varchar(100) = ''

SELECT @EnemyList = @EnemyList + CASE WHEN len(@EnemyList) > 0 THEN ', ' ELSE '' END + EnemyName from tblEnemy INNER JOIN tblEpisodeEnemy ON tblEnemy.EnemyId = tblEpisodeEnemy.EnemyId WHERE tblEpisodeEnemy.EpisodeId = @EpisodeID

SELECT

@EpisodeId as 'Episode id',

@EnemyList AS 'Enemies'