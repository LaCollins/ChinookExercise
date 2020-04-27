SELECT Customer.FirstName + ', ' + Customer.LastName AS CustomerName, Invoice.BillingCountry, Employee.FirstName + ' ' + Employee.LastName AS SaleAgent, sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS InvoiceTotal
FROM InvoiceLine
	JOIN Invoice
		ON Invoice.InvoiceId = InvoiceLine.InvoiceId
		JOIN Customer
			ON Invoice.CustomerId = Customer.CustomerId
			JOIN Employee
				ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Invoice.BillingCountry, Employee.FirstName + ' ' + Employee.LastName, Customer.FirstName + ', ' + Customer.LastName

--invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.