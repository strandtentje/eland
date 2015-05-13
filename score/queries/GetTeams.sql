SET @rank=0;
SELECT 
	@rank:=@rank+1 AS rank, 
	totaal.team team,
	totaal.naam naam,
	totaal.waarde totaal
FROM
	(SELECT
	    Team.id team,
	    Team.naam naam,
	    SUM(IFNULL(Behaald.waarde, 0)) waarde
	FROM
	    Behaald RIGHT JOIN Team ON
	    Behaald.team = Team.id
	WHERE
		Team.obsolete IS NULL
	GROUP BY
	    Team.id
	ORDER BY
	    SUM(Behaald.waarde) DESC) totaal;