CREATE DATABASE plant_service;

USE plant_service;

CREATE TABLE cities(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    country_name VARCHAR(80) NOT NULL
);

CREATE TABLE users(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password CHAR NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    age INT NOT NULL CHECK(age < 18),
    money DECIMAL(15,2) NOT NULL,
    city_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES cities(id),
    register_date DATE NOT NULL
);

CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id),
    order_date DATE NOT NULL,
    is_completed BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE plants(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(15,2) NOT NULL,
    color VARCHAR(50),
    quantity INT NULL
);

CREATE TABLE info_plants(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plant_id INT NOT NULL,
    FOREIGN KEY (plant_id) REFERENCES plants(id),
    family VARCHAR(50) NOT NULL,
    genus VARCHAR(40) NOT NULL,
    purpose VARCHAR(60)
);

CREATE TABLE plants_orders(
    plant_id INT NOT NULL,
    FOREIGN KEY (plant_id) REFERENCES users(id),
	order_id INT NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(id)
);






