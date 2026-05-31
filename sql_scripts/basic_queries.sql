select * from sales;


-- no. of orders and total amount per country 
select "Country", count("InvoiceNo") as "no. of orders", round(sum("TotalAmount")::numeric, 2) as "total amount"
from sales
group by "Country"
order by "total amount" desc;


-- no. od orders and total amount per customer
-- note: an 'order' consists of many invoices.
select "CustomerID", count(distinct "InvoiceNo") as "no. of orders", round(sum("TotalAmount")::numeric, 2) as "total amount"
from sales
group by "CustomerID"
order by "no. of orders" desc;


select count(distinct "Description") 
from sales;

select count("InvoiceNo")
from sales;


-- which item sold the most
select "StockCode", "Description", sum("Quantity") as "quantity sold"
from sales
group by "StockCode", "Description"
order by "quantity sold" desc;


-- which item brought in the most money
select "StockCode", "Description", sum("TotalAmount") as "total amount"
from sales
group by "StockCode", "Description"
order by "total amount" desc









