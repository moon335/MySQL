
CREATE TABLE customer(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    contact_name VARCHAR(20) NOT NULL,
    country VARCHAR(20) NOT NULL
);

CREATE TABLE `orders`(
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

INSERT INTO customer(customer_name, contact_name, country)
VALUES
	('Alfreds Futterkiste', 'Maria Anders', 'Germany'),
    ('Ana Trujillo Emparedados yhelados', 'Ana Trujillo', 'Mexico'),
    ('Antonio Moreno Taqueria', 'Antonio Moreno', 'Mexico');
    
INSERT INTO `orders`(order_id, customer_id, order_date)
VALUES
	(10308, 2, '1996-09-18'),
    (10309, 1, '1996-09-19'),
    (10310, 3, '1996-09-20');