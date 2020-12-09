--Use inner joins to link four tables to show Dr Who enemies by author.

SELECT tblEnemy.EnemyName, tblAuthor.AuthorName
FROM   tblEnemy INNER JOIN
           tblEpisodeEnemy ON tblEnemy.EnemyId = tblEpisodeEnemy.EnemyId INNER JOIN
           tblEpisode ON tblEpisodeEnemy.EpisodeId = tblEpisode.EpisodeId INNER JOIN
           tblAuthor ON tblEpisode.AuthorId = tblAuthor.AuthorId
WHERE (tblEnemy.EnemyName = 'Daleks')