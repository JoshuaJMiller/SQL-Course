# movie title, number of times rented

select
	f.title as film_title, count(r.rental_id)
from
	film f, inventory i, rental r
where
	f.film_id = i.film_id
	and
	i.inventory_id = r.inventory_id
group by 
	1
;