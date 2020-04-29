SELECT TOP(1) Track.Name, COUNT(*) AS NumSold
FROM InvoiceLine
	JOIN Track
		ON InvoiceLine.TrackId = Track.TrackId
	JOIN Invoice
		ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = 2013
GROUP BY Track.Name
ORDER BY NumSold DESC


--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.