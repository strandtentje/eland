INSERT INTO Team(title, token) VALUES("New team", @token);
SELECT title FROM Team WHERE id = LAST_INSERT_ID();