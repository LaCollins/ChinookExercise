SELECT Employee.FirstName + ' ' + Employee.LastName AS SalesAgent, COUNT(Customer.CustomerId) AS TotalCustomers
FROM Employee
	JOIN Customer
		ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.FirstName, Employee.LastName


--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.