-- CREATE DATABASE Practice4_relationships;
-- USE Practice4_relationships;

/*
today's session 
1. Entity
2. Relationship - 1-1, 1-M & M-M
3. Intro to ER diagram - Applications
4. Normalization - 1NF , 2NF and 3NF

*/

/* 
What is Entity ?
- object or concept where data can be stored ,
- it represent a table in a database
- every entity will have to have attributes and it's data types


What is Relationship in database
- it describes how data in one table is related to data in another table

*/

-- Types of Relationship:
-- ------------- 1-1 ------------- 
-- each record in table A is linked to one and only one record in table B and vice-versa

-- CREATE TABLE Employees (
--     EmployeeID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Address VARCHAR(100)
-- );

-- CREATE TABLE EmployeeDetails (
--     EmployeeID INT PRIMARY KEY,
--     DateOfBirth DATE,
--     PhoneNumber VARCHAR(15),
--     FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
-- );



-- -------------  1-M ------------- 
--  each record in table A can be linked to one or more records in table B , 
-- 	but each record in table B is linked on only one record in  table A.

-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Address VARCHAR(100)
-- );

-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     OrderDate DATE,
--     CustomerID INT,
--     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
-- );

-- -------------  M-M ------------- 
-- Each record in Table A can be linked to many records in Table B, and each record 
-- in Table B can be linked to many records in Table A. This is typically implemented using a junction table.

-- CREATE TABLE Students (
--     StudentID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Address VARCHAR(100)
-- );

-- CREATE TABLE Courses (
--     CourseID INT PRIMARY KEY,
--     CourseName VARCHAR(100),
--     Credits INT
-- );

-- CREATE TABLE StudentCourses (
--     StudentID INT,
--     CourseID INT,
--     PRIMARY KEY (StudentID, CourseID),
--     FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
-- );


/* 
ER diagram - ER  is visual representation of the data and the relationship within the system

key components :
Entities : 
Attributes : 
RelationShip

+-------------------+          +-------------------+
|     Person        |          |     Address       |
|-------------------|          |-------------------|
| *PersonID         |          | *AddressID        |
|  FirstName        |          |  Street           |
|  LastName         |          |  City             |
|  DateOfBirth      |          |  ZipCode          |
+-------------------+          +-------------------+
           |                               |
           |                               |
           |          +--------------------+
           +----------|    Lives At       |
                      +--------------------+
                      
ER Diagram Explanation:
Entities:
- Person and Address are the two entities.

Attributes:
- Person has attributes PersonID, FirstName, LastName, and DateOfBirth. PersonID is the primary key.
- Address has attributes AddressID, Street, City, and ZipCode. AddressID is the primary key.

Relationship:
- The diamond shape Lives At represents the relationship between Person and Address.
- The line connecting Person to Lives At indicates that one Person can have multiple Addresses.
- The line connecting Address to Lives At indicates that each Address is associated with one Person.

/*


/* 
Composite Primary key :  is a primary key that consists of two or more columns. Together, these 
						columns uniquely identify a record in a table
                        
Super key : A super key is a set of one or more columns (attributes) in a table that uniquely identifies a row in that table. 
Every table must have at least one super key, which is capable of uniquely identifying all rows in the table.

Candidate key : candidate key is indeed a concept in relational database design. A candidate key is a 
minimal set of columns (attributes) that uniquely identifies each row in a table.
*/


/*
Normalization : Normalization is a process in database design that organizes data to minimize redundancy and 
dependency. The goal is to divide large tables into smaller, related tables and link them using relationships. 
This helps improve data integrity and reduces data anomalies.

First Normal Form (1NF):
- Each table has a primary key.
- Each column contains atomic (indivisible) / unique values.
- Each column contains only one value per row (no repeating groups or arrays).
Example:
- A table with a column that contains multiple phone numbers should be split so each phone number is in its own row.

Second Normal Form (2NF):
- The table is in 1NF.
- All non-key attributes should be dependent on the primary key only (no partial dependencies).
i.e. eliminate partial dependancy
Example:
- If a table with a composite key has non-key attributes that depend only on part of the composite key, 
split the table to remove the partial dependency.

Third Normal Form (3NF):
- The table is in 2NF.
- There are no transitive dependencies (non-key attributes do not depend on other non-key attributes).
Example:
- If a table contains an attribute that depends on another non-key attribute, move it to a new table.
*/


-- time taken 1 hour 25 min to finish lecture







				