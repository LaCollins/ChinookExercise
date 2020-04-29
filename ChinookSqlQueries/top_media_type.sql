SELECT TOP(1) MediaType.Name AS MediaType, COUNT(*) AS NumSold
FROM Track
	JOIN MediaType
		ON Track.MediaTypeId = MediaType.MediaTypeId
			JOIN InvoiceLine
		ON InvoiceLine.TrackId = Track.TrackId
GROUP BY MediaType.Name

--top_media_type.sql: Provide a query that shows the most purchased Media Type.