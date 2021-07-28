select
	count(film_id), rating, rental_rate
from
	film
group by 2
;