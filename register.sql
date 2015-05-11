INSERT INTO Persoon(voornaam, tussenvoegsel, achternaam, email)
VALUES(@voornaam, @tussenvoegsel, @achternaam, @post);
SELECT LAST_INSERT_ID() id;