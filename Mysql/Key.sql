use studentinfo;

-- KEYS IN MYSQL

-- key definition 
-- In MySQL, a key is a column or a set of columns in a table that is used to uniquely identify rows or establish relationships between tables.
-- types of keys-
-- 1. Primary Key 
-- This type of keys in DBMS refers to a column that uniquely identifies all the records within that table. A table has one primary key only, and this 
-- key must not contain repeated or duplicated values across its rows. Each value within the primary key must be unique, with no repetitions allowed.
-- syntax
-- create table(
-- primary key(column name)
-- );

-- 2.Candidate Key
-- A candidate key is an attribute or set of attributes that can uniquely identify a tuple.
-- 1.this key doesnot have redundant value.
-- 2.the atribute of candidate key can contain null values
-- 3.A table can have one or more candidate key and is also called as minimal super key.

-- 3.Foreign key
-- Foreign keys are the column of the table used to point to the primary key of another table.

-- 4.Alternate key
-- aternate key is the subset of candidate keys that can also uniquely identify the tuples in the table which not choosen a s primary key.

-- 5.super key
-- it is a combination of all possible atributes which can uniquely identify the rows in a table.