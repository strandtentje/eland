UPDATE Team SET obsolete=NOW() WHERE id > 0 AND obsolete IS NULL;