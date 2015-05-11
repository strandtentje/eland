SELECT 
    Prestatie.id id,
    COUNT(TeamBehaald.id) aantal
FROM Prestatie LEFT JOIN (
    SELECT
        *
    FROM
        Behaald
    WHERE
        Behaald.team = @team) TeamBehaald ON
    TeamBehaald.prestatie = Prestatie.id
GROUP BY
    Prestatie.id;