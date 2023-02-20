SELECT 
    t1.*, pro.pro_name AS product
FROM
    (SELECT 
        ord.*, sup.prod_id
    FROM
        `ORDER` AS ord
    INNER JOIN supplier_pricing AS sup ON ord.pricing_id = sup.pricing_id
    WHERE
        cus_id = 2) AS t1
        INNER JOIN
    product AS pro ON t1.PROD_ID = pro.PROD_ID;