--Use grouping to show how many episodes each Doctor Who author wrote.

select ta.AuthorName, count(*) as NoOfepi, MIN(EpisodeDate) AS FirstEpisode, MAX(EpisodeDate) AS LastEpisode from tblEpisode  te
inner join tblAuthor ta
on te.AuthorId = ta.AuthorId
group by ta.AuthorName
order by count(*) desc


