UPDATE Prestatie
SET ends=NOW()
WHERE id=@id;