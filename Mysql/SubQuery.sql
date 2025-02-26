-- sub query in mysql

-- subquery - It is a nested query that enclosed inside another query.The inner query determine the result of outter query.

use studentinfo;

-- outter query                            inner query
select *from employee1 where salary < (select avg(salary) from employee1);

select firstname,email from employee1 where salary in(select salary from employee1 where salary > 2000);