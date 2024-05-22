INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `biography`, `created_at`) VALUES (NULL, 'Alain', 'Pératif', 'alain.peratif@demo.fr', 'aime bien donner des oredres', '2024-03-23 11:52:53.000000');

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `biography`, `created_at`) VALUES (NULL, 'Jules', 'César', 'ceo@empyre.rom', '"Veni Vedi Vici"', '2020-07-12 18:57:53.000000');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `biography`, `created_at`) VALUES (NULL, 'Garfield', 'Redhair', 'garfield@cat.com', 'I hate mondays', '2012-12-25 23:42:53.000000');

SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
SELECT * FROM `users`
ALTER TABLE `users` ADD PRIMARY KEY(`id`);
ALTER TABLE `users` DROP INDEX `ID`;
SELECT * FROM `users` ORDER BY `users`.`id` ASC
Développer Exécuter la requête à nouveau Éditer Signet Base de données : laurebonnevalle_phpj4 Daté du : 14:20:25
DELETE FROM `users` WHERE `users`.`id` = 1;



SELECT first_name,last_name FROM `users` ;

SELECT * FROM users ORDER BY created_at DESC;

SELECT first_name, last_name FROM `users` ORDER BY created_at DESC LIMIT 1;

-- possible aussiSELECT * FROM `users` WHERE biography != 'NULL'; 
-- fonctionne aussi  --


SELECT * FROM `users` WHERE biography IS NOT NULL;
--SELECT first_name, last_name FROM `users` WHERE biography = 'NULL';--

SELECT first_name, last_name FROM `users` WHERE biography is NULL;

-- `biography` simplification car dans table actuelmle mais sinon users.biography--

SELECT email FROM `users` ;

SELECT first_name FROM `users` ORDER by first_name ASC;

SELECT first_name FROM `users` ORDER BY last_name ASC LIMIT 2;

SELECT COUNT(*) FROM users;

SELECT created_at FROM `users` ;
SELECT DISTINCT created_at FROM `users` ;