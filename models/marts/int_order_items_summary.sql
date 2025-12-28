-- Intermediate model for Order Items Summary
select
    order_key,
    sum(price) as gross_item_sales_amount,
    sum(total_sales_amount) as total_sales_amount
from
-- References intermediate order items model
    {{ ref('int_order_items')}}
group by
    order_key