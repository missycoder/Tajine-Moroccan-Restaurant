-- SQL Schema for Moroccan Restaurant

-- Create database if not exists
CREATE DATABASE IF NOT EXISTS tajine_restaurant;

-- Use the created database
USE tajine_restaurant;

-- Create tables
CREATE TABLE IF NOT EXISTS dishes (
    dish_id INT AUTO_INCREMENT PRIMARY KEY,
    dish_name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    image_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS dish_category (
    dish_id INT,
    category_id INT,
    FOREIGN KEY (dish_id) REFERENCES dishes(dish_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    PRIMARY KEY (dish_id, category_id)
);
