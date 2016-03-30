INSERT INTO Behaald(team, prestatie, waarde, moment, author) 
VALUES(@team, @challenge, @score, NOW(), @username);