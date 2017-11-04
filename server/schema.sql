DROP DATABASE IF EXISTS `chat`;
CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--    Describe your table here.
-- );

/* Create other tables and define schemas for them here! */



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'rooms'
-- 
-- ---

-- DROP TABLE IF EXISTS `rooms`;
    
-- CREATE TABLE `rooms` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(20) NULL DEFAULT 'lobby',
--   PRIMARY KEY (`id`)
-- );

-- ---
-- Table 'messages'
-- 
-- ---



DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(100) NULL DEFAULT NULL,
  `roomname` VARCHAR(20) NULL DEFAULT 'lobby',
  `username` VARCHAR(40) NOT NULL,
  `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  -- `datetime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);




-- DROP TABLE IF EXISTS `messages`;
    
-- CREATE TABLE `messages` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `message` VARCHAR(100) NULL DEFAULT NULL,
--   `id_rooms` INTEGER NOT NULL,
--   `id_user` INTEGER NOT NULL,
--   `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
--   -- `datetime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
--   PRIMARY KEY (`id`)
-- );

-- ---
-- Table 'users'
-- 
-- ---

-- DROP TABLE IF EXISTS `users`;
    
-- CREATE TABLE `users` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `username` VARCHAR(20) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- ---
-- Foreign Keys 
-- ---

-- ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);
-- ALTER TABLE `messages` ADD FOREIGN KEY (id_user) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `rooms` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`message`,`id_rooms`,`id_user`,`timestamp`,`datetime`) VALUES
-- ('','','','','','');
-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- create table test2 (
--   id int primary key,
--   store varchar(20) not null,
--   inventory int default 0,
--   productId int default 0); 

-- INSERT INTO test(name,price)
--   VALUES ('shirt', 900);

-- INSERT INTO test2(id,store,inventory,productId)
--   VALUES (1,'San Fran', 10, 1);
-- INSERT INTO test2(id,store,inventory,productId)
--   VALUES (2,'Oakland', 2, 2);
-- INSERT INTO test2(id,store,inventory,productId)
--   VALUES (3,'Oakland', 20, 1);

-- UPDATE test
--   SET name = 'Will',
--   price = 1000
-- WHERE name = 'javi';


-- SELECT s.store, s.inventory, p.name, p.price FROM test2 s
--   INNER JOIN test p
--     ON s.productId = p.id
--     WHERE s.inventory > 14;
-- INSERT INTO rooms(name)
--   VALUES ('lobby');
-- INSERT INTO rooms(name)
--   VALUES ('coolRoom');
-- INSERT INTO messages(message)
--   VALUES ('This worked OMG: no roomname');

-- INSERT INTO users(username)
--   VALUES ('javi');
-- INSERT INTO messages(message, id_user, id_rooms)
--   VALUES ('This worked OMG: coolRoom', (SELECT id FROM users
--   WHERE username = 'javi'), (SELECT id FROM rooms
--   WHERE name = 'coolRoom'));

-- INSERT INTO users(username)
--   VALUES ('javi');

-- SELECT id FROM users
--   WHERE username = 'javi';

-- SELECT u.username, r.name, m.message FROM messages m
--   INNER JOIN rooms r
--     ON r.id = m.id_rooms
--   INNER JOIN users u
--     ON u.id = m.id_user;

-- SELECT u.username, r.name, m.messages FROM rooms r
--   INNER JOIN messages m
--     ON r.id = m.id_rooms
--   INNER JOIN users u
--     ON u.id = m.id_user;

-- INSERT INTO messages(username, text, roomname)
--   VALUES ('javi', 'write here', 'white house');


