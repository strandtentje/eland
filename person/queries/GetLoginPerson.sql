SELECT
	*
FROM
	Login 
	JOIN Person ON Login.person = Person.id
WHERE
	Login.id = @login;