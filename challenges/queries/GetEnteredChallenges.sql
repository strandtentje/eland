SELECT 
	id, name, title, IFNULL(multiplier, 1) multiplier
FROM 
	Prestatie
WHERE
	NOW() >= starts AND (ISNULL(ends) OR ends > NOW())
ORDER BY 
	starts;