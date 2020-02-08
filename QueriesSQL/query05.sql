USE plant_service;

SELECT id, first_name full_name, age, recieved_orders
FROM users
ORDER BY recieved_orders DESC, first_name ASC
LIMIT 10;
