--Use a variable holding a row id to get at the details for a row.

DECLARE @EpisodeId int = 54

DECLARE @EpisodeName varchar(100) =
(SELECT Title FROM tblEpisode WHERE tblEpisode.EpisodeId = @EpisodeId)

DECLARE @NumberCompanions int = 
(SELECT COUNT(*) FROM tblEpisodeCompanion WHERE tblEpisodeCompanion.EpisodeId = @EpisodeId)

DECLARE @NumberEnemies int = 
(SELECT COUNT(*) FROM tblEpisodeEnemy WHERE tblEpisodeEnemy.EpisodeId = @EpisodeId)

SELECT

@EpisodeName as Title,

@EpisodeId as 'Episode id',

@NumberCompanions as 'Number of companions',

@NumberEnemies as 'Number of enemies'


