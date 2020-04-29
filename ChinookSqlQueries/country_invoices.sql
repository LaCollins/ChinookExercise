SELECT BillingCountry, COUNT(*) AS InvoicesPerCountry
FROM Invoice
GROUP BY BillingCountry

--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY