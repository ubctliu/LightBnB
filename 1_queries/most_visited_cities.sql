SELECT properties.city, count(*) as total_reservations
FROM reservations
JOIN properties on property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;