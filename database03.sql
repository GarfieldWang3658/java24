/*
MySQL Backup
Database: db01
Backup Time: 2023-12-21 13:58:24
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `db01`.`t1`;
DROP TABLE IF EXISTS `db01`.`t2`;
CREATE TABLE `t1` (
  `id` int DEFAULT NULL,
  `1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `t2` (
  `id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
BEGIN;
LOCK TABLES `db01`.`t1` WRITE;
DELETE FROM `db01`.`t1`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `db01`.`t2` WRITE;
DELETE FROM `db01`.`t2`;
INSERT INTO `db01`.`t2` (`id`,`name`) VALUES (1, 'wang'),(2, 'war'),(NULL, NULL)
;
UNLOCK TABLES;
COMMIT;

