USE airbnb; 
SELECT id, listing_url, name, 30 - availability_30 AS booked_out_30 , 
CAST(REPLACE(Price,'$','') AS UNSIGNED) AS price_clean, 
CAST(REPLACE(Price,'$','') AS UNSIGNED)*(30 - availability_30) / beds AS proj_rev_30
FROM listings ORDER BY proj_rev_30 DESC LIMIT 20; 