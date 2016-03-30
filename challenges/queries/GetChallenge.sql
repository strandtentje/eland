SELECT 
	id, name, title, IFNULL(multiplier, 1) multiplier
FROM 
	Prestatie
WHERE
	id=@id;