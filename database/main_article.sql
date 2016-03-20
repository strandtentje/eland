INSERT INTO Article(url) VALUES ('main');

INSERT INTO Body(article, summary, content, since)
VALUES(
	LAST_INSERT_ID(), 
	'The Cover LanCee and Quintor will be organising a crash-and-compile at Quintor headquarters, Ubbo Emmiussingel 112. The event will be held on a Wednesday, march 30th.', 
	'<p>\r\n	Join us for an evening of hammering the keyboard as you get hammered yourself. We have collected the finest of programming challenges for beginning programmers and more seasoned ones alike.\r\n</p>\r\n<p>\r\n	Food and beer is accounted for by Quintor. Bring your laptop and a team mate, furthermore your thinking cap- we\'ll supply the <a title=\"a horrible Rob pun™\">drinking tap</a> \r\n	<br><a class=\"signuplink\" href=\"/score\">echo \"onwards, comrade!\"</a>\r\n</p>\r\n', 
	'2016-03-13 13:26:01');


