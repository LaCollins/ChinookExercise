SELECT InvoiceLine.*, Track.Name as TrackName
FROM InvoiceLine
		JOIN Track
			ON Track.TrackId = InvoiceLine.TrackId

--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.