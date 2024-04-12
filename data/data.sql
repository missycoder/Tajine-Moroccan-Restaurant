-- INSERT Statements for Moroccan Restaurant

-- Schema definition
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
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Inserting data
INSERT INTO dishes (dish_name, description, price, image_url) VALUES 
('Chicken Tajine', 'A traditional Moroccan dish made with chicken, vegetables, and a blend of spices, slow-cooked in a tajine pot.', 15.99, 'chicken_tajine.jpg'),
('Vegetable Tajine', 'A vegetarian delight made with assorted vegetables, chickpeas, and aromatic spices, cooked to perfection.', 12.99, 'vegetable_tajine.jpg'),
('Lamb Tajine', 'Tender lamb pieces cooked with dried fruits, almonds, and Moroccan spices, served with fluffy couscous.', 18.99, 'lamb_tajine.jpg');

INSERT INTO categories (category_name) VALUES 
('Chicken Dishes'),
('Vegetarian Dishes'),
('Lamb Dishes');

INSERT INTO dish_category (dish_id, category_id) VALUES
(1, 1), -- Chicken Tajine belongs to Chicken Dishes
(2, 2), -- Vegetable Tajine belongs to Vegetarian Dishes
(3, 3); -- Lamb Tajine belongs to Lamb Dishes
