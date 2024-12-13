```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```

This query might return unexpected results if the `salary` column allows `NULL` values.  Rows where `department_id` is 10 but `salary` is `NULL` will be excluded, even though they might conceptually satisfy the 'greater than 100000' condition in a way that depends on context. 