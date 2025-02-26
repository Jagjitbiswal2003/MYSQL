
-- group by clause - The GROUP BY clause in SQL is used to arrange identical data into groups.
-- syntax 
-- SELECT column_name, aggregate_function(column_name) FROM table_name WHERE condition GROUP BY column_name;
-- here where condition is optional

use studentinfo;

-- Create the table
CREATE TABLE employee1 (
    emp_id INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    salary DECIMAL(10, 2),
    hiredate DATE NOT NULL,
    jobid VARCHAR(10) NOT NULL,
    managerid INT,
    department_id INT
);

INSERT INTO employee1 (emp_id, firstname, lastname, email, phone, salary, hiredate, jobid, managerid, department_id) 
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', 50000, '2022-01-15', 'DEV001', NULL, 10),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1234567891', 55000, '2023-03-20', 'HR001', 1, 20),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '1234567892', 60000, '2021-08-10', 'FIN001', 1, 30),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '1234567893', 45000, '2023-05-05', 'DEV002', 3, 10);

select *from employee1;

select sum(salary) as total,department_id
from employee1
-- where salary > 45000  where is optional you can use according to need
group by department_id
order by department_id;

-- Having clause - It is used to fetch group of rows or values which are matched with specific condition in the group by statement.
-- syntax  
-- select col1,col2 from tablename group by col1,col2 having[condition]
select firstname,avg(salary) from employee1 group by firstname having avg(salary) > 100;

-- here why we use having clause instead of where clause
-- 1. WHERE Clause:
-- Filters rows before grouping is performed.
-- Operates on individual rows in the table.
-- Cannot be used to filter aggregated data (e.g., AVG(salary)).
-- 2. HAVING Clause:
-- Filters grouped data after grouping is performed.
-- Operates on the result of aggregate functions like AVG, SUM, COUNT, etc.
--  Used when you need to filter groups based on aggregate values.

