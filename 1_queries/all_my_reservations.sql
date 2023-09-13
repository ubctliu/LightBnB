SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating) as average_rating
FROM property_reviews
JOIN reservations ON property_reviews.reservation_id = reservations.id
JOIN properties ON property_reviews.property_id = properties.id
JOIN users on property_reviews.guest_id = users.id
WHERE users.id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;