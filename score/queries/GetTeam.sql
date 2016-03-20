SELECT 
	Team.id, Team.title
FROM
	(SELECT DISTINCT
		`value` AS token
	FROM
		PersonAttribute
	JOIN Person ON PersonAttribute.person = Person.id
	WHERE
		obsolete = 0 AND `name` = 'token'
			AND valid = 1) TokenList
	JOIN Team ON TokenList.token = Team.token
	WHERE
		ISNULL(obsolete) OR (obsolete > NOW())