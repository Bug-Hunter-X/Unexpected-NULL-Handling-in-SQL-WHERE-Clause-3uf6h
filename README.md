# Unexpected NULL Handling in SQL WHERE Clause

This repository demonstrates a common SQL query error related to the handling of `NULL` values in the `WHERE` clause. The provided SQL query intends to filter employees based on their department and salary, but its behavior with `NULL` salaries might be unexpected.

The `bug.sql` file contains the problematic query. The `bugSolution.sql` file offers a solution to handle `NULL` values appropriately.

## Bug

The issue lies in how SQL evaluates comparisons involving `NULL` values.  A comparison such as `salary > 100000` will not evaluate as true or false if `salary` is `NULL`. It will evaluate as `UNKNOWN`, effectively excluding rows with `NULL` salary from the results.  This might lead to incomplete or incorrect results depending on the context of the query. 