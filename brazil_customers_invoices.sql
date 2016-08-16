SELECT i.InvoiceId, i.InvoiceDate, i.BillingCountry, c.FirstName, c.LastName
FROM Invoice as i, Customer as c
WHERE c.Country = 'Brazil'
AND i.CustomerId = c.CustomerId