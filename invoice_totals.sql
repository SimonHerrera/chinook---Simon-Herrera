# Think this is right, let me know!
SELECT i.Total,  i.BillingCountry, c.FirstName,  c.LastName, e.FirstName as Emp_First_Name, e.LastName as Emp_Last_Name, i.InvoiceId
FROM Employee as e, Invoice as i, Customer as c
WHERE e.Title = 'Sales Support Agent'
AND i.CustomerID = c.CustomerId
AND c.SupportRepId = e.EmployeeId