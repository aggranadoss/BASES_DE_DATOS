/* 
	Histogram_of_tweets  

Offical page -> https://datalemur.com/questions/sql-histogram-tweets 

Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted 
per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who 
fall into that bucket.

In other words, group the users by the number of tweets they posted in 2022 and count the number 
of users in each group.


*/
create database twitter;
use twitter;
create table tweets(tweet_id int, user_id int, msg varchar(255), tweet_date timestamp);
insert into tweets values
	(214252, 111, 'Am considering taking Tesla private at $420. Funding secured.', '2021-12-30 00:00:00'),
	(739252, 111, 'Despite the constant negative press covfefe', '2022-01-01 00:00:00'),
	(846402, 111, 'Following @NickSinghTech on Twitter changed my life!', '2022-02-14 00:00:00'),
	(241425, 254, 'If the salary is so competitive why won\'t you tell me what it is', '2022-03-01 00:00:00'),
	(231574, 148, 'I no longer have a manager. I can\'t be managed', '2022-03-23 00:00:00');
    
/* Solution  */

select number_msg, COUNT(*) as user_count
from (
    select user_id, COUNT(*) as number_msg
    from tweets
    where year(tweet_date) = 2022
    group by user_id
) as subquery
group by number_msg;

