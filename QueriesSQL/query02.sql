USE plant_service;

SELECT id, username, first_name, age, DATE_FORMAT(register_date, "%e-%c") register_day_month
FROM users
WHERE last_name IS NULL AND age < 60
ORDER BY age ASC, username ASC;