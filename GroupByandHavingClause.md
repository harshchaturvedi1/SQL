# SQL GROUP BY and HAVING Clauses

In SQL, the `GROUP BY` clause is used to group rows that have the same values into summary rows, typically to perform aggregate functions on these groups. The `HAVING` clause is used in conjunction with the `GROUP BY` clause to filter the results of a grouped query based on specified conditions.

## 1. GROUP BY

The `GROUP BY` clause is used to group rows based on one or more columns.

### Syntax:

```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1;
```

### Example:

```sql

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

## 2. HAVING

The HAVING clause is used to filter the results of a grouped query.

### Syntax:

```sql

SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1
HAVING condition;
```

### Example:

```sql

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

## 3. Using Aggregate Functions with GROUP BY and HAVING

Aggregate functions can be used in conjunction with GROUP BY and HAVING to perform calculations on grouped data.

### Example:

```sql

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 100000;
```
