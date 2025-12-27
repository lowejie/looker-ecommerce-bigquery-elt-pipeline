select
    *
from
    {{ref('fct_orders')}}
where
    total_sales_amount < 0