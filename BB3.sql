# film name, category, and language (3 tables)

SELECT
	film.title, category.name as categor_name, language.name as language_name
FROM
	 film, category, film_category, language
WHERE
	film.film_id = film_category.film_id
	and
	category.category_id = film_category.category_id
	and
	film.language_id = language.language_id
	;