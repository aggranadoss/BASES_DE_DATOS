# Page With No Likes [Facebook SQL Interview Question]

https://datalemur.com/questions/sql-page-with-no-likes

Assume you're given two tables containing data about Facebook Pages and their respective likes (as in "Like a Facebook Page").

Write a query to return the IDs of the Facebook pages that have zero likes. The output should be sorted in ascending order based on the page IDs.


## pages Table:

| Column Name  | Type       | 
|--------------|------------|
| page_id      | integer    |
| page_name    | varchar(30)|

## pages Example Input:


| page_id   | page_name              |
|-----------|------------------------|
| 20001     | SQL Solution           |
| 20045     | Brain Exercises        |
| 20701     | Tips for Data Analysts |

## page_likes Table:

| Column Name     | Type       | 
|-----------------|------------|
| user_id         | integer    |
| page_id         | integer    |
| liked_date      | datetime   |


## page_likes Example Input:


| user_id | page_id    | liked_date         |
|---------|------------|--------------------|
| 111     | 20001      |2022-04-08 00:00:00 |
| 121     | 20045      |2022-03-12 00:00:00 |
| 156     | 20001      |2022-07-25 00:00:00 |


## Example output:

| page_id |
|---------|
| 20701   |


## Solution

[data_science_skill.sql](https://github.com/aggranadoss/BASES_DE_DATOS/blob/main/linkedin/data_science_skill.sql) 
