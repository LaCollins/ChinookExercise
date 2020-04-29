SELECT Employee.FirstName + ' ' + Employee.LastName AS SalesAgent, COUNT(*) AS TotalSales
FROM Employee
	JOIN Customer
		ON Employee.EmployeeId = Customer.SupportRepId
		JOIN Invoice
		ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.FirstName, Employee.LastName


--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.