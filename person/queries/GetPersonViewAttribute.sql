SELECT
    title,
	value
FROM
    PersonAttribute
    JOIN PersonView
        ON PersonAttribute.`name` = PersonView.`name`
       AND PersonView.`view` = @personview
       AND PersonView.`locale` = @locale
WHERE
	person = @person
	AND PersonAttribute.`name` = @name
	AND obsolete = 0
ORDER BY PersonAttribute.id DESC LIMIT 1;
