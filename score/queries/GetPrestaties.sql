SELECT
	id as prestatie, naam, slug, max
FROM
	Prestatie
WHERE
	Prestatie.obsolete IS NULL;