SELECT Customer.FirstName + ' ' + Customer.LastName AS CustomerName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
	JOIN Invoice
		on Customer.CustomerId = Invoice.CustomerId
WHERE Country = 'Brazil'

-- Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.