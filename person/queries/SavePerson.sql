UPDATE Person
SET 
	firstname = @firstname,
	lastname = @lastname,
	phone = @phone,
	mailto = @mailto
WHERE
	id = @person;