# number of distinct films rented each month

select
	left(r.rental_date, 7) as "Month", count(i.inventory_id), count(distinct i.film_id) 	
from
	rental r, inventory i
where
	r.inventory_id = i.inventory_id
group by
	1
;