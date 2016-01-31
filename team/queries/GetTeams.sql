SELECT 
	*
FROM
	Team
WHERE
	(ISNULL(obsolete) OR obsolete > NOW())	