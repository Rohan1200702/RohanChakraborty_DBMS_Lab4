SELECT 
    COUNT(t1.CUS_GENDER) AS NoOfCustomers, t1.CUS_GENDER AS Gender
FROM
    (SELECT 
        cus.CUS_GENDER
    FROM
        customer AS cus
    INNER JOIN `ORDER` AS ord ON ord.CUS_ID = cus.CUS_ID
    WHERE
        ord.ORD_AMOUNT >= 3000
    GROUP BY cus.CUS_GENDER , ord.ORD_AMOUNT) AS t1
GROUP BY t1.CUS_GENDER;

