/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select country, sum(amount) as profit from payment
inner join rental using (rental_id)
inner join customer on rental.customer_id = customer.customer_id
inner join address using (address_id)
inner join city using (city_id)
inner join country using (country_id)
group by country order by country;

