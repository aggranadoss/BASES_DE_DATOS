/*
	Page With No Likes
    
Assume you're given two tables containing data about Facebook Pages and their respective likes 
(as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes. 
The output should be sorted in ascending order based on the page IDs.

*/

create database facebook;
use facebook;
create table pages (page_id int, page_name varchar (30));
create table page_likes (user_id int, page_id int, liked_date datetime);
insert into pages values 
	(20001, "SQL Solutions"),
    (20045, "Brain Exercises"),
    (20701, "Tips for Data Analysts");
insert into page_likes values 
	(111, 20001, "2022-04-08 00:00:00"),
    (121, 20045, "2022-03-12 00:00:00"),
    (156, 20001, "2022-07-25 00:00:00");

/*Solution*/

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL;



