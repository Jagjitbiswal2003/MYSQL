use studentinfo;

-- Create a table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50)
);

-- Insert some rows, including duplicates
INSERT INTO Employees (ID, Name, Department)
VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'Engineering'),
(3, 'Charlie', 'Sales'),
(4, 'Alice', 'HR'),   
(5, 'David', 'Engineering'),
(6, 'Bob', 'Engineering'); 

select *from Employees;

-- count duplicate row in a table
select Name, Department, count(*) as duplicate_count
from Employees
group by Name, Department
having count(*) > 1;



-- safe mode disable
SET SQL_SAFE_UPDATES = 0;
-- safe mode enable
SET SQL_SAFE_UPDATES = 1;

-- delete the duplicate row
DELETE e1
FROM Employees e1
JOIN Employees e2
ON e1.Name = e2.Name AND e1.Department = e2.Department
WHERE e1.ID > e2.ID;


