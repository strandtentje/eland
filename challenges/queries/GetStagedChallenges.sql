SELECT 
	id, name, title, IFNULL(multiplier, 1) multiplier
FROM 
	Prestatie
WHERE
	(ISNULL(starts) OR (NOW() < starts)) AND (ISNULL(ends) OR (ends > NOW()));