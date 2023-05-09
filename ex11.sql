CREATE TABLE size_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE category_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE brand_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE product_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    purchase INT NOT NULL,
    gender VARCHAR(45),
    model_number VARCHAR(200) NOT NULL,
    release_date DATE NOT NULL,
    color VARCHAR(200),
    img_route VARCHAR(200),
    brand_id INT,
    category_id INT,
    size_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand_tb(id),
    FOREIGN KEY (category_id) REFERENCES category_tb(id),
    FOREIGN KEY (size_id) REFERENCES size_tb(id)
);

CREATE TABLE user_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    tel VARCHAR(100) NOT NULL,
    address VARCHAR(300) NOT NULL,
    email VARCHAR(200) NOT NULL,
    role VARCHAR(45) NOT NULL DEFAULT 'user'
);

CREATE TABLE review_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    user_id INT NOT NULL,
    prod_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user_tb(id),
    FOREIGN KEY (prod_id) REFERENCES product_tb(id)
);

CREATE TABLE cart_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    amount INT NOT NULL,
    user_id INT NOT NULL,
    prod_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user_tb(id),
    FOREIGN KEY (prod_id) REFERENCES product_tb(id)
);

CREATE TABLE order_tb(
	id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(300) NOT NULL,
    cart_id INT,
    FOREIGN KEY (cart_id) REFERENCES cart_tb(id)
);