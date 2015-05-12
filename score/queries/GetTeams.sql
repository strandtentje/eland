SET @rank=0;
SELECT 
	@rank:=@rank+1 AS rank, 
	teams.*
FROM
	(SELECT
	    Behaald.team team,
	    Team.naam naam,
		SUM(Behaald.waarde) totaal
	FROM
		Behaald JOIN Team ON
	    Behaald.team = Team.id
	GROUP BY
	    Behaald.team
	ORDER BY
	    SUM(Behaald.waarde) DESC) teams;