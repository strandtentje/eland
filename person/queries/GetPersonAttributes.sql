SELECT
	PersonView.`title`,
    PersonAttribute.`value`,
    locale
FROM PersonView
	JOIN PersonAttribute
      ON PersonView.`name` = PersonAttribute.`name`
WHERE
	person = @person
    AND obsolete = 0
    AND `view` = "confirmationmail"
    AND locale = @locale
ORDER BY position;
