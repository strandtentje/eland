SELECT
    id AS person,
	valid
FROM
	Person
WHERE
	id = @person
	AND valid = 0;
