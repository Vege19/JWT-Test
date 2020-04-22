/*Some data to fill USERS*/
CALL insert_user('Josué Ardón', 'josue.ardon113@gmail.com', 'password');
CALL insert_user('Jhon Wick', 'john.wick@gmail.com', 'password');

/*Some data to fill PRODUCTS*/
CALL insert_product('Iphone 11', 'Great phone', 999.99);
CALL insert_product('Galaxy S20 Ultra', 'Great phone', 1199.29);
CALL insert_product('Galaxy S10', 'Great phone', 800.00);
CALL insert_product('Play Station 4', 'Great videogame console', 300.00);
CALL insert_product('Xbox One', 'Great videogame console', 400.00);

/*Some data to fill USER_PRODUCT*/
CALL save_product(1, 1); /*Save iphone in user 1*/
CALL save_product(1, 2); /*Save samsung in user 1*/
CALL save_product(2, 2); /*Save samsung in user 2*/
CALL save_product(1, 5); /*Save samsung s10 in user 2*/
CALL save_product(1, 3); /*Save ps4 in user 2*/
CALL save_product(2, 4); /*Save ps4 in user 2*/

/*Get user's products*/
CALL get_user_products(2);