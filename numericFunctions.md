# SQL Numeric Functions

Numeric functions in SQL are used to perform mathematical operations on numeric data types. These functions can be used for tasks such as arithmetic operations, rounding, absolute values, and more.

## 1. ABS

The `ABS` function returns the absolute value of a numeric expression.

### Syntax:

```sql
ABS(number)
```

### Example:

```sql

SELECT ABS(-10) AS absolute_value;
```

## 2. ROUND

The ROUND function rounds a numeric value to a specified number of decimal places.

### Syntax:

```sql

ROUND(number, decimal_places)
```

### Example:

```sql

SELECT ROUND(123.456, 2) AS rounded_value;
```

## 3. CEIL / CEILING

The CEIL or CEILING function returns the smallest integer greater than or equal to a numeric value.

### Syntax:

```sql

CEIL(number)
```

or

```sql

CEILING(number)
```

### Example:

```sql

SELECT CEIL(10.1) AS ceil_value;
```

## 4. FLOOR

The FLOOR function returns the largest integer less than or equal to a numeric value.

### Syntax:

```sql

FLOOR(number)
```

### Example:

```sql

SELECT FLOOR(10.9) AS floor_value;
```

## 5. SQRT

The SQRT function returns the square root of a numeric value.

### Syntax:

```sql

SQRT(number)
```

### Example:

```sql

SELECT SQRT(25) AS square_root;
```

## 6. POWER

The POWER function returns the result of raising a numeric value to the power of another numeric value.

### Syntax:

```sql

POWER(base, exponent)
```

### Example:

```sql

SELECT POWER(2, 3) AS result;
```
