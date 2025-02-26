-- commit and rollback
/*
 commit - It is a TCL command that allow user to permanently save all changes made in database or table transaction.
 The database canot be restore to its previous state once the commit command is execute.

 Rollback - it is a command use in sql to undo transaction that were not save in the database.
 the command is only use to undo changes that made since previous commit.
 
 rollback and commit is only applicable for insert, update and delete command.
 */
use studentinfo;

select *from employee;

update employee set salary = 100000 where employee_id = 7;
commit;

update employee set salary = 100000 where employee_id = 2;

rollback;



