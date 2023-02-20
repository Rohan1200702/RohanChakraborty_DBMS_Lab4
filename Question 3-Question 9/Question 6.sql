
SELECT 
    t1.CAT_ID, t1.CAT_NAME, t1.PRO_NAME, MIN(supp.SUPP_PRICE) AS price
FROM
    (SELECT 
        pro.*, cat.CAT_NAME
    FROM
        product AS pro
    INNER JOIN (SELECT 
        *
    FROM
        category) AS cat ON pro.CAT_ID = cat.CAT_ID) AS t1
        INNER JOIN
    supplier_pricing AS supp ON t1.prod_id = supp.PROD_ID
GROUP BY CAT_NAME, CAT_ID;