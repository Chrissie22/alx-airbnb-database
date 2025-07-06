-- INNER JOIN: Get only bookings that are linked to users

SELECT b.booking_id, b.property_id, .user_id, b.start_date, b.end_date, b.total_price, b.status, b.created_at
FROM bookings b
INNER JOIN users u  ON b.user_id = u.user_id;

-- LEFT JOIN: show all properties,  even if they have no reviews

SELECT p.property_id, p.host_id, p.name, p.description, p.location, p.preicepernight, p.created_at, p.updated_at,r.review_id, r.rating, r.comment, 
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id;

-- FULL OUTER JOIN using UNION of LEFT AND RIGHT JOINs

SELECT u.user_id, u.first_name, u.last_name, b.booking_id, b.property_id, b.check_in_date
FROM users u
LEFT JOIN bookings b ON user_id = b.user_id
UNION

SELECT u.user_id, u.first_name, u.last_name, booking.booking_id, b.property_id, b.created_at
FROM  Users u
RIGHT JOIN bookings b ON u.user_id = b.user_id;

