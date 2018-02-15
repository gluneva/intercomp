--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.2.58.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 15.02.2018 15:53:04
-- Версия сервера: 5.6.29-log
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE intercomp;

--
-- Описание для таблицы employees
--
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  employee_name VARCHAR(255) DEFAULT NULL,
  profile_id INT(11) UNSIGNED NOT NULL,
  structure_id INT(11) DEFAULT NULL,
  dismissal_date DATE DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id (id),
  CONSTRAINT FK_employees_profiles_id FOREIGN KEY (profile_id)
    REFERENCES profiles(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_employees_structure_id FOREIGN KEY (structure_id)
    REFERENCES structure(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы profiles
--
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  fullname VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы structure
--
DROP TABLE IF EXISTS structure;
CREATE TABLE structure (
  id INT(11) NOT NULL AUTO_INCREMENT,
  structure_name VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES
(1, 'менеджер по продажам', 2, 1, NULL),
(2, 'руководитель', 1, 2, NULL),
(3, 'специалист', 3, 3, NULL),
(4, 'руководитель', 4, 1, '2018-02-15'),
(5, 'менеджер', 5, 3, NULL),
(6, 'специалист\r\n', 6, 2, NULL),
(7, 'руководитель', 7, 3, NULL);

-- 
-- Вывод данных для таблицы profiles
--
INSERT INTO profiles VALUES
(1, 'Иванов В.В'),
(2, 'Петров А.А'),
(3, 'Стдоров А.А'),
(4, 'Короблев С.В.'),
(5, 'Самойленко С.В.'),
(6, 'Воробьева В.В.'),
(7, 'Лисицина А.Д.');

-- 
-- Вывод данных для таблицы structure
--
INSERT INTO structure VALUES
(1, 'Продаж'),
(2, 'Закупок'),
(3, 'Логистики');

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;