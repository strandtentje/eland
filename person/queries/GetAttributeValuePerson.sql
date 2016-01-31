SELECT
	DISTINCT person
FROM
	PersonAttribute
WHERE
	name = @name
	AND value = @value
	AND obsolete = 0;