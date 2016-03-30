SELECT 
	Behaald.waarde AS score,
    DATE_FORMAT(Behaald.moment, '%H:%i') AS `timestamp`,
    Behaald.author AS author,
    Team.title AS teamname,
    Prestatie.`name` AS challengeurl,
    Prestatie.title AS challengetitle
FROM 
	Behaald
    LEFT JOIN Team 
		ON Behaald.team = Team.id
	LEFT JOIN Prestatie
		ON Behaald.prestatie = Prestatie.id
ORDER BY 
	moment DESC
LIMIT 75;
    