use studentinfo;
-- WHERE Clause
select *from Student where student_id = 2 and Fees = 2000 and Gender = 'male';
select count(*) from Student where Fees = 2000;

-- ORDERE BY Clause
-- order by - it shows the record in a ascending(asc) and descending(desc) order.
select *from Student order by Fees desc limit 4;

-- rand() - randomly generate the record
select *from Student order by rand();

-- when you want to show multiple records in an ordered
select*from Student order by Name asc,Fees desc;

