SELECT 
	id AS attributeid
FROM 
	PersonAttribute
WHERE
	person = @person 
	AND name = @name
	AND obsolete = 0
	AND value = @value
LIMIT 1;