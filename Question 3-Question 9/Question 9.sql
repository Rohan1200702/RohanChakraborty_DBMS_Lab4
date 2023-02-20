drop procedure if exists `supplierDetails`;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SupplierDetails`()
BEGIN
select t3.SUPP_ID, t3.SUPP_NAME, avg(rat.RAT_RATSTARS) as average,
CASE
	WHEN avg(rat.RAT_RATSTARS) =5 THEN 'Excellent Service'
    	WHEN avg(rat.RAT_RATSTARS) >4 THEN 'Good Service'
    	WHEN avg(rat.RAT_RATSTARS) >2 THEN 'Average Service'
    	ELSE 'Poor Service'
 end as Type_of_service from rating as rat inner join 
(select t2.*, ord.ORD_ID from `order` as ord inner join 
(select t1.*, sup.PRICING_ID FROM supplier_pricing as sup inner join 
(select SUPP_ID, SUPP_NAME from supplier) as t1 on sup.SUPP_ID = t1.SUPP_ID) as t2 on ord.PRICING_ID = t2.PRICING_ID) 
AS t3 on rat.ORD_ID = t3.ORD_ID group by t3.SUPP_ID;
END$$

DELIMITER ;

call SupplierDetails();