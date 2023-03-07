CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    website VARCHAR(50),
    credit_limit INT NOT NULL
);

CREATE TABLE orders(
	orders_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    salesman_id INT NOT NULL,
    order_date DATE NOT NULL
);

CREATE TABLE order_items(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT AUTO_INCREMENT NOT NULL,
    product_id INT AUTO_INCREMENT NOT NULL,
    quantitiy TEXT,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    description TEXT,
    standard_cost DECIMAL(10,2) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    customer_id INT NOT NULL
);

CREATE TABLE employees(
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL,
    manager_id INT AUTO_INCREMENT NOT NULL,
    job_title VARCHAR(20) NOT NULL
);