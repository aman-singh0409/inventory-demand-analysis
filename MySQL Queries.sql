create database test_env;
use test_env;

select * from products;
select * from testenviroment;

ALTER TABLE testenviroment 
CHANGE `Product ID` product_id VARCHAR(50);

ALTER TABLE products 
CHANGE `Product ID` product_id VARCHAR(50);

SELECT DISTINCT product_id 
FROM testenviroment;

SET SQL_SAFE_UPDATES = 0;

UPDATE testenviroment
SET `Order Date (DD/MM/YYYY)` = STR_TO_DATE(`Order Date (DD/MM/YYYY)`, '%d-%m-%Y');

ALTER TABLE testenviroment 
CHANGE `Order Date (DD/MM/YYYY)` order_date DATE;

select distinct availability from testenviroment;

ALTER TABLE products 
CHANGE `Product Name` product_name VARCHAR(50);

ALTER TABLE products 
CHANGE `Unit Price ($)` unit_price VARCHAR(50);

------------------------------------------------------------------
select a.order_date, a.product_id, a.availability, a.demand, b.product_name, b.unit_price
 from testenviroment as a left join products as b on a.product_id=b.product_id;
 --------------------------------------------------------------------------------------------------
 use test_env;
 CREATE TABLE New_Table AS
SELECT a.order_date, a.product_id, a.availability, a.demand, 
       b.product_name, b.unit_price
FROM testenviroment AS a
LEFT JOIN products AS b 
ON a.product_id = b.product_id;

------------------------------------------------------------------------
select * from New_Table;


---------------------------------------------------------------------------

create database prod;
use prod;


select * from `prod+env+inventory+dataset`;


UPDATE `prod+env+inventory+dataset`
SET `Order Date (DD/MM/YYYY)` = STR_TO_DATE(`Order Date (DD/MM/YYYY)`, '%d-%m-%Y');

ALTER TABLE `prod+env+inventory+dataset` 
CHANGE `Order Date (DD/MM/YYYY)` order_date DATE;

select distinct order_date from `prod+env+inventory+dataset`
where order_date is null;

ALTER TABLE `prod+env+inventory+dataset` 
CHANGE `Product ID` product_id VARCHAR(50);

select distinct product_id from `prod+env+inventory+dataset`;

update `prod+env+inventory+dataset` 
set product_id=7 where product_id=21;

update `prod+env+inventory+dataset` 
set product_id=11 where product_id=22;

ALTER TABLE `products+(1)` 
CHANGE `Product ID` product_id VARCHAR(50);

ALTER TABLE `products+(1)` 
CHANGE `Product Name` product_name VARCHAR(50);

ALTER TABLE `products+(1)`
CHANGE `Unit Price ($)` unit_price VARCHAR(50);



----------------------------------------------------------------------------------------
use prod;
 DROP TABLE IF EXISTS New_table;

CREATE TABLE New_table AS
SELECT 
    a.order_date,
    CAST(TRIM(a.product_id) AS CHAR) AS product_id,
    a.availability,
    a.demand,
    b.product_name,
    b.unit_price
FROM `prod+env+inventory+dataset` AS a
LEFT JOIN `products+(1)` AS b
ON CAST(TRIM(a.product_id) AS CHAR) = CAST(TRIM(b.product_id) AS CHAR);

select * from new_table;


---------------------------------------------------------------------
use test_env;
select * from new_table;

use prod;
select * from new_table;