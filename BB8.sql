#store 1's revenue generated from films rated R or PG-13 

select
	i.store_id as "Store", sum(p.amount) as "Revenue", f.rating as "Rating"
from
	film f, rental r, payment p, inventory i
where
	f.film_id = i.film_id
	and p.rental_id = r.rental_id
	and i.inventory_id = r.inventory_id
	and i.store_id = 1
    and f.rating in("PG-13", "R")
group by 
    3
order by 
    2 desc
;

#store 1's revenue generated from films rated R or PG-13 between 2005-06-08 and 2005-07-19

select
	i.store_id as "Store", sum(p.amount) as "Revenue", f.rating as "Rating"
from
	film f, rental r, payment p, inventory i
where
	f.film_id = i.film_id
	and p.rental_id = r.rental_id
	and i.inventory_id = r.inventory_id
	and i.store_id = 1
    and f.rating in("PG-13", "R")
    and r.rental_date between '2005-06-08' and '2005-07-19'
group by 
    3
order by 
    2 desc
;