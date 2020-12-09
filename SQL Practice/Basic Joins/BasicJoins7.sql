--Use inner joins to link lots of tables together, with a WHERE clause.

SELECT tblAuthor.AuthorName, tblEpisode.Title, tblDoctor.DoctorName, tblEnemy.EnemyName,

Len(AuthorName) + Len(Title) + Len(DoctorName) + Len(EnemyName) AS TotalLength

FROM   tblEpisode INNER JOIN
           tblAuthor ON tblEpisode.AuthorId = tblAuthor.AuthorId INNER JOIN
           tblDoctor ON tblEpisode.DoctorId = tblDoctor.DoctorId INNER JOIN
           tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EpisodeId INNER JOIN
           tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId

WHERE Len(AuthorName) + Len(Title) + Len(DoctorName) + Len(EnemyName) < 40

