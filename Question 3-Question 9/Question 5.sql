SELECT 
    t1.*
FROM
    (SELECT 
        supp.*, pro.products
    FROM
        (SELECT 
        COUNT(prod_id) AS products, supp_id
    FROM
        supplier_pricing
    GROUP BY SUPP_ID) AS pro
    INNER JOIN supplier AS supp ON supp.SUPP_ID = pro.SUPP_ID) AS t1
WHERE
    t1.products > 1;