SELECT 
	Team.id AS teamid,
	Team.*,
	SUM(Behaald.waarde * IFNULL(Prestatie.multiplier, 1)) AS score
FROM
	Team
	LEFT JOIN
		Behaald
		ON 
			Team.id = Behaald.team
	LEFT JOIN
		Prestatie
		ON
			Behaald.prestatie = Prestatie.id
WHERE
	(ISNULL(Team.obsolete) OR Team.obsolete > NOW()) AND Team.entered < NOW()
GROUP BY Team.id
ORDER BY SUM(Behaald.waarde * IFNULL(Prestatie.multiplier, 1)) DESC;