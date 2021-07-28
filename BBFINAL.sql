/*

--Customer's first rental month (cohort)

select
	p.customer_id,
	left(min(p.payment_date), 7)
from
	payment p
group by 1
;

--Monthly revenue by customer

*/

select
	c.cohort,
	period_diff(extract(YEAR_MONTH from p.payment_date), c.cohort) as "relative_month_of_revenue",
	sum(p.amount) as "payment_amount"
from
	(
		select
			p.customer_id,
			extract(YEAR_MONTH from min(p.payment_date)) as "cohort"
		from
			payment p
		group by 1		
	) c
	join payment p
	on c.customer_id = p.customer_id
group by
	1,
	2
order by 
	1, 
	2
;