SELECT  i.InvoiceId, e.FirstName, e.LastName
FROM Employee as e, Invoice as i, Customer as c
WHERE e.Title = 'Sales Support Agent'
AND c.CustomerId = i.CustomerId
AND c.SupportRepId = e.EmployeeId # SupportRepId referenced by EmployeeId
ORDER BY i.InvoiceId

