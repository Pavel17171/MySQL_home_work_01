-- 1.  Создать таблицу с мобильными телефонами. Заполнить БД данными.

CREATE DATABASE IF NOT EXISTS home_work_1;
USE home_work_1;

DROP TABLE IF EXISTS phone_shop;
CREATE TABLE phone_shop
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(45),
    Manufacturer VARCHAR(45),
    ProductCount INT,
    Price INT
)
;

INSERT phone_shop (ProductName, Manufacturer, ProductCount, Price)
VALUES 
	("iPhone X", "Apple", 3, 76000),
	("iPhone 8", "Apple", 2, 51000),    
	("Galaxy S9", "Samsung", 2, 56000),    
	("Galaxy S8", "Samsung", 1, 41000),
	("P20 Pro", "Huawei", 5, 36000);

SELECT * FROM phone_shop;	-- Проверил созданную таблицу (хоть так и не правильно, но в нашем случае можно)


-- 2. Вывести название, производителя и цену для товаров, количество которых превышает 2

SELECT ProductName, Manufacturer, Price 
FROM phone_shop
WHERE ProductCount >= 2;


-- 3. Вывести весь ассортимент товаров марки “Samsung”

SELECT * 
FROM phone_shop
WHERE Manufacturer = "Samsung";


-- 4. Вывести информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

SELECT * 
FROM phone_shop
WHERE ProductCount * Price > 100000 AND ProductCount * Price < 145000;


-- 4.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
 
-- 4.1. Товары, в которых есть упоминание "Iphone"

SELECT *
FROM phone_shop
WHERE ProductName LIKE "%iPhone%";

-- 4.2. "Galaxy"

SELECT *
FROM phone_shop
WHERE ProductName LIKE "Galaxy%";

-- 4.3. Товары, в которых есть ЦИФРЫ

SELECT *
FROM phone_shop
WHERE ProductName RLIKE '[0-9]';

-- 4.4. Товары, в которых есть ЦИФРА "8"

SELECT *
FROM phone_shop
WHERE ProductName RLIKE '[8]';