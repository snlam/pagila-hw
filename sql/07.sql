/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
select last_name, count(last_name) as last_name_count from actor group by last_name having count(last_name) >= 2 order by count(last_name) desc; -- having is like where except it goes after a group by and allows you to filter or use an aggregate function
~
~

