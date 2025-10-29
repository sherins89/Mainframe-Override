-- Submission file for github -- 

--1-- Get the username of the person who made the post about EmptyStack in forum_posts.-- 
select author, content from forum_posts where content ILIKE '%My dad works there%' and date >= '2048-01-01' and date <= '2048-12-31';
     author     |                                                                                              content                                                                                               
----------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 smart-money-44 | You should all invest in EmptyStack Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving taxis are the future and the future is here.
(1 row)

--2-- Get the last name of the person associated with that username in forum_accounts.--
select * from forum_accounts where username = 'smart-money-44';
    username    | first_name | last_name 
----------------+------------+-----------
 smart-money-44 | Brad       | Steele

--3-- Find all other accounts with the same last name.--
select * from forum_accounts where last_name ILIKE '%steele%';
    username     | first_name | last_name 
-----------------+------------+-----------
 sharp-engine-57 | Andrew     | Steele
 stinky-tofu-98  | Kevin      | Steele
 smart-money-44  | Brad       | Steele
(3 rows)


--4-- Find all accounts in emptystack_accounts with the same last name. -- 
select * from emptystack_accounts where last_name ILIKE '%steele%';
    username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)


--5-- One EmptyStack employee with a forum account  -- 
-- node mainframe.js -- 
-- triple-cart-38 | password456 | Andrew     | Steele


-- 6 -- Find the message in emptystack_messages that mentions a project involving self-driving taxis. -- 
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
  id   |     from     |       to       |   subject    |                            body                            
-------+--------------+----------------+--------------+------------------------------------------------------------
 LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.

 -- 7 -- Get the credentials for the admin account from emptystack_accounts -- 
 select * from emptystack_accounts where username = 'your-boss-99';
   username   |    password    | first_name | last_name 
--------------+----------------+------------+-----------
 your-boss-99 | notagaincarter | Skylar     | Singer
(1 row)

-- 8 -- Get the ID of the project from emptystack_projects -- 
select * from emptystack_projects where code ILIKE '%taxi%';
    id    | code 
----------+------
 DczE0v2b | TAXI
(1 row)


--- porject shutdown --
Password: notagaincarter
Welcome, your-boss-99.
Project ID: DczE0v2b
Initiating project shutdown sequence...
5...
4...
3...
2...
1...
Project shutdown complete.
sherinsabu@Mac Mainframe-Override % 