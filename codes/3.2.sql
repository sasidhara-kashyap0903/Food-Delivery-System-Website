use food_delivery_system;
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';

CREATE VIEW view1 AS
SELECT customers.first_name, Orders.Order_status, customers.contact_details
FROM Orders
JOIN customers ON Orders.customer_id = customers.customer_id;

select * from view1;

CREATE VIEW view2 AS
SELECT Restaurant.restaurant_name, Food_Item.item_name, Restaurant.contact_details
FROM Food_Item
JOIN Restaurant ON Food_Item.restaurant_id = Restaurant.restaurant_id;

select * from view2;

GRANT SELECT, UPDATE, DELETE ON customers TO 'user1'@'localhost';
GRANT SELECT ON view1 TO 'user1'@'localhost';

alter user 'user1'@'localhost';

SELECT * FROM customers;
UPDATE customers SET password = 'raju1' WHERE customer_id=1;
DELETE FROM customers WHERE customer_id = 11;

SELECT * FROM view1;
UPDATE view1 SET order_status = 'Pending' WHERE first_name='Rajesh';
DELETE FROM customers WHERE first_name = 'Rajesh';

alter user sqlnewuser;

REVOKE UPDATE, DELETE ON customers FROM 'user1'@'localhost';

alter user 'user1'@'localhost';

SELECT * FROM customers;
UPDATE customers SET password = 'raju1' WHERE customer_id=1;
DELETE FROM customers WHERE customer_id = 11;

SELECT * FROM view1;
UPDATE view1 SET order_status = 'Pending' WHERE first_name='Rajesh';
DELETE FROM customers WHERE first_name = 'Rajesh';

alter user sqlnewuser;



delete from delivery_agent where agent_id = 2;

INSERT INTO Orders (order_id, customer_id, Payment_id, order_status, amount)
VALUES
(16, 1, 16, 'Delivered', 50.00);

INSERT INTO Orders (order_id, customer_id, Payment_id, order_status, amount)
VALUES
(16, 16, 1, 'Delivered', 50.00);

update orders set customer_id='17' where orders.Payment_id = '4';

update delivery set delivery_rating = 6 where order_id = 3;

INSERT INTO Delivery (order_id, agent_id, delivery_review, delivery_rating, delivery_charges, pickup_time, delivery_time, delivery_status, tip)
VALUES
(16, 1, 'Good service', 4, 5.00, '2024-02-14 12:30:00', '2024-02-14 12:00:00', 'Delivered', 2.50);

update orders set order_status = 'Remaining' where order_id = 2;

update payment set payment_status = 'Unsuccessful' where payment_id = 2;

SELECT Restaurant.restaurant_name
FROM Restaurant
LEFT JOIN (
    SELECT Restaurant.rating
    FROM Restaurant
) AS d ON Restaurant.rating < d.rating
WHERE d.rating IS NULL;

update food_item set image 










