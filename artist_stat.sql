SELECT 
	ar.name,
    COUNT(DISTINCT(al.title)) as Album_amount,
    avg(tr.milliseconds) as avg_milliseconds
FROM artists as ar 
JOIN albums AS al ON al.ArtistId = ar.ArtistId
JOIN tracks as tr ON al.albumid = tr.albumid
GROUP BY ar.name