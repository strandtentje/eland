INSERT INTO PersonView(view,name,title,position)
VALUES ("overview","firstname",NULL,NULL),
("overview","lastname",NULL,NULL),
("overview","phone",NULL,NULL),
("overview","mailto",NULL,NULL),
("simple","firstname",NULL,NULL),
("extended","mailto",NULL,NULL),
("confirmationmail","firstname","First name","0"),
("confirmationmail","lastname","Last name","1"),
("confirmationmail","mailto","E-mail address","2"),
("confirmationmail","phone","Phone number","3"),
("confirmationmail","token","Team token","4");

INSERT INTO PersonView(view,name,title,position,locale)
VALUES
("confirmationmail","firstname","Voornaam","0","nl"),
("confirmationmail","lastname","Achternaam","1","nl"),
("confirmationmail","mailto","E-mailadres","2","nl"),
("confirmationmail","phone","Telefoonnummer","3","nl"),
("confirmationmail","token","Teamsleutel","4","nl");

INSERT INTO PersonView(view,name,title,position,locale,hint)
VALUES
("registration","firstname","Voornaam","0","en","required"),
("registration","lastname","Achternaam","1","en","required"),
("registration","mailto","E-mailadres","2","en","required@e-mailaddress.tld"),
("registration","phone","Telefoonnummer","3","en","1800-enternumber"),
("registration","token","Teamsleutel","4","en","Token if available");

INSERT INTO PersonView(view,name,title,position,locale,hint)
VALUES
("registration","firstname","Voornaam","0","nl", "vereist"),
("registration","lastname","Achternaam","1","nl", "vereist"),
("registration","mailto","E-mailadres","2","nl", "vereist@e-mailadres.tld"),
("registration","phone","Telefoonnummer","3","nl", "06-invullen"),
("registration","token","Teamsleutel","4","nl", "Teamsleutel mits beschikbaar");
