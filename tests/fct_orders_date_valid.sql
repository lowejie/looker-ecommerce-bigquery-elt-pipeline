-- Singular test to test for dates later than current date and dates earlier than 1990-01-01
select
    *
from
    {{ref('fct_orders')}}
where
    date(order_date) > CURRENT_DATE()
    or date(order_date) < date('1990-01-01')