SELECT 
	*
FROM
	Team
WHERE
	(ISNULL(obsolete) OR obsolete > NOW()) AND entered < NOW();