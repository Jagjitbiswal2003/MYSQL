use studentinfo;

-- SQL JOINS

-- In MySQL, a JOIN is used to combine rows from two or more tables based on a related column between them.
-- Types of JOINS -
-- 1.Inner join 2.outer join 3.left join 4.right join 5.cross join

-- INNER JOIN: It return a new table by combining records that only have mathing values in both tables.
-- OUTER JOIN: An outer join returns all rows from one or both tables, including unmatched rows filled with NULL for missing data.
-- LEFT JOIN:  It returns all rows of the left table and matching records from the right table.
-- RIGHT JOIN: It returns all rows of the right table and matching records from the left table.

INSERT INTO Employee (name, position, email, phone_number, hire_date, salary)
VALUES
('Alice Johnson', 'Manager', 'alice.johnson@example.com', '555-1234', '2020-01-15', 75000.00),
('Bob Smith', 'Developer', 'bob.smith@example.com', '555-5678', '2021-06-01', 60000.00),
('Cathy Lee', 'Designer', 'cathy.lee@example.com', '555-8765', '2022-09-10', 55000.00);

INSERT INTO Projects (project_name, start_date, end_date, budget, employee_id)
VALUES
('Website Redesign', '2023-01-01', '2023-06-30', 20000.00, 1),
('Mobile App Development', '2023-07-01', '2023-12-31', 30000.00, 2),
('Branding Project', '2023-03-15', '2022-11-30', 15000.00, 3);

-- inner join
-- find the column(s) for a join:
-- 1.Look for Primary and Foreign Key Relationships
-- 2.Column Names Match
-- 3.Common Sense of Data

-- syntax
-- SELECT column1, column2, ...FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
SELECT e.name, p.project_name, p.end_date FROM Employee e inner join Projects p ON e.employee_id = p.employee_id;

-- left join
-- A LEFT JOIN is a type of database join that retrieves all rows from the left table (the first table) and the matching rows 
-- from the right table (the second table). If there is no match in the right table, the result will include NULL values for columns from the right table.

-- syntax
-- SELECT column1, column2, ...FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;

SELECT e.name, p.project_name, p.end_date FROM Employee e left join Projects p ON e.employee_id = p.employee_id;

-- right join
-- A RIGHT JOIN is a type of database join that retrieves all rows from the right table (the first table) and the matching rows 
-- from the left table (the second table)

-- syntax
-- SELECT column1, column2, ...FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;

SELECT e.name, p.project_name, p.end_date FROM Employee e right join Projects p ON e.employee_id = p.employee_id;

-- full join
-- left join + right join + union of left and right join 
