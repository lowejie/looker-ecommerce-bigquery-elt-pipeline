-- Singular test to test for negative value in total sales amount in fact orders model
select
    *
from
    {{ref('fct_orders')}}
where
    total_sales_amount < 0