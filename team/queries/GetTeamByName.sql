SELECT 
	*
FROM
	Team
WHERE
	title LIKE @value AND
	(ISNULL(obsolete) OR obsolete > NOW());