USE plant_service;

SELECT first_name, username, city_id city, DATE_FORMAT(register_date, "%Y") register_year
FROM users 
LEFT JOIN orders ON
orders.user_id = users.id
WHERE users.id NOT IN(orders.user_id)
ORDER BY register_date ASC, first_name ASC, last_name ASC;
