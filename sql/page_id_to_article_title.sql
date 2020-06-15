CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `page_id_to_article_title` AS
    SELECT 
        `page`.`page_id` AS `page_id`,
        CAST(`page`.`page_title` AS CHAR (100) CHARSET UTF8) AS `page_title`
    FROM
        `page`