select 
	actor_id,
	count (film_id)

from
	film_actor

group by
	actor_id;