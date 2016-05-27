SELECT 
	id,
	name,
	title,
	IFNULL(score, 0) AS score
FROM Prestatie
	LEFT JOIN (SELECT 
			SUM(Behaald.waarde) AS score, prestatie
		FROM
			Behaald
		WHERE
			team = @teamid AND (ISNULL(obsolete) OR obsolete > NOW())
		GROUP BY 
			prestatie
	) AS Behaald 
	ON Prestatie.id = Behaald.prestatie
WHERE
	NOW() >= starts AND (ISNULL(ends) OR ends > NOW())
ORDER BY 
	starts;
