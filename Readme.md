# SQL Documentation

## Introduction

SQL (Structured Query Language) is a standard programming language specifically designed for managing and manipulating databases. SQL allows you to create, read, update, and delete (CRUD) data stored in a relational database.

## Creating and Managing a Database

### 1. Creating a Database

The `CREATE DATABASE` statement is used to create a new database.

```sql
CREATE DATABASE company_db;
```

### 2. Using a Database

To start working with a specific database, use the `USE` statement.

```sql
USE company_db;
```

### 3. Showing Tables

The `SHOW TABLES` statement is used to display all tables in the current database.

```sql
SHOW TABLES;
```

## Creating and Managing Tables

### 1. Creating a Table

The `CREATE TABLE` statement is used to create a new table in the database.

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);
```

### 2. Viewing Table Structure

The `DESCRIBE` statement is used to display the structure of a table.

```sql
DESCRIBE employees;
```

### 3. Dropping a Table

The `DROP TABLE` statement is used to delete an existing table and its data.

```sql
DROP TABLE employees;
```

## Basic SQL Queries

### 1. SELECT

The `SELECT` statement is used to retrieve data from a database.

```sql
SELECT column1, column2, ...
FROM table_name;
```

Example:

```sql
SELECT first_name, last_name
FROM employees;
```

### 2. WHERE

The `WHERE` clause is used to filter records that meet certain conditions.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Example:

```sql
SELECT first_name, last_name
FROM employees
WHERE department = 'Sales';
```

### 3. INSERT INTO

The `INSERT INTO` statement is used to add new records to a table.

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

Example:

```sql
INSERT INTO employees (first_name, last_name, department)
VALUES ('John', 'Doe', 'Sales');
```

### 4. UPDATE

The `UPDATE` statement is used to modify existing records in a table.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

Example:

```sql
UPDATE employees
SET department = 'Marketing'
WHERE last_name = 'Doe';
```

### 5. DELETE

The `DELETE` statement is used to delete records from a table.

```sql
DELETE FROM table_name
WHERE condition;
```

Example:

```sql
DELETE FROM employees
WHERE last_name = 'Doe';
```

## Creating and Managing Views

### 1. Creating a View

The `CREATE VIEW` statement is used to create a view. A view is a virtual table based on the result set of an SQL statement.

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Example:

```sql
CREATE VIEW sales_employees AS
SELECT first_name, last_name
FROM employees
WHERE department = 'Sales';
```

### 2. Querying a View

You can query a view just like a regular table.

```sql
SELECT column1, column2, ...
FROM view_name;
```

Example:

```sql
SELECT first_name, last_name
FROM sales_employees;
```

### 3. Dropping a View

The `DROP VIEW` statement is used to delete a view.

```sql
DROP VIEW view_name;
```

Example:

```sql
DROP VIEW sales_employees;
```

## Conclusion

This documentation provides a basic overview of SQL and its fundamental operations. SQL is a powerful language for managing databases, and mastering its basics is essential for working with relational databases.
