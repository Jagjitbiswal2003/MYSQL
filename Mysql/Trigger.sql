 /*
 An SQL trigger is a database object that automatically executes a specified action or set of actions in response to certain events 
 (like INSERT, UPDATE, or DELETE) on a table or view.

 syntax
 CREATE TRIGGER trigger_name
 { BEFORE | AFTER }
{ INSERT | UPDATE | DELETE }
ON table_name
FOR EACH ROW
BEGIN
    Trigger logic (SQL statements)
 END;
 
*/

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    quantity INT,
    price_per_item DECIMAL(10, 2),
    order_total DECIMAL(10, 2)
);

DELIMITER $$

CREATE TRIGGER before_order_insert
BEFORE INSERT
ON orders
FOR EACH ROW
BEGIN
    -- Calculate the total amount for the order
    SET NEW.order_total = NEW.quantity * NEW.price_per_item;
END$$

DELIMITER ;

INSERT INTO orders (customer_name, quantity, price_per_item) 
VALUES ('Alice', 5, 20.00);

INSERT INTO orders (customer_name, quantity, price_per_item) 
VALUES ('Bob', 10, 15.50);

select *from orders;
