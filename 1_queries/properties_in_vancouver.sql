SELECT properties.id as id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM property_reviews
LEFT JOIN properties ON property_id = properties.id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
