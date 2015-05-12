SELECT
	SUM(Behaald.waarde) aantal
FROM
	Behaald
WHERE
	Behaald.team = @team;