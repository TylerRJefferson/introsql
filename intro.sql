-- NOTES APPLY TO pgAdmin APP


-- SELECT productionname, customerid FROM ORDERS 
-- WHERE CUSTOMERID = 2 
-- AND CREATE_TIME > '2022-01-01';

-- ABOVE CAN BE ON ONE LINE, ALSO CAN HIGHLIGHT PORTIONS TO ONLY RUN THAT DATA, EVEN WHILE COMMENTED OUT

-- SELECT * FROM ORDERS WHERE CUSTOMERID != 2

SELECT * FROM customers inner join orders on customers.customerid = orders.customerid -- everything matching
SELECT * FROM customers full join  orders on customers.customerid = orders.customerid -- all 
SELECT * FROM customers left join  orders on customers.customerid = orders.customerid -- care about customers only
SELECT * FROM customers right join orders on customers.customerid = orders.customerid -- care about orders only


SELECT * FROM customers full join  orders on customers.customerid = orders.customerid
ORDER BY CUSTOMERS.CUSTOMERID --all orders and customers in order of customer id


-- INSERT INTO ORDERS (CREATE_TIME, PRODUCTIONNAME, CUSTOMERID) VALUES ('2022-10-22','iphone',5)


UPDATE CUSTOMERS SET NAME= '' WHERE CUSTOMERID = 4

SELECT * FROM CUSTOMERS ORDER BY CUSTOMERS.CUSTOMERID
-- * means everything

/*
THIS IS A 
COMMENT TOO
*/