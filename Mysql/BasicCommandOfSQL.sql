-- CREATE DATABASE studentinfo;
use studentinfo;

-- Creating the table
CREATE TABLE Student (
    student_id INT,
    Name VARCHAR(100),
    Age INT,
    DOB DATE,
    Fees int,
    Gender CHAR(10)
);

-- Inserting multiple rows into the table
insert into Student(student_id,Name,Age,DOB,Fees,Gender)
values
(1, 'Jagjit', 21, '2003-04-23',1000, 'male'),
(2, 'Aarav', 22, '2002-05-15',2000, 'male'),
(3, 'Ishita', 20, '2004-09-12',3000, 'female'),
(4, 'Rohan', 23, '2001-11-25',4000, 'male'),
(5, 'Ananya', 21, '2003-01-30',5000, 'female'),
(6, 'Karan', 22, '2002-07-19',6000, 'male');

-- Arithmetic operation

select student_id,Name,Fees, Fees+1000 as New_Fees from Student;

select student_id,Name,Fees, Fees*2 as New_Fees from Student;


SET SQL_SAFE_UPDATES = 0;
delete from Student where student_id = 5;

select *from Student;

-- Comparision operator

-- Equal to operator(=)
select *from Student where Fees = 2000;
-- Not Equal to operator(!=)
select *from Student where Fees != 2000;
-- greater than(>)
select *from Student where student_id > 2;
-- less than(<)
select *from Student where student_id < 4;
-- greater than equal to(>=)
select *from Student where student_id >= 2;
-- less than equal to(<=)
select *from Student where student_id <= 2;

-- Logical operator

-- and operator
select *from Student where student_id = 2 and Fees = 2000 and Gender = 'male';
-- or operator
select *from Student where student_id = 3 or Fees = 3000;
-- between operator(it return null if it not found value)
select *from Student where student_id between 3 and 5;
-- not operator
select *from Student where not student_id = 3;

-- rename the table
-- alter table Student rename to Studentin

-- copy the data into another table
create table student_new select* from Student;
select *from student_new;

-- count no of records in the table
select count(*) from Student;
-- count records according to condition
select count(*) from Student where Fees = 2000;
select count(distinct Fees) from Student; 

-- top- 
-- limit- it shows a limit of records from the table
select *from Student limit 3;

-- order by - it shows the record in a ascending(asc) and descending(desc) order.
select *from Student order by Fees desc limit 4;

-- rand() - randomly generate the record
select *from Student order by rand();

select *from Student where student_id in(2,3,4);

select *from Student where DOB between '2001-11-25' and '2003-09-12';
-- chech whether the null values is present in record
select *from Student where Fees is null;
select *from Student where Fees is not null;

-- like operator
-- The LIKE operator in MySQL is used to search for a specified pattern in a column. 
-- It is typically used in WHERE clauses to filter rows that match a specific pattern using wildcards:
-- %: Represents zero, one, or multiple characters.
-- _: Represents a single character.
-- check the name whose start with j.
select *from Student where Name like 'J%';
--  check the name whose end with t
select *from Student where Name like '%t';


-- alter
alter table Student add column Address varchar(20) not null;
alter table Student add column(phone int , class varchar(40));

-- change column name
alter table Student change column Fees Salary varchar(20);
-- change the type of column
alter table Student modify Fees int;

-- set default value in alter command
alter table Student add mark varchar(20);
alter table Student alter column mark set default 80;