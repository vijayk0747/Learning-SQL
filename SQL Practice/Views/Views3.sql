USE [DoctorWho]
GO

/****** Object:  View [dbo].[vwSeriesOne]    Script Date: 12/14/2020 6:27:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwSeriesOne] AS

SELECT te.Title, te.SeriesNumber, te.EpisodeNumber

FROM tblEpisode te

WHERE te.SeriesNumber = 2

GO

SELECT * FROM vwSeriesOne
