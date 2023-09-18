select
	actor.first_name || ' ' || actor.last_name actor_name,
	count(film_actor.film_id) movie_count,
	sum(film.length) sum_of_minutes
from
	film_actor
inner join actor
	on film_actor.actor_id = actor.actor_id
inner join film
	on film.film_id = film_actor.film_id
group by
	actor_name
-- Used 'having' instead of 'where', as 'where' does not allow aggregate
-- functions. I believe they work practically the same way.
having
	count(film_actor.film_id) >= 35
order by
	sum_of_minutes desc;