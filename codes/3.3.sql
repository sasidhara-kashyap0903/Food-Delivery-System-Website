-- 3.3
use food_delivery_system;

-- 3.3.1
SELECT Restaurant.restaurant_name
FROM Restaurant
LEFT JOIN (
    SELECT Restaurant.rating
    FROM Restaurant
) AS d ON Restaurant.rating < d.rating
WHERE d.rating IS NULL;

-- 3.3.2
SELECT AVG(age) AS average_age, MAX(age) as max_age, MIN(age) as min_age
FROM Customers;

-- 3.3.3
INSERT INTO Delivery (order_id, agent_id, delivery_review, delivery_rating, delivery_charges, pickup_time, delivery_time, delivery_status, tip)
VALUES
(1, 2, 'Good service', -1, 5.00, '2024-02-14 12:00:00', '2024-02-14 12:30:00', 'Delivered', 2.50);

-- 3.3.4
INSERT INTO Customers (customer_id, first_name, middle_name, last_name, dob, age, contact_details, password)
VALUES
(1, 'Vasu', 'das', 'rao', '1980-04-10', 43, '{"email": "Vasu.rao@example.com", "phone": "9676443210"}', 'password3');

-- 3.3.5
update food_item set image = "https://www.shutterstock.com/image-photo/south-indian-breakfast-food-idli-260nw-2135615711.jpg" where item_id = 7;

-- 3.3.6

drop table if exists Item_statistics;

CREATE TABLE Item_statistics AS 
SELECT distinct
    item_name, 
    AVG(item_price) OVER(PARTITION BY item_name) AS avg_price,
    MIN(item_price) OVER(PARTITION BY item_name) AS min_price,
    MAX(item_price) OVER(PARTITION BY item_name) AS max_price
FROM 
    Food_Item;
    
SELECT distinct
    i.item_name,
    i.avg_price,
    i.min_price,
    i.max_price,
    r_min.restaurant_name AS min_price_restaurant,
    r_max.restaurant_name AS max_price_restaurant
FROM 
    Item_statistics i
JOIN 
    Food_Item f_min ON i.item_name = f_min.item_name AND i.min_price = f_min.item_price
JOIN 
    Restaurant r_min ON f_min.restaurant_id = r_min.restaurant_id
JOIN 
    Food_Item f_max ON i.item_name = f_max.item_name AND i.max_price = f_max.item_price
JOIN 
    Restaurant r_max ON f_max.restaurant_id = r_max.restaurant_id;

-- 3.3.7
START TRANSACTION;
CREATE TABLE Item_Statistics AS
SELECT
    item_name,
    MAX(item_price) AS max_price,
    MIN(item_price) AS min_price,
    AVG(item_price) AS avg_price,
    CASE
        WHEN AVG(item_price) > 50 THEN 'High'
        WHEN AVG(item_price) > 25 THEN 'Medium'
        ELSE 'Low'
    END AS price_category
FROM
    Food_Item
GROUP BY
    item_name;
SELECT * FROM Item_Statistics;

-- Assuming everything is successful Commit command is used
COMMIT;

