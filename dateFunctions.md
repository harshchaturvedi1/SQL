# SQL Date Functions

Date functions in SQL are used to manipulate date and time values. These functions can be used for tasks such as extracting parts of a date, formatting dates, performing date arithmetic, and more.

## 1. CURRENT_DATE

The `CURRENT_DATE` function returns the current date.

### Syntax:

```sql
CURRENT_DATE
```

### Example:

```sql

SELECT CURRENT_DATE AS current_date;
```

## 2. CURRENT_TIME

The CURRENT_TIME function returns the current time.

### Syntax:

```sql

CURRENT_TIME
```

### Example:

```sql

SELECT CURRENT_TIME AS current_time;
```

## 3. CURRENT_TIMESTAMP

The CURRENT_TIMESTAMP function returns the current date and time.

### Syntax:

```sql

CURRENT_TIMESTAMP
```

### Example:

```sql

SELECT CURRENT_TIMESTAMP AS current_timestamp;
```

## 4. DATE_FORMAT

The DATE_FORMAT function formats a date as specified.

### Syntax:

```sql

DATE_FORMAT(date, format)
```

### Example:

```sql

SELECT DATE_FORMAT(birth_date, '%Y-%m-%d') AS formatted_date FROM employees;
```

## 5. EXTRACT

The EXTRACT function extracts a part of a date (e.g., year, month, day) as specified.

### Syntax:

```sql

EXTRACT(unit FROM date)
```

### Example:

```sql

SELECT EXTRACT(YEAR FROM hire_date) AS hire_year FROM employees;
```

## 6. DATE_ADD / DATE_SUB

The DATE_ADD function adds a specified interval to a date, while DATE_SUB subtracts an interval from a date.

### Syntax:

```sql

DATE_ADD(date, INTERVAL value unit)
```

```sql

DATE_SUB(date, INTERVAL value unit)
```

### Example:

```sql

SELECT DATE_ADD(order_date, INTERVAL 7 DAY) AS new_order_date FROM orders;
```
