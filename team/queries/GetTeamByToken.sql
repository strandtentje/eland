SELECT
	title
FROM 
	Team
WHERE
	token LIKE @token AND
	(ISNULL(obsolete) OR obsolete > NOW())	