INSERT INTO GroupGrant(groupname,resource,subresource,action)
VALUES ("guest","self",NULL,"create"),
("guest","session",NULL,"create"),
("user","session","","delete"),
("guest","wiki","main","view"),
("user","wiki","main","view"),
("admin","*","*","*"),
("user","self","","modify"),
("user","self","","view"),
("user","ownteam","*","*");