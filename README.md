# SQL_Asset6

##🎯 Objective
Practice and demonstrate advanced SQL query logic.
Learn how to use scalar subqueries, correlated subqueries, and derived tables effectively.
Understand filtering data using IN and EXISTS operators.

🛠 Tools Used
MySQL Workbench / DB Browser for SQLite
SQL (Structured Query Language)


## departments Table

| Column Name     | Data Type   | Constraints    |
|-----------------|-------------|----------------|
| department_id   | SERIAL      | PRIMARY KEY    |
| department_name | VARCHAR(50) | NOT NULL       |


## employees Table

| Column Name   | Data Type     | Constraints                                   |
|---------------|--------------|-----------------------------------------------|
| emp_id        | SERIAL        | PRIMARY KEY                                   |
| name          | VARCHAR(50)   | NOT NULL                                      |
| department_id | INT           | REFERENCES departments(department_id)        |
| salary        | NUMERIC(10,2) | CHECK(salary > 0)                             |

##📜 Queries
## Scalar Subquery in SELECT Clause
![Select scalar](https://github.com/user-attachments/assets/a3d88d8a-0628-4018-8ae3-ae02999bee89)

## Subquery in WHERE Clause
![WHERE](https://github.com/user-attachments/assets/5fb3946e-b087-4f67-a603-9c28a8285fd6)

## IN with Subquery
![IN](https://github.com/user-attachments/assets/a051f863-6ae6-4e65-8430-9f7623d71e7c)

## EXISTS with Correlated Subquery

![exists](https://github.com/user-attachments/assets/d6c7023c-2fbc-4a1f-97f7-a685d8ff4350)

##  Derived Table in FROM Clause
![from_clause](https://github.com/user-attachments/assets/a23cdc61-9c4b-4c0a-a24e-5f3a4c5e2f24)









