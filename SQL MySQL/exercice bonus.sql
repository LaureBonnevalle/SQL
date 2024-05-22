SELECT name, description, price FROM `products`;

--SELECT name, description, price FROM `products` WHERE price < 42 IN ORDER BY price DESC;

SELECT name, description, price FROM `products` WHERE price < 42 ORDER BY price DESC;

SELECT city, postal_code, number, street FROM `addresses`;
--SELECT city AS `ville`, postal_code, number, street FROM `addresses`; (va renommer city en ville dans les resultats de requetes)

--SELECT city, postal_code, number, street FROM `addresses` WHERE city.firstChart ="A";

SELECT city, postal_code, number, street FROM `addresses` WHERE city LIKE 'A%';

SELECT * FROM `users` ;

SELECT * FROM `users` ORDER BY `birthdate` DESC;

SELECT *FROM `users` WHERE (DATEDIFF(Now), birthdate)/365) > 50 ORDER BY birthdate DESC;

--SELECT * FROM users WHERE TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) > 50 ORDER BY birthdate ASC;

SELECT *, TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) AS Age FROM users WHERE TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) > 50 ORDER BY birthdate ASC;
