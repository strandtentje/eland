SELECT 
	Team.id AS teamid,
	Team.*,
	SUM(Behaald.waarde) AS score
FROM
	Team
	LEFT JOIN
		Behaald
		ON 
			Team.id = Behaald.team
WHERE
	(ISNULL(Team.obsolete) OR Team.obsolete > NOW()) AND Team.entered < NOW()
GROUP BY Team.id
ORDER BY SUM(Behaald.waarde) DESC;