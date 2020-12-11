--Create 2 self-joins between a table of families and itself, to show families, their parents and their grandparents.

SELECT
	Family.FamilyName,

	CASE	
		WHEN TopFamily.FamilyName is null THEN '' 
		ELSE TopFamily.FamilyName + ' > ' 
	END + 

	CASE	
		WHEN ParentFamily.FamilyName is null THEN '' 
		ELSE ParentFamily.FamilyName + ' > '
	END + 

	Family.FamilyName AS 'Family path'

FROM

	tblFamily AS Family

	LEFT OUTER JOIN tblFamily AS ParentFamily
		ON Family.ParentFamilyId = ParentFamily.FamilyID

	LEFT JOIN tblFamily AS TopFamily 
		ON ParentFamily.ParentFamilyId = TopFamily.FamilyID

ORDER BY
	Family.FamilyName