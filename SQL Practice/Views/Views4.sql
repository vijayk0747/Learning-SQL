USE [WorldEvents]
GO

/****** Object:  View [dbo].[EventsByCategory]    Script Date: 12/15/2020 12:41:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[EventsByCategory]
AS
SELECT TOP (100) PERCENT dbo.tblCategory.CategoryName AS Category, COUNT(dbo.tblEvent.EventName) AS What
FROM   dbo.tblCategory INNER JOIN
           dbo.tblEvent ON dbo.tblCategory.CategoryID = dbo.tblEvent.CategoryID
GROUP BY dbo.tblCategory.CategoryName
ORDER BY What ASC
GO

SELECT

*

FROM

EventsByCategory

WHERE

-- more than 50 events

What > 50

