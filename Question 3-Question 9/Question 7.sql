SELECT 
    T1.*, pro.PRO_NAME
FROM
    (SELECT 
        supp.PROD_ID
    FROM
        (SELECT 
        PRICING_ID
    FROM
        `order`
    WHERE
        ORD_DATE > '2021-10-05') AS ord
    INNER JOIN supplier_pricing AS supp ON ord.PRICING_ID = supp.PRICING_ID) AS T1
        INNER JOIN
    product AS pro ON T1.PROD_ID = pro.PROD_ID;