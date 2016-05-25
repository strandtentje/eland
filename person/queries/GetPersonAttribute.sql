SELECT
	value
FROM
	PersonAttribute
WHERE
	person = @person
	AND name = @name
	AND obsolete = 0
ORDER BY id DESC LIMIT 1;
