SELECT InvoiceLine.*, Track.Name as TrackName, Artist.Name  as ArtistName
FROM InvoiceLine
		JOIN Track
			ON Track.TrackId = InvoiceLine.TrackId
			JOIN Album
				ON Track.AlbumId = Album.AlbumId
					JOIN Artist
						ON Album.ArtistId = Artist.ArtistId

--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.