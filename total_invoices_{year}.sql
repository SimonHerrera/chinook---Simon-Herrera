SELECT
  COUNT(i.InvoiceId),
  STRFTIME('%Y', i.InvoiceDate) as InvoiceYear
FROM Invoice i
WHERE InvoiceYear  = '2011'

SELECT
  COUNT(i.InvoiceId) as TotalInvoices,
  STRFTIME('%Y', i.InvoiceDate) as InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2009';