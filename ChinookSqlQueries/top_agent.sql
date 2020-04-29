SELECT TOP(1) Employee.FirstName + ' ' + Employee.LastName AS TopSalesAgent, COUNT(*) AS TotalSales
FROM Employee
	JOIN Customer
		ON Employee.EmployeeId = Customer.SupportRepId
		JOIN Invoice
		ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.FirstName, Employee.LastName
ORDER BY TotalSales DESC



--top_agent.sql: Which sales agent made the most in sales over all?