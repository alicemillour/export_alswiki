CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `elsassisch_not_ort_pages` AS
    SELECT 
        `elsassisch_pages`.`article_id` AS `article_id`
    FROM
        `elsassisch_pages`
    WHERE
        (NOT (EXISTS( SELECT 
                `als_ort_pages`.`article_id`
            FROM
                `als_ort_pages`
            WHERE
                (`elsassisch_pages`.`article_id` = `als_ort_pages`.`article_id`))))