select
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
    {{source('thelook', 'order_items')}}