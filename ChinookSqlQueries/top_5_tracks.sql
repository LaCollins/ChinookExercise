SELECT TOP(5) Track.Name, COUNT(*) AS NumSold
FROM InvoiceLine
	JOIN Track
		ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.Name
ORDER BY NumSold DESC

--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.