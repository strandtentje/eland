SELECT `value` AS `to`
FROM PersonAttribute
WHERE 
	`name` = 'mailto' 
	AND person = @person
	AND obsolete = 0;