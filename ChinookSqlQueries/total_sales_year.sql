SELECT sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS Invoice_Yearly_Total, YEAR(Invoice.InvoiceDate) AS 'Year'
FROM InvoiceLine
	JOIN Invoice
		ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY YEAR(Invoice.InvoiceDate)


--total_sales_year.sql: What are the respective total sales for each of those years?