-- Submission file for github -- 


--1-- SQL query is written to find the forum post written in April 2048 that mentions EmptyStack and dad.-- 
select * from forum_posts where content ILIKE '%emptystack%' and content ILIKE '%dad%' and date >= '2048-01-01' and date <= '2048-12-31';

--2-- SQL query is written to find the first and last name of the forum post author. --
mainframe_override=# select * from forum_accounts where username ILIKE '%smart-money-44%';
    username    | first_name | last_name 
----------------+------------+-----------
 smart-money-44 | Brad       | Steele
(1 row)

--3--SQL query is written to find all accounts with the same last name.--
mainframe_override=# select * from forum_accounts where last_name ILIKE '%steele%';
    username     | first_name | last_name 
-----------------+------------+-----------
 sharp-engine-57 | Andrew     | Steele
 stinky-tofu-98  | Kevin      | Steele
 smart-money-44  | Brad       | Steele
(3 rows)

--4--SQL query is written to find all employees with the same last name. -- 
mainframe_override=# select * from emptystack_accounts where last_name ILIKE '%steele%';
    username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)