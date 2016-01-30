SELECT
	value
FROM
	PersonAttribute
WHERE
	person = @person
	AND name = @name
ORDER BY id DESC LIMIT 1;