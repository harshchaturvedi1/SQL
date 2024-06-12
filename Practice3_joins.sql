
/*
primary keys - A primary key is a column (or a set of columns) in a table that uniquely identifies each row in that table. 
				- Uniqueness , Non-null,  Immutable
foreign key -  is a column (or a set of columns) in a table that establishes a link between the data in two tables. 
				  It acts as a reference to the primary key in another table (or the same table). 
				- Referential Integrity , Relationships



JOINS ==> are used to combine data from multiple tables and output them

------------ types of joins ------------
inner join - An INNER JOIN returns records that have matching values in both tables

LEFT JOIN (or LEFT OUTER JOIN) - A LEFT JOIN returns all records from the left table (table1) and the matched records from the right table (table2).
  If there is no match, the result is NULL on the side of the right table.

 RIGHT JOIN (or RIGHT OUTER JOIN)
A RIGHT JOIN returns all records from the right table (table2) and the matched records from the left table (table1).
 If there is no match, the result is NULL on the side of the left table.
 
 FULL JOIN (or FULL OUTER JOIN)
A FULL JOIN returns all records when there is a match in either left (table1) or right (table2) table records. 
It returns NULL for records in the left table that do not have a match in the right table and vice versa.

CROSS JOIN
A CROSS JOIN returns the Cartesian product of the two tables, meaning it returns all possible combinations of rows from the tables.
 It does not require a ON clause.
 
 SELF JOIN
A SELF JOIN is a regular join, but the table is joined with itself. It can be useful for querying hierarchical data or 
comparing rows within the same table.

NATURAL JOIN
A NATURAL JOIN automatically joins tables based on columns with the same name and data 
type in both tables. It doesn't require an ON clause.

*/


-- create database Practice2_joins;
-- show Databases;
-- use Practice2_joins;
-- show tables;

-- create table departments(
-- department_id int primary key,
-- department_name varchar(50)
-- )


-- insert into departments(department_id,department_name)
-- values 
-- (10,'HR'),
-- (20,'Finance'),
-- (30,'Engineering'),
-- (40,'Markettig')


-- select * from departments;
-- describe departments;

-- create table employee(
-- employee_id int primary key,
-- employee_name varchar(50),
-- department_id int
-- );

-- insert into employee(employee_id,employee_name,department_id)
-- values 
-- (1,'Alice',10),
-- (2,' Bob',20),
-- (3,'Charlie',10),
-- (4,'David',30),
-- (5,'Eve',null)


-- ------- inner join -------
-- print all employees who have a department
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- inner join departments d
-- on e.department_id = d.department_id

-- ---------- left join ----------
-- list all employees with their department names if available , and if not available print it as it is (null)
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- left join departments d
-- on e.department_id = d.department_id

-- ---------- right join ---------
-- list all departments with their employees(incuding departmet with  no employees as  well)

-- --- solution 1 using right join --- 
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- right join departments d
-- on e.department_id = d.department_id

-- --- solution 2 using left join --- 
-- select e.employee_id , e.employee_name , d.department_name
-- from departments d
-- left join employee e
-- on d.department_id = e.department_id

-- list all employees and departments, including mployees without departments and departments without employees

-- -------- full join -----------
-- solution 1 ---------
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- full join departments d -- full join is not present in mysql server 
-- on e.department_id = d.department_id

-- solution 2 using union -----
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- left join departments d
-- on e.department_id = d.department_id
-- union
-- select e.employee_id , e.employee_name , d.department_name
-- from employee e
-- right join departments d
-- on e.department_id = d.department_id

-- -------- self join ----------
-- create table employeeAndManagers(
-- employee_id int primary key,
-- employee_name varchar(50),
-- managerId int
-- );

-- insert into employeeAndManagers(employee_id,employee_name,managerId)
-- values 
-- (1,'Alice',3),
-- (2,' Bob',3),
-- (3,'Charlie',null),
-- (4,'David',2),
-- (5,'Eve',null)

-- SELECT e1.employee_name AS employee, e2.employee_name AS manager
-- FROM employeeAndManagers e1
-- INNER JOIN employeeAndManagers e2
-- ON e1.managerID = e2.employee_id;


-- ------ multilevel joining ------
-- Multilevel joins involve joining more than two tables in a single SQL query

-- show tables;
-- drop all tables created above for code below

-- CREATE TABLE Employees (
--     EmployeeID INT PRIMARY KEY,
--     EmployeeName VARCHAR(50),
--     DepartmentID INT
-- );

-- INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) VALUES
-- (1, 'Alice', 10),
-- (2, 'Bob', 20),
-- (3, 'Charlie', 10),
-- (4, 'David', 30);

-- CREATE TABLE Departments (
--     DepartmentID INT PRIMARY KEY,
--     DepartmentName VARCHAR(50)
-- );

-- INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
-- (10, 'HR'),
-- (20, 'Engineering'),
-- (30, 'Marketing');

-- CREATE TABLE Projects (
--     ProjectID INT PRIMARY KEY,
--     ProjectName VARCHAR(50),
--     EmployeeID INT
-- );

-- INSERT INTO Projects (ProjectID, ProjectName, EmployeeID) VALUES
-- (100, 'Project X', 1),
-- (101, 'Project Y', 2),
-- (102, 'Project Z', 3);

-- List all employees along with their department names and project names. 
-- Include employees even if they are not assigned to any project.
-- SELECT 
-- E.EmployeeID,
-- E.EmployeeName,
-- D.DepartmentName,
-- P.ProjectName
-- FROM 
-- Employees E
-- LEFT JOIN 
-- Departments D 
-- ON 
-- E.DepartmentID = D.DepartmentID
-- LEFT JOIN 
-- Projects P 
-- ON E.EmployeeID = P.EmployeeID


-- Find employees who do not have any projects assigned.
-- SELECT 
-- E.EmployeeID,
-- E.EmployeeName,
-- D.DepartmentName,
-- P.ProjectName
-- FROM 
-- Employees E
-- LEFT JOIN 
-- Departments D 
-- ON 
-- E.DepartmentID = D.DepartmentID
-- LEFT JOIN 
-- Projects P 
-- ON E.EmployeeID = P.EmployeeID
-- where 
-- P.ProjectID IS NULL;

-- List all projects along with the names of the employees working on them and their respective departments.
-- SELECT 
-- P.ProjectID,
-- P.ProjectName,
-- E.EmployeeName,
-- D.DepartmentName
-- FROM
-- Projects P
-- LEFT JOIN 
-- Employees E
-- ON 
-- P.EmployeeID = E.EmployeeID
-- LEFT JOIN 
-- Departments D
-- ON 
-- E.DepartmentID = D.DepartmentID;

-- Get the count of employees in each department, including departments with no employees.
SELECT 
D.DepartmentID,
D.DepartmentName,
COUNT(E.EmployeeID) AS EmployeeCount
from 
Departments D
INNER JOIN 
Employees E 
ON 
E.DepartmentID = D.DepartmentID
GROUP BY 
D.DepartmentID, D.DepartmentName;














