--Create a stored procedure to list Dr Who episodes written by Steven Moffat.

CREATE PROC spMoffat AS

SELECT te.Title, ta.AuthorName

FROM tblEpisode te INNER JOIN tblAuthor ta ON te.AuthorId = ta.AuthorId

WHERE ta.AuthorName = 'Steven Moffat'

ORDER BY te.EpisodeDate DESC