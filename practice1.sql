-- CREATE DATABASE Practice1;

-- SHOW DATABASES;

-- USE Practice1;

-- CREATE TABLE employee(
-- employee_id INT AUTO_INCREMENT PRIMARY KEY,
-- phone varChar(10) NOT NULL
-- -- date DATE DEFAULT CURRENT_DATE
-- )

-- ------ DATA TYPES ---------
-- 1. int
-- 2. varchar(length) => varchar(100)
-- 3. DATE : YYYY-MM-DD
-- 4. time : HH:MM:SS
-- 5. dateime : YYYY-MM-DD HH:MM:SS
-- 6. decimal(precision, scale)
-- 7. boolean
-- 8. enum

-- ----- CONSTARINTS ---------
-- 1. UNIQUE - allows null character
-- 2. NOT NULL 
-- 3. PRIMARY KEY ==> UNIQUE + NOT NULL
-- 4. auto increment - values will auto increment , no need to put values
-- 5. default 

-- SHOW TABLES;

-- to see the schema of the table
-- DESCRIBE <TABLE_NAME>
-- DESCRIBE employee;

-- to delete the table 
-- DROP TABLE <TABLE_NAME>;

-- to delete the content, but not the table
-- TRUNCATE TABLE <TABLE_NAME>;

-- display complete data of the table 
-- SELECT * from <TABLE_NAME>;

-- display filtered table data based on some condition
-- SELECT * from <TABLE_NAME> WHERE <CONDITION>;
-- e.g. SELECT * from Customers WHERE first_name = 'david';

-- to get specific column data only 
-- SELECT customer_id, age from Customers WHERE first_name = 'david';

-- to get only specific number of rows - LIMIT
-- SELECT * from Customer LIMIT 2;

-- to skip specific number of rows - OFFSET
-- SELECT * form Customer LIMIT 3 OFFSET 2;

-- updating specific detail
-- update Customers
-- SET country = 'India'
-- where customer_id = 1;

-- updating multiple  detail/column
-- update Customers
-- SET country = 'India' , age = 31
-- where customer_id = 1;

-- deleting any row 
-- DELETE from Customers where customer_id = 5;


-- creating table and updating values into it 
-- CREATE TABLE flipkart_mobiles(
-- id INT primary key,
-- brand varchar(50),
-- original_price decimal(10,2),
-- selling_price decimal(10,2),
-- color varchar(50),
-- rating decimal(3,2)
-- )

-- ----- view schema -----
-- describe flipkart_mobiles;

-- Inserting data in the table
-- insert into flipkart_mobiles(id,brand,original_price,selling_price,color,rating)
-- values
-- (1,'OPPO',16000,14000,'black','4.6'),
-- (2,'OPPO',20000,18000,'red','4.7'),
-- (3,'OPPO',15000,10000,'blue','4.4'),
-- (4,'OPPO',22000,21000,'white','4.8'),
-- (5,'OPPO',19000,14000,'mint cream','4.9'),
-- (6,'OPPO',17000,12000,'silver','4.3')

-- select * from flipkart_mobiles;

-- calculating and printing discounts
-- select id , brand , (original_price - selling_price) from flipkart_mobiles;

-- changing name of output column
-- select id , brand , (original_price - selling_price) AS discount from flipkart_mobiles;

-- fetch all rows where discount is greater than 3000
-- select * from flipkart_mobiles where (original_price - selling_price) > 3000;
-- select * from flipkart_mobiles where (original_price - selling_price) >= 3000;
-- select * from flipkart_mobiles where (original_price - selling_price) != 3000;
-- not equal to has two symbols here i.e. "!=" and "<>"

-- select all items price between 15k and 20k
-- select * from flipkart_mobiles where original_price between 15000 and 20000;

-- select all items where color is null
-- select * from flipkart_mobiles where color is not null;
-- select * from flipkart_mobiles where color is null;

-- logical operators
-- and , or , not , in

-- fetch all rows whose brand is oppo and origina price is above 16k
-- select * from flipkart_mobiles where brand='oppo' and original_price > 16000 ;

-- fetch all rows whose rating is 4.5 or selling price is less than 15K
-- select * from flipkart_mobiles where rating=4.5 or selling_price < 15000 ;

-- fetch all rows where color is black,red,blue
-- select * from flipkart_mobiles where color in ('black','red','blue')

-- find oppo mobile with color red and rating greater than  4.5 
-- select * from flipkart_mobiles where brand = 'oppo' and color in ('black','red')  and rating > 4.6

-- find oppo mobile with original price > 15K or color other than white and rating > 4.5
-- select * from flipkart_mobiles where brand = 'oppo' and color not in ('white') and original_price > 15000 and rating > 4.5;
-- other way ==>
-- select * from flipkart_mobiles where (brand='oppo' and original_price > 15000)
-- or
-- (color <> 'white' and rating > 4.5)


-- sort using original_price
-- select * from flipkart_mobiles order by original_price asc;
-- select * from flipkart_mobiles order by original_price desc;
-- select * from flipkart_mobiles order by original_price desc , selling_price desc;

-- print one brand only once
-- select distinct brand from flipkart_mobiles;

-- like operator
-- used for pattern matching
-- find mobiles where color ends with 'k'
-- select * from flipkart_mobiles where color like '%e'

-- mobiles whose original price start with 2
-- select * from flipkart_mobiles where original_price like '2%'

-- mobiles where brand contains pp
-- select * from flipkart_mobiles where brand like '%pp%'

-- mobiles where color has 'e' as second character
-- select * from flipkart_mobiles where color like '_e%'

-- mobile where color does not contain 'e'
-- select * from flipkart_mobiles where color not like '%e%'

-- mobile where color start with 's' and has exact 6 char
select * from flipkart_mobiles where color like 's_____'

