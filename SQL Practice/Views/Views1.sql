USE [DoctorWho]
GO

/****** Object:  View [dbo].[vwEpisodesByFirstLetter]    Script Date: 12/11/2020 2:22:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwEpisodesByFirstLetter]
AS
SELECT TOP (100) PERCENT dbo.tblAuthor.AuthorName, dbo.tblDoctor.DoctorName, dbo.tblEpisode.Title, dbo.tblEpisode.EpisodeDate
FROM   dbo.tblAuthor INNER JOIN
           dbo.tblEpisode ON dbo.tblAuthor.AuthorId = dbo.tblEpisode.AuthorId INNER JOIN
           dbo.tblDoctor ON dbo.tblEpisode.DoctorId = dbo.tblDoctor.DoctorId
WHERE (LEFT(dbo.tblEpisode.Title, 1) = 'H')
ORDER BY dbo.tblEpisode.EpisodeDate
GO


