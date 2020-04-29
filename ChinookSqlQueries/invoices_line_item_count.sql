SELECT Invoice.*, COUNT(InvoiceLine.InvoiceId) AS LineItems
FROM InvoiceLine
	JOIN Invoice
		ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingCountry, BillingState, BillingPostalCode, Total


--invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.