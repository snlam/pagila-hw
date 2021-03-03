/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

select film_id, title, language_id, name from film
inner join language using (language_id)
where title ilike 'k%' or title  ilike 'q%' and name = 'English'
order by title;
