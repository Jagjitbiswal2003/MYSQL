use studentinfo;

-- interview question
 -- Q. find the second highest salary from employee
 select max(salary)from employee1 where salary < (select max(salary) from employee1);
 -- inner query evaluate - max salary - 200000 then the outer query select max(salary)from employee1 where salary < 200000
 -- here the only salary i.e 60000.
 -- but when anyone ask to find 5th highest salary then use limit function
 
 -- syntax - select col from tablename order by expression limit n-1,1
 -- n-1: This indicates the number of rows to skip. For the N-th value, you skip n-1 rows.
 -- 1: This specifies that only 1 row should be fetched after skipping.
 
 select distinct salary from employee1 order by salary limit 2,1;
 
 -- you want to fetch all details
 select *from employee1 where salary = (select distinct salary from employee1 order by salary limit 2,1);
 
 -- find and show all details of 3rd highest salary and after 3rd highest salary
 select distinct salary from employee1 order by salary limit 2,2;
 
 -- there is other way to do this
 
 -- dense_rank()
 -- syntax - select column list, dense_rank() over(order by expression) as aliasname from tablename
 select emp_id,firstname,lastname, dense_rank() over(order by salary desc) as rank_sal from employee1;
 
 select emp_id,firstname,lastname,salary from 
 (select emp_id,firstname,lastname,salary, dense_rank() over(order by salary desc) as rank_sal from employee1) as e
 where rank_sal = 2;