-- Intermediate model for Order Items Table
select
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    orders.item_amt,
    order_items.order_item_key,
    order_items.status_code,
    order_items.price,
-- Column added using macros (code with repeated usage)
    {{ total_sale_amount('orders.item_amt', 'order_items.price') }} as total_sales_amount
from
-- References both staging orders and order items models
    {{ ref('stg_thelook__orders') }} as orders
join
    {{ ref('stg_thelook__order_items') }} as order_items
        on orders.order_key = order_items.order_key
order by
    orders.order_date
