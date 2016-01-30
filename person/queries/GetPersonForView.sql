SELECT
	PersonView.name,
	PersonAttribute.value
FROM
	PersonView
	LEFT JOIN 
		PersonAttribute
		ON PersonView.name = PersonAttribute.name
WHERE
	view = @view 
	AND person = @person
ORDER BY 
	position;