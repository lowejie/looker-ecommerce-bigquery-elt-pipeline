-- models/staging/stg_tpch__lineitem.sql
select
    order_id as order_key,
    user_id as customer_key,
    status as status_code,
    num_of_item as item_amt,
    created_at as order_date
from
    {{source('thelook', 'orders')}}
