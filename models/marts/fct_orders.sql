-- Fact model for Orders
select
    orders.*,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.total_sales_amount
from
-- References Staging orders and Intermediate Order Items Summary
    {{ ref('stg_thelook__orders')}} as orders
join
    {{ ref('int_order_items_summary')}} as order_item_summary
        on orders.order_key = order_item_summary.order_key
order by
    order_date