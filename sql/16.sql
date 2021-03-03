/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select title, sum(amount) as profit from film
inner join inventory using (film_id)
inner join rental using (inventory_id)
inner join payment using (rental_id)
group by title -- don't include aggregate
order by profit desc;

