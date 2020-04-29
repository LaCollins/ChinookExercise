SELECT Track.Name, Album.Title AS Album, MediaType.Name AS MediaType, Genre.Name AS Genre
FROM Track
	JOIN Album
		ON Track.AlbumId = Album.AlbumId
	JOIN MediaType
		ON Track.MediaTypeId = MediaType.MediaTypeId
	JOIN Genre
		ON Track.GenreId = Genre.GenreId

--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.