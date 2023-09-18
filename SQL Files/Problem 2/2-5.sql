select 
	customer.customer_id,
	first_name,
	last_name,
	rental_date,
	return_date
from
	customer
inner join rental
	on rental.customer_id = customer.customer_id;
-- order by last_name asc;