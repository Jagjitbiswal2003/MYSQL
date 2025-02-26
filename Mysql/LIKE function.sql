-- like - SQL like is a command that determines whether a specific character string matches a pattern.
 -- like operator is frequently use in where clause to look for a specific pattern in a column.
 -- wildcard - wildcard character is the special symbol or character used to represent one or more than one character in a string.
 
 -- where colname like 'a%' - return any value that starts with a
 -- where colname like '%sh' - return any value that ends with sh
 -- where colname like '%a%' - return any value that contains a
 -- where colname like '_' - return any value that contain exactly one character
 -- where colname like 'b%n' - return any value that start with b ends with n
 
 use studentinfo;
 select *from employee1;
 
 select emp_id,lastname from employee1 where firstname like 'j%';
 select emp_id,firstname from employee1 where firstname like '%e';
 select emp_id,firstname from employee1 where firstname like 'j%n';
 
 select emp_id,firstname from employee1 where firstname like 'j%' and salary between 100000 and 300000;
 -- this query retrive the firstname whose have 4 characters
 select emp_id,firstname from employee1 where firstname like '____';
 -- this query retrive the firstname whose first character is j and have 4 character
 select emp_id,firstname from employee1 where firstname like 'j___';
 
 
 
 