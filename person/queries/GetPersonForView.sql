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
			PersonAttribute 
		WHERE 
			person = @person) AS PersonAttribute
		ON PersonView.name = PersonAttribute.name
        
WHERE
	view = @view
ORDER BY 
	position;