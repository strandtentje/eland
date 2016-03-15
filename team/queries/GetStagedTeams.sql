SELECT 
	*
FROM
	Team
WHERE
	(ISNULL(obsolete) OR obsolete > NOW()) AND (ISNULL(entered) OR entered >= NOW());