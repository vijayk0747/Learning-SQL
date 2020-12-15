USE [DoctorWho]
GO

/****** Object:  View [dbo].[vwEpisodeCompanion]    Script Date: 12/15/2020 12:55:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwEpisodeCompanion] AS

SELECT
	e.EpisodeId,
	e.Title,
	COUNT(*) as NumberEpisodes
FROM
	tblEpisode AS e
	INNER JOIN tblEpisodeCompanion AS ec ON e.EpisodeId = ec.EpisodeId
GROUP BY
	e.EpisodeId,
	e.Title
HAVING
	count(*) = 1
GO

USE [DoctorWho]
GO

/****** Object:  View [dbo].[vwEpisodeEnemy]    Script Date: 12/15/2020 12:55:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwEpisodeEnemy] AS

SELECT
	e.EpisodeId,
	e.Title,
	COUNT(*) as NumberEpisodes
FROM
	tblEpisode AS e
	INNER JOIN tblEpisodeEnemy AS ec ON e.EpisodeId = ec.EpisodeId
GROUP BY
	e.EpisodeId,
	e.Title
HAVING
	count(*) = 1
GO

USE [DoctorWho]
GO

/****** Object:  View [dbo].[vwEpisodeSummary]    Script Date: 12/15/2020 12:56:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwEpisodeSummary] AS

SELECT
	e.EpisodeId,
	e.Title
FROM
	tblEpisode AS e
	LEFT OUTER JOIN vwEpisodeEnemy AS en ON e.EpisodeId = en.EpisodeId
	LEFT OUTER JOIN vwEpisodeCompanion AS c ON e.EpisodeId = c.EpisodeId
WHERE
	en.EpisodeId is null and
	c.EpisodeId is null
GO

SELECT * FROM vwEpisodeSummary
ORDER BY 
	Title
