SELECT 
	id, name, title
FROM 
	Prestatie
WHERE
	(ISNULL(starts) OR (NOW() < starts)) AND (ISNULL(ends) OR (ends > NOW()));