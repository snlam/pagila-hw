/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select first_name, last_name, sum(amount) as sum from staff
inner join payment using (staff_id)
where payment_date >= '2020-01-01' and payment_date <= '2020-02-01'
group by first_name, last_name; -- must use group by if there exists an aggregate function but can't put the aggregate function. join on staff_id because both tables have it even though you're not using it
~
~
~

