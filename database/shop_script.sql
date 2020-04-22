CREATE DATABASE shop;
USE shop;

/*User's table*/
CREATE TABLE users(
	user_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(250) NOT NULL,
    user_email VARCHAR(254) NOT NULL,
    user_password VARCHAR(12) NOT NULL
);

/*Product's table*/
CREATE TABLE products(
	product_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(250) NOT NULL,
    product_description VARCHAR(500),
    product_price DECIMAL(10, 2) NOT NULL
);

/*User-Product table*/
CREATE TABLE user_product(
	user_product_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT(11) NOT NULL,
    product_id INT(11) NOT NULL
);

/*Foreign keys*/
ALTER TABLE user_product ADD CONSTRAINT FK_userproduct_user FOREIGN KEY(user_id) REFERENCES users(user_id); /*user_product w/ users*/
ALTER TABLE user_product ADD CONSTRAINT FK_userproduct_product FOREIGN KEY(product_id) REFERENCES products(product_id); /*user-product w/ products*/