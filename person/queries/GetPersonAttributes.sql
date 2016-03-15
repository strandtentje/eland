SELECT 
	Field.`name`,
    PersonAttribute.`value`
FROM Field
	JOIN PersonAttribute 
      ON Field.`name` = PersonAttribute.`name`
WHERE
	person = @person AND obsolete = 0
ORDER BY priority;