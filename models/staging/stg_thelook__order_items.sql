-- Staging model for Order Items Table
select
-- Include surrogate key to have relationship with Orders Table
    {{
    dbt_utils.generate_surrogate_key([
        'order_id',
        'id'
    ])
    }} as order_item_key,
    order_id as order_key,
    user_id as customer_key,
    status as status_code,
    created_at as order_date,
    sale_price as price
from
-- References source from BigQuery Public Dataset TheLook Ecommerce Orders Table
    {{source('thelook', 'order_items')}}