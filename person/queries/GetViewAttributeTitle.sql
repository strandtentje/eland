SELECT title
FROM   PersonView
WHERE  `name` = @name
  AND  `view` = @personview
  AND  `locale` = @locale
