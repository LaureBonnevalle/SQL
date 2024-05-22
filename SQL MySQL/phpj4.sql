SELECT users.last_name, users.first_name, address.street, address.zipcode, address.city FROM `users` 
Join address ON users.address = address.id;
--1
SELECT * FROM users;
--2 
SELECT * FROM users ORDER users.last_name ASC;
--3
SELECT users.first_name, users.last_name FROM users ORDER BY users.registration_date DESC LIMIT 1 ;
--4
SELECT users.first_name, users.last_name FROM users WHERE birthdate LIKE "%-05-%";
--5
SELECT COUNT(id) FROM users;
--autre possible SELECT id FROM users ORDER BY users.id ASC;  (ssi id numeraire. dans le cas de l exo ça marche pas)
--6
SELECT users.first_name, users.last_name, addresses.city FROM users
JOIN addresses ON users.address_id = adresses.id;
--7
SELECT users.first_name, users.last_name FROM users
JOIN addresses ON users.address_id = addresses.id WHERE addresses.number IS NOT NULL;
--si on veut ttes les colonnes 
--SELECT users.* FROM users JOIN addresses ON users.addresses_id = addresses.id WHERE addresses.number IS NULL;


--8
SELECT products.name FROM products WHERE products.price > 1000;
--9
SELECT * FROM pictures
JOIN products ON pictures.product_id = products.id
WHERE products.id = (SELECT id FROM products ORDER BY price LIMIT 1);


--10
SELECT products.name FROM products
JOIN products_categories ON products_categories.product_id = products.id
JOIN categories ON categories.id = products_categories.category_id
WHERE categories.title= "voyage";

--11
SELECT users.* FROM users
JOIN orders ON orders.user_id = users.id  
GROUP BY  users.id  HAVING COUNT(orders.id) > 10;

--12
SELECT products.name FROM products 
JOIN products_orders ON products_orders.id = products.id
JOIN orders ON orders.order_id = orders.id
JOIN users ON users.id = orders.order_id
ORDER BY users.registration_date ASC LIMIT 1;

