--Write an SQL outer join to show unmatched records in another table.

SELECT tblCompanion.CompanionName
FROM   tblCompanion FULL OUTER JOIN
           tblEpisodeCompanion ON tblCompanion.CompanionId = tblEpisodeCompanion.CompanionId
WHERE EpisodeCompanionId IS NULL