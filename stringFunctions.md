# SQL String Functions

String functions in SQL are used to manipulate character data. These functions can be used to perform operations such as concatenation, extraction, modification, and comparison of strings.

## 1. CONCAT

The `CONCAT` function is used to concatenate two or more strings.

### Syntax:

```sql
CONCAT(string1, string2, ...)
```

### Example:

```sql

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
```

## 2. SUBSTRING

The SUBSTRING function extracts a substring from a string.

### Syntax:

```sql

SUBSTRING(string, start_position, length)
```

### Example:

```sql

SELECT SUBSTRING(product_name, 1, 3) AS short_name FROM products;
```

## 3. UPPER

The UPPER function converts a string to uppercase.

### Syntax:

```sql

UPPER(string)
```

### Example:

```sql

SELECT UPPER(country) AS country_upper FROM customers;
```

## 4. LOWER

The LOWER function converts a string to lowercase.

### Syntax:

```sql

LOWER(string)
```

### Example:

```sql

SELECT LOWER(city) AS city_lower FROM addresses;
```

## 5. LENGTH

The LENGTH function returns the length of a string.

### Syntax:

```sql

LENGTH(string)
```

### Example:

```sql

SELECT LENGTH(email) AS email_length FROM users;
```

## 6. TRIM

The TRIM function removes leading and trailing spaces from a string.

### Syntax:

```sql

TRIM(string)
```

### Example:

```sql

SELECT TRIM('   hello   ') AS trimmed_string;
```
