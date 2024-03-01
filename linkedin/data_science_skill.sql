/*

	Data Science Skills

Official page -> https://datalemur.com/questions/matching-skills

Given a table of candidates and their skills, you're tasked with finding the candidates 
best suited for an open Data Science job. You want to find candidates who are proficient in Python, 
Tableau, and PostgreSQL.

Write a query to list the candidates who possess all of the required skills for the job. 
Sort the output by candidate ID in ascending order.

Assumption:

    There are no duplicates in the candidates table.

*/


create database linkedin;
use linkedin;
create table candidates (candidate_id smallint, skill varchar(30));
insert into candidates values 
	(123, "Python"),
    (123, "Tableau"),
    (123, "PostgreSQL"),
    (234, "R"),
    (234, "PowerBI"),
    (234, "SQL Server"),
    (345, "Python"),
    (345, "Tableau");


/*Solution*/

select candidate_id
from(
	select candidate_id, skill 
	from candidates
	where skill = "Python" OR skill = "Tableau" OR skill = "PostgreSQL"
	group by skill
	)as subquery
group by candidate_id;