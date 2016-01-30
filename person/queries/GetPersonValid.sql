SELECT 
	valid
FROM
	Person
WHERE
	id = @person
	AND valid = 1;