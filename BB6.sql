# each customers last rental date

select
	r.customer_id, concat(c.first_name, " ", c.last_name) as "Customer Name", max(left(r.rental_date, 7)) as "Last Rental Date"
from
	rental r, customer c
where
	r.customer_id = c.customer_id
group by
	1
order by
	3 desc
;

# revenue by month

select
	sum(p.amount), left(p.payment_date, 7)
from 
	payment p
group by
	2
order by
	2 desc