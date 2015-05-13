SELECT 
    Prestatie.id prestatie,
    SUM(TeamBehaald.waarde) aantal
FROM Prestatie LEFT JOIN (
    SELECT
        *
    FROM
        Behaald
    WHERE
        Behaald.team = @team AND Behaald.obsolete IS NULL) TeamBehaald ON
    TeamBehaald.prestatie = Prestatie.id
GROUP BY
    Prestatie.id;