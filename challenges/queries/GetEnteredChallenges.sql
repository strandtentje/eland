SELECT 
	id, name, title
FROM 
	Prestatie
WHERE
	NOW() >= starts AND (ISNULL(ends) OR ends > NOW())
ORDER BY 
	starts;