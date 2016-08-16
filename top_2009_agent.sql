
SELECT
  MAX(Sales.TotalSales) as TopSales,
  Sales.EmployeeName
FROM
    (SELECT
      SUM(i.Total) TotalSales,
      e.FirstName || ' ' || e.LastName as EmployeeName,
      STRFTIME('%Y', i.InvoiceDate) as InvoiceYear
    FROM Invoice i, Employee e, Customer c
    WHERE i.CustomerId = c.CustomerId
    AND c.SupportRepId = e. EmployeeId
    AND InvoiceYear = '2009'
    GROUP BY EmployeeName
    ORDER BY TotalSales desc) as Sales;