USE studentinfo;

DELIMITER $$

CREATE FUNCTION calbonus(sa INT )
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
     IF sa > 45000 THEN
        RETURN 'eligible';
    ELSE
        RETURN 'not eligible';
    END IF;
END$$

DELIMITER $$;

-- call the function
SELECT calbonus(1200); -- Output: 'eligible'
SELECT calbonus(800);  -- Output: 'not eligible'

select emp_id,salary,calbonus(salary) from employee1; 


-- function 2

DELIMITER $$
CREATE FUNCTION calcfactorial(num INT)
RETURNS BIGINT
DETERMINISTIC
BEGIN
    DECLARE result BIGINT DEFAULT 1;
    DECLARE counter BIGINT DEFAULT 1;
    
    WHILE counter <= num DO
        SET result = result * counter; -- Fixed typo in "resuly"
        SET counter = counter + 1;
    END WHILE;

    RETURN result; -- Fixed "returns" to "RETURN"
END$$

DELIMITER $$;


SELECT calcfactorial(5); 


-- cast function - it is used to convert the column value in a table from one data type to another data type.
-- syntax - CAST(expression AS target_data_type)
-- convert function - Converts a value from one data type to another.
-- syntax - CONVERT(expression, target_data_type) 
select cast(20.19 as signed);
select cast("20,05,24" as date);

select emp_id,salary, cast(salary as signed) from employee1;

select convert(23.191,decimal(5,2));
