ALTER TABLE `Body`
ADD COLUMN `mimetype` VARCHAR(45) NULL DEFAULT 'text/html' COMMENT '' AFTER `title`;
