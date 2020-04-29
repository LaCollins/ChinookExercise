SELECT TOP(1) Employee.FirstName + ' ' + Employee.LastName AS TopSalesAgent, COUNT(Invoice.InvoiceDate) AS SalesFor09
FROM Employee
	JOIN Customer
		ON Employee.EmployeeId = Customer.SupportRepId
	JOIN Invoice
		ON Customer.CustomerId = Invoice.CustomerId
WHERE YEAR(Invoice.InvoiceDate) = 2009
GROUP BY Employee.FirstName, Employee.LastName
ORDER BY SalesFor09 DESC


--top_2009_agent.sql: Which sales agent made the most in sales in 2009? HINT: TOP