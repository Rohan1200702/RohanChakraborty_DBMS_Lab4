INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES')),
(2,"TSHIRT","SIZE-L with Black, Blue and White variations",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS')),
(4,"OATS","Highly Nutritious from Nestle",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES')),
(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS')),
(6,"MILK","1L Toned MIlk",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES')),
(7,"Boat EarPhones","1.5Meter long Dolby Atmos",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS')),
(8,"Jeans","Stretchable Denim Jeans with various sizes and color",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(9,"Project IGI","compatible with windows 7 and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES')),
(10,"Hoodie","Black GUCCI for 13 yrs and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS')),
(12,"Train Your Brain","By Shireen Stephen",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS'));