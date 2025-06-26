-- Task 3: Writing Basic SELECT Queries

-- Sample Table: Employees
CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary REAL,
    hire_date DATE
);

-- Sample Data
INSERT INTO Employees (emp_id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 40000, '2022-01-15'),
(2, 'Bob', 'IT', 55000, '2021-07-22'),
(3, 'Charlie', 'Sales', 45000, '2023-03-10'),
(4, 'David', 'Finance', 60000, '2020-11-05'),
(5, 'Eva', 'IT', 52000, '2022-09-12'),
(6, 'Frank', 'Sales', 48000, '2023-05-20'),
(7, 'Grace', 'HR', 41000, '2021-12-01');

-- 1. SELECT all columns
SELECT * FROM Employees;

-- 2. SELECT specific columns
SELECT name, department, salary FROM Employees;

-- 3. SELECT with WHERE
SELECT * FROM Employees
WHERE department = 'IT';

-- 4. WHERE with AND / OR
SELECT * FROM Employees
WHERE department = 'Sales' AND salary > 46000;

SELECT * FROM Employees
WHERE department = 'HR' OR department = 'Finance';

-- 5. WHERE with LIKE
SELECT * FROM Employees
WHERE name LIKE 'A%';  -- Names starting with 'A'

-- 6. WHERE with BETWEEN
SELECT * FROM Employees
WHERE salary BETWEEN 40000 AND 55000;

-- 7. ORDER BY (ascending & descending)
SELECT * FROM Employees
ORDER BY salary;  -- Ascending

SELECT * FROM Employees
ORDER BY hire_date DESC;  -- Newest first

-- 8. LIMIT (Top 3 highest-paid employees)
SELECT * FROM Employees
ORDER BY salary DESC
LIMIT 3;
