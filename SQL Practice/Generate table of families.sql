USE WorldEvents
GO


CREATE TABLE tblFamily(
	FamilyID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FamilyName nvarchar(255) NULL,
	ParentFamilyId int NULL)

GO

SET IDENTITY_INSERT tblFamily ON 
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (1, N'Politics', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (2, N'Alien life', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (3, N'Exploration', 23)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (4, N'Natural world', 23)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (5, N'Death and disaster', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (6, N'War and conflict', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (7, N'Sports', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (8, N'Economy', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (9, N'Entertainment and culture', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (10, N'Health and medicine', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (11, N'Love and relationships', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (12, N'Science and technology', 23)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (13, N'Old', 24)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (14, N'Transport', 23)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (15, N'Energy', 23)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (16, N'Royalty and monarchy', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (17, N'Crime and legal', 21)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (18, N'Religion', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (19, N'Education', 22)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (20, N'General', 24)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (21, N'Socio/political', 25)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (22, N'Cultural', 25)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (23, N'Scientific/technical', 25)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (24, N'Odd', 25)
GO
INSERT tblFamily (FamilyID, FamilyName, ParentFamilyId) VALUES (25, N'All categories', NULL)
GO
SET IDENTITY_INSERT tblFamily OFF
GO
