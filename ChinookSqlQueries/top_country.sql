SELECT TOP(1) BillingCountry AS Country, SUM(Total) AS Monies
FROM Invoice
GROUP BY BillingCountry
ORDER BY Monies DESC

--top_country.sql: Which country's customers spent the most?