/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
select
first_name, last_name, address as street_address from staff -- address is from table address, reference table 1 here
inner join address using (address_id) -- reference table 2 here. (address_id) is same as staff.address_id = address.address_id
order by last_name;
~

