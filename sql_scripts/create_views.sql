-- creation of 'country views' (some of them)

select * from sales;

-- create uk_sales view
create view uk_sales as 
select * 
from sales
where sales."Country" = 'United Kingdom';


-- create norway_sales view
create view norway_sales as 
select * 
from sales
where sales."Country" = 'Norway';


-- create france_sales view
create view france_sales as 
select * 
from sales
where sales."Country" = 'France';

-- create ireland_sales view
create view ireland_sales as 
select * 
from sales
where sales."Country" = 'Ireland';

-- create australia_sales view
create view australia_sales as 
select * 
from sales
where sales."Country" = 'Australia';

-- create germany_sales view
create view germany_sales as 
select * 
from sales
where sales."Country" = 'Germany';

























