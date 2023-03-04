WITH sub1 AS (
  	SELECT 
	ar.name,
  	al.title,
  	inv.total,
  	inv.BillingCountry
FROM invoices as inv
JOIN invoice_items AS invi on invi.InvoiceId = inv.invoiceid
JOIN tracks AS tr ON invi.TrackId = tr.trackid
JOIN albums as al on al.AlbumId = tr.AlbumId
JOIN artists as ar on ar.ArtistId = al.ArtistId
  
  )
  
SELECT 
  	billingcountry as country,
    sum(total) as sales
FROM sub1 
GROUP by country
ORDER by sales DESC