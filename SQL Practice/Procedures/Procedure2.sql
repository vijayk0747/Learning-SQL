--Create a stored procedure to list Dr Who episodes featuring Matt Smith.

CREATE PROC spMattSmithEpisodes AS

SELECT te.SeriesNumber AS 'Series', te.EpisodeNumber AS 'Episode', te.Title, te.EpisodeDate AS 'Date of Episode', td.DoctorName AS 'Doctor Name'

FROM tblEpisode te INNER JOIN tblDoctor td ON te.DoctorId = td.DoctorId

WHERE td.DoctorName = 'Matt Smith'

ORDER BY te.EpisodeDate ASC