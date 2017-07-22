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
		
CREATE TABLE users (
  userid INT AUTO_INCREMENT NOT NULL,
  username INT NULL,
  PRIMARY KEY (userid)
);
		
CREATE TABLE messages (
  id INT AUTO_INCREMENT NOT NULL,
  messageid INT NULL,
  userid INT NULL,
  roomid INT NULL,
  message INT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userid) REFERENCES users (userid)
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

