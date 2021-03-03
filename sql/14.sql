/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select title from film
inner join film_category using (film_id)
inner join category using (category_id)
where name = 'Family'
order by title;

