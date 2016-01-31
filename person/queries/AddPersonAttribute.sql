UPDATE PersonAttribute SET obsolete=1 WHERE person=@person AND name=@name AND id>0;
INSERT INTO PersonAttribute(person, name, value)
VALUES(@person, @name, @value);