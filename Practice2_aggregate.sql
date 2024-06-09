--  ------------- Aggregate Functions ------------- 
-- aggregate functions work on numbers
-- Count - The `COUNT` function returns the number of rows that match a specified condition.
-- sum - calculate total sum of a numeric column
-- Avg - calculate avg 
-- Min - find min val in a col
-- Max - find max in a col

-- use Practice1;
-- SHOW TABLES;

-- CREATE TABLE Sales (
-- SaleID INT Primary key,
-- productName varchar(50),
-- quantity int,
-- price decimal(10,2),
-- saleDate date
-- )

-- describe Sales;

-- insert into sales (SaleID , productName, quantity, price, saleDate)
-- values
-- (1,'Laptop',5,1200.00,'2023-01-15'),
-- (2,'SmartPhone',10,800.00,'2023-02-20'),
-- (3,'Tableet',3,450.00,'2023-03-10'),
-- (4,'Smartwatch',7,200.00,'2023-04-25'),
-- (5,'Headphones',15,100.00,'2023-05-05')

-- select * from sales

-- count total number of sales record
-- select count(*) from sales;
-- select count(*) as  sale_count from sales;

-- calculate total quantity of product sold
-- select sum(quantity) as sold_count from sales;


-- avg price of product sold
-- select avg(price ) from sales;

-- find minimum price and max price of products sold
--  select min(price), max(price) from sales

-- highest revenue from a product single sale
-- select max(quantity * price) from sales

-- total revenue made from sales in march 2023
-- select sum(price * quantity) from sales where monthname(saleDate) = 'march' and year(saleDate) = 2023
-- select sum(price * quantity) from sales where saleDate between '2023-03-01' and '2023-03-31'



-- ------------- String function ------------- 
-- string functions work on string data
-- concat - joining two or more strings together
-- substring - extracting a subset of 
-- length - length of string
-- lower - convert into lower case
-- upper - convert into upper case
-- left - picks x numbers of character from left  of string - select left('hello world',5) -> hello
-- right - picks x numbers of character from right of string - select right('hello world',5) -> world
-- trim - remove traling and leading 
-- replace  - replace all occurance of given substr with new substr
-- charindex - position of given character in the string


-- create table customers(
-- customerId INT primary key ,
-- firstName varchar(50),
-- lastName varchar(50),
-- email varchar(100)
-- )


-- insert into customers(customerid,firstName, lastName,email)
-- values
-- (1, 'John', 'Doe', 'john.doe@example.com'),
-- (2, 'Jane', 'Smith', 'jane.smith@example.com'),
-- (3, 'Michael', 'Brown', 'michael.brown@example.com'),
-- (4, 'Emily', 'Davis', 'emily.davis@example.com'),
-- (5, 'Sarah', 'Wilson', 'sarah.wilson@example.com');

-- give full name of customer
-- select concat(firstName,' ',lastName) as fullName from customers

-- give domain name from each email address
-- SELECT SUBSTRING(email, CHARINDEX('@', email) + 1, LEN(email)) AS domain FROM customers;
-- SELECT SUBSTRING(email, LOCATE('@', email) + 1) AS domain FROM customers;

-- give firstname in uppercase
-- select upper(firstName) from customers
-- select lower(firstName) from customers

-- replace domain name in all the ids
-- select replace(email, 'example','gmail') as updated_email from customers
-- use update to change values in the db


-- ------------ numeric function ------------
-- these are not aggregate function but aggregate function are also numeric functions
-- abs
-- ceil
-- floor
-- round
-- power
-- mod
-- exp
-- log 

-- create table products(
-- productID int primary key,
-- productName varchar(50),
-- price decimal(10,2),
-- quantity int
-- )


-- insert into products (productID , productName , price, quantity)
-- values
-- (1,'Laptop',1200.50,5),
-- (2,'SmartPhone',800.75,10),
-- (3,'Tableet',450.25,3),
-- (4,'Smartwatch',199.99,7),
-- (5,'Headphones',99.5,15)

-- round up the price up to the nearest integer
-- select ceil(price) from products

-- round the price upto two decimal places
-- select round(price) from products
-- select *,round(price) from products
-- select power(price,2) from products
-- select sqrt(price) from products

-- get reminder when quantity is divided by 4
-- select mod(quantity,4) from products
-- select quantity % 4 from products

-- round up to 1 decimal places for price
-- select round(price,1) from products

-- --------- date functions ------------
-- now 
-- current_date
-- current_time
-- year
-- month
-- date_add
-- date_sub
-- datediff
-- week
-- dayofweek

-- create table events(
-- eventId int primary key,
-- eventName varchar(50),
-- eventDate date
-- )

-- INSERT INTO events (eventId, eventName, eventDate)
-- VALUES
-- (1, 'Conference', '2023-06-15'),
-- (2, 'Workshop', '2023-07-20'),
-- (3, 'Webinar', '2023-08-10'),
-- (4, 'Meetup', '2023-09-25'),
-- (5, 'Seminar', '2023-10-05');

-- get current date
-- select current_date as curr_date
-- select now() as curr_date

-- get year from event date
-- select year(eventDate) from events
-- select month(eventDate) from events
-- select week(eventDate) from events
-- select monthname(eventDate) from events
-- select day(eventDate) from events
-- select dayname(eventDate) from events

-- add 10 days to the eventDate
-- select date_add(eventDate,interval 10 day) from events
-- select date_sub(eventDate,interval 10 day) from events

-- ----------- group by and having ----------- 
-- used for grouping multiples cols
-- where class is applied on single item


-- drop table sales;

-- CREATE TABLE sales (
--     id INT PRIMARY KEY,
--     salesman_id INT,
--     region VARCHAR(50),
--     sales_amount DECIMAL(10, 2),
--     sale_date DATE
-- );

-- INSERT INTO sales (id, salesman_id, region, sales_amount, sale_date)
-- VALUES
-- (1, 101, 'North', 500.00, '2024-01-01'),
-- (2, 102, 'South', 300.00, '2024-01-02'),
-- (3, 101, 'North', 700.00, '2024-01-03'),
-- (4, 103, 'East', 200.00, '2024-01-04'),
-- (5, 104, 'West', 900.00, '2024-01-05'),
-- (6, 102, 'South', 400.00, '2024-01-06'),
-- (7, 103, 'East', 800.00, '2024-01-07'),
-- (8, 101, 'North', 600.00, '2024-01-08'),
-- (9, 104, 'West', 300.00, '2024-01-09'),
-- (10, 102, 'South', 500.00, '2024-01-10');

-- select * from sales

-- what is total sales made by each sales man
-- select salesman_id , sum(sales_amount) from sales group by salesman_id

-- gives sales id's where sale is more than 1000
-- select salesman_id , sum(sales_amount) from sales  group by salesman_id having sum(sales_amount) > 1000

-- get avg sale amount by regions
-- select region , round(avg(sales_amount),2 ) from sales group by region

-- find total sales by each region in mon of jan
-- select region, sum(sales_amount) from sales where monthname(sale_date) = 'january' group by region
-- select region, sum(sales_amount) from sales where sale_date between '2024-01-01' and '2024-01-31' group by region

-- find max and min sale amount by each region
select region , max(sales_amount) , min(sales_amount) from sales group by region








