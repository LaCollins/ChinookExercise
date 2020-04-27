SELECT customerId, firstName, lastName, Country
FROM Customer
WHERE NOT Country = 'USA'

--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.