SELECT BillingCountry AS Country, COUNT(*) AS Sales
FROM Invoice
GROUP BY BillingCountry

--sales_per_country.sql: Provide a query that shows the total sales per country.