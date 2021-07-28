# what store has brought in the most revenue

SELECT
	i.store_id as "Store ID", sum(p.amount)	as "Total Sales"
FROM
	payment p, inventory i, rental r
WHERE
	p.rental_id = r.rental_id
	and
	r.inventory_id = i.inventory_id
GROUP BY
	1
ORDER BY
	1 desc
;