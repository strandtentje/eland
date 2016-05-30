SELECT
	name
FROM
	PersonView
WHERE
	view LIKE @view
ORDER BY
	position;
