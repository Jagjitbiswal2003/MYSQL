use studentinfo;

-- show databases;

-- SQL Expressions

-- boolean expression
select *from Student where Fees = 2000;
-- numeric expression
select avg(Fees) from Student;
select sum(Fees) from Student;

-- Date expression
select *from Student where DOB = '2003-04-23';
select current_timestamp();

