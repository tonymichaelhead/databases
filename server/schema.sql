DROP DATABASE chat;

CREATE DATABASE chat;

USE chat;


/* Create other tables and define schemas for them here! */
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'

-- -

-- DROP TABLE IF EXISTS messages;
		

CREATE TABLE messages (
  id INT NOT NULL AUTO_INCREMENT,
  userid INT NOT NULL,
  text VARCHAR(200) NOT NULL,
  roomname VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(40) NOT NULL,
  PRIMARY KEY (id)
);
-- ---
-- Table 'users'
-- 
-- ---

-- DROP TABLE IF EXISTS users;

-- ---
-- Foreign Keys 
-- ---

-- ALTER TABLE messages ADD FOREIGN KEY (userid) REFERENCES users (userid);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`messageid`,`userid`,`roomid`,`message`) VALUES
-- ('','','','','');
-- INSERT INTO `users` (`userid`,`username`) VALUES
-- ('','');



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/ 

