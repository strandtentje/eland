SELECT 
	SUM(waarde) score
FROM
	Behaald
WHERE
	(ISNULL(obsolete) OR (obsolete > NOW())) AND Behaald.team