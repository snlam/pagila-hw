/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name, count(film_id) as sum from category
inner join film_category using (category_id)
inner join film using (film_id)
inner join language using (language_id)
where language.name = 'English'
group by category.name order by name;

