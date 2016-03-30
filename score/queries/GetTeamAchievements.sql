SELECT 
	id, name, title, IFNULL(score, 0)
FROM Prestatie
	LEFT JOIN (SELECT 
			Behaald.waarde AS score,
			team, prestatie
		FROM
			Behaald
		WHERE
			team = @id AND obsolete > NOW()
	) AS Behaald 
	ON Prestatie.id = Behaald.prestatie
WHERE
	NOW() >= starts AND (ISNULL(ends) OR ends > NOW())
ORDER BY 
	starts;