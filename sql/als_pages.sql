CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `elsassisch_pages` AS
    SELECT DISTINCT
        CAST(`categorylinks`.`cl_from` AS CHAR (100) CHARSET UTF8) AS `article_id`,
        CAST(`categorylinks`.`cl_to` AS CHAR (100) CHARSET UTF8) AS `category_name`
    FROM
        `categorylinks`
    WHERE
        (CAST(`categorylinks`.`cl_to` AS CHAR (100) CHARSET UTF8) LIKE 'Artikel_uf_Elsassisch%')