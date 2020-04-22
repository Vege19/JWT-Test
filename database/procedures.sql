DELIMITER $$

/*Stored prodcure to insert new user*/
CREATE PROCEDURE insert_user(p_user_name VARCHAR(250), p_user_email VARCHAR(254), p_user_password VARCHAR(12))

BEGIN
    
    /*Insert the parametters values in a new user register*/
    INSERT INTO users(user_name, user_email, user_password) VALUES(p_user_name, p_user_email, p_user_password);
    
END $$

/*****************************************************************************************************************************/

DELIMITER $$

/*Stored prodcure to insert new product*/
CREATE PROCEDURE insert_product(p_product_name VARCHAR(250), p_product_description VARCHAR(500), p_product_price DECIMAL)

BEGIN
    
    /*Insert the parametters values in a new product register*/
    INSERT INTO products(product_name, product_description, product_price) VALUES(p_product_name, p_product_description, p_product_price);
    
END $$

/*****************************************************************************************************************************/

DELIMITER $$

/*Store a product in user*/
CREATE PROCEDURE save_product(p_user_id INT(11), p_product_id INT(11))

BEGIN

	/*Insert a new product for user*/
    INSERT INTO user_product(user_id, product_id) VALUES(p_user_id, p_product_id);
    
END $$

/*****************************************************************************************************************************/

DELIMITER $$

/*Select products saved by some user*/
CREATE PROCEDURE get_user_products(p_user_id INT(11))

BEGIN

	/*Get all products of some user*/
    SELECT product_name, product_description, product_price FROM products
    INNER JOIN user_product ON user_product.product_id = products.product_id
    WHERE user_product.user_id = p_user_id;
    
END $$