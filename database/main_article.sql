INSERT INTO Article(url) VALUES ('main');

INSERT INTO Body(article, summary, content, since)
VALUES(
	LAST_INSERT_ID(), 
	'Lorem ipsum', 
	'Dolor', 
	'2016-03-13 13:26:01');


