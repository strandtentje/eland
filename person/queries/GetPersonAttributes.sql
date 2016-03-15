SELECT 
	PersonView.`name`,
    PersonAttribute.`value`
FROM PersonView
	JOIN PersonAttribute 
      ON PersonView.`name` = PersonAttribute.`name`
WHERE
	person = @person AND obsolete = 0 AND `view` = "confirmationmail"
ORDER BY position;