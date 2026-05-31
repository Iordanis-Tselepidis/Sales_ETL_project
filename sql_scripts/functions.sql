-- function that accepts a country and returns the total sales
create or replace function get_total_sales_by_country(country TEXT)
returns NUMERIC
language sql
as $$
    select ROUND(SUM("TotalAmount")::numeric, 2)
    from sales
    where "Country" = country;
$$;



-- function that accepts a country and returns the average of the total amount
create or replace function avg_order_value_by_country(p_country text)
returns numeric
language sql
as $$
    select avg("TotalAmount")
    from sales
    where "Country" = p_country;
$$;

