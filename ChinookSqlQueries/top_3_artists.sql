SELECT TOP(3) Artist.Name, COUNT(*) AS NumSold
FROM InvoiceLine
	JOIN Track
		ON InvoiceLine.TrackId = Track.TrackId
	JOIN Album
		ON Track.AlbumId = Album.AlbumId
	JOIN Artist
		ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY NumSold DESC

--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.