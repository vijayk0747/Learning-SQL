USE [WorldEvents]
GO

/****** Object:  View [dbo].[vwEverything]    Script Date: 12/11/2020 2:35:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vwEverything] AS

SELECT
	cat.CategoryName AS Category,
	cn.ContinentName AS Continent,
	cy.CountryName AS Country,
	e.EventName,
	e.EventDate

FROM
	tblCategory AS cat
	INNER JOIN tblEvent AS e ON cat.CategoryID = e.CategoryID
	INNER JOIN tblCountry AS cy ON e.CountryID = cy.CountryID
	INNER JOIN tblContinent AS cn ON cy.ContinentID = cn.ContinentID

GO

SELECT
	Category,
	COUNT(*) AS NumberEvents
FROM 
	vwEverything
WHERE
	Continent = 'Africa'
GROUP BY 
	Category
ORDER BY 
	NumberEvents DESC