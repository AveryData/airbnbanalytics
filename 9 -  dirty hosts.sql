SELECT host_id, host_url, host_name, COUNT(*) AS num_dirty_reviews FROM reviews INNER JOIN listings ON reviews.listing_id = listings.id
WHERE comments LIKE "%dirty%"
GROUP BY host_id, host_url, host_name ORDER BY num_dirty_reviews DESC;


