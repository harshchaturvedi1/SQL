# SQL Aggregate Functions

Aggregate functions in SQL are used to perform calculations on a set of values and return a single value. These functions are often used with the `GROUP BY` clause to perform calculations on subsets of data.

## 1. COUNT

The `COUNT` function returns the number of rows that match a specified condition.

### Syntax:

```sql
COUNT(expression)
```

### Example:

```sql
SELECT COUNT(*) FROM customers;
```

## 2. SUM

The `SUM` function returns the sum of values in a column.

### Syntax:

```sql
SUM(expression)
```

### Example:

```sql

SELECT SUM(total_sales) FROM orders;
The AVG function returns the average of values in a column.
```

## 3. AVG

### Syntax:

```sql

AVG(expression)
```

### Example:

```sql

SELECT AVG(salary) FROM employees;
The MIN function returns the minimum value in a column.
```

## 4. MIN

### Syntax:

```sql

MIN(expression)
```

### Example:

```sql

SELECT MIN(age) FROM students;
The MAX function returns the maximum value in a column.
```

## 5. MAX

### Syntax:

```sql

MAX(expression)
```

### Example:

```sql

SELECT MAX(price) FROM products;
The GROUP_CONCAT function concatenates the values of a column into a single string, with optional separator.
```

## 6. GROUP_CONCAT

### Syntax:

```sql

GROUP_CONCAT(expression SEPARATOR separator)
```

### Example:

```sql

SELECT GROUP_CONCAT(name SEPARATOR ', ') FROM employees;

```
