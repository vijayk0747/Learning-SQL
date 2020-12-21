--Using variables create a summary output window of aggregated data.

USE WorldEvents

DECLARE @EarliestDate datetime
DECLARE @LatestDate datetime
DECLARE @NumberOfEvents int
DECLARE @EventInfo varchar(100) = 'Summary of Events'

SELECT @EarliestDate = MIN(EventDate) FROM tblEvent
SELECT @LatestDate = MAX(EventDate) FROM tblEvent
SELECT @NumberOfEvents = COUNT(*) FROM tblEvent

SELECT @EventInfo AS 'Title', @EarliestDate AS 'Earliest Date', @LatestDate AS 'Latest Date', @NumberOfEvents AS 'Number of Events'