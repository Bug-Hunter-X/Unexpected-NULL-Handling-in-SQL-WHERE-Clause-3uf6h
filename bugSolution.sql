```sql
SELECT * FROM employees WHERE department_id = 10 AND (salary > 100000 OR salary IS NULL); 
--Alternative handling depending on whether NULL salaries should be treated as 'greater than 100000'
SELECT * FROM employees WHERE department_id = 10 AND (salary > 100000 OR salary IS NULL);
```

This revised query uses the `OR salary IS NULL` condition.  This explicitly checks for rows with a `NULL` salary and includes them in the result set if `department_id` is 10. If NULL salaries should be treated differently, this condition should be adjusted accordingly.