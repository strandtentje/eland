SELECT
	PersonView.name,
	PersonAttribute.value
FROM
	PersonView
	LEFT JOIN 
		(SELECT
			PersonAttribute.name,
			PersonAttribute.value
		FROM
			(SELECT 			
				MAX(id) id
			FROM 
				PersonAttribute 
			WHERE 
				person = @person
			GROUP BY
				PersonAttribute.name) AS LatestAttribute
			LEFT JOIN 
				PersonAttribute
				ON LatestAttribute.id = PersonAttribute.id) AS PersonAttribute
		ON PersonView.name = PersonAttribute.name
        
WHERE
	view = @view
ORDER BY 
	position;