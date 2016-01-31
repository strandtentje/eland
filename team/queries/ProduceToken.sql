SELECT
	CONCAT(A.section, " ", B.section, " ", C.section, " ", D.section) token
FROM
	(SELECT section, 1 AS fop FROM TokenSection ORDER BY RAND() LIMIT 1) AS A 
    JOIN
    (SELECT section, 1 AS fop FROM TokenSection ORDER BY RAND() LIMIT 1) AS B
    ON
    A.fop = B.fop
    JOIN
    (SELECT section, 1 AS fop FROM TokenSection ORDER BY RAND() LIMIT 1) AS C
    ON
    A.fop = C.fop
    JOIN
    (SELECT section, 1 AS fop FROM TokenSection ORDER BY RAND() LIMIT 1) AS D
    ON
    A.fop = D.fop;