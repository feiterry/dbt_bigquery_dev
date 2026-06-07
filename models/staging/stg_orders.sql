{{ config(alias='stg_orders') }}

with raw_orders as (
    -- Maps back to your existing customer IDs (1 through 20) and product IDs (101-105)
    select 5001 as order_id, 1 as customer_id, 101 as product_id, 1 as quantity, timestamp('2026-06-01 10:15:00') as order_timestamp union all
    select 5002 as order_id, 3 as customer_id, 103 as product_id, 2 as quantity, timestamp('2026-06-01 11:30:00') as order_timestamp union all
    select 5003 as order_id, 5 as customer_id, 102 as product_id, 1 as quantity, timestamp('2026-06-02 14:22:00') as order_timestamp union all
    select 5004 as order_id, 2 as customer_id, 105 as product_id, 1 as quantity, timestamp('2026-06-02 16:45:00') as order_timestamp union all
    select 5005 as order_id, 7 as customer_id, 104 as product_id, 1 as quantity, timestamp('2026-06-03 09:10:00') as order_timestamp union all
    select 5006 as order_id, 12 as customer_id, 101 as product_id, 1 as quantity, timestamp('2026-06-03 13:05:00') as order_timestamp union all
    select 5007 as order_id, 15 as customer_id, 103 as product_id, 3 as quantity, timestamp('2026-06-04 17:55:00') as order_timestamp union all
    select 5008 as order_id, 9 as customer_id, 102 as product_id, 1 as quantity, timestamp('2026-06-05 08:20:00') as order_timestamp union all
    select 5009 as order_id, 20 as customer_id, 104 as product_id, 2 as quantity, timestamp('2026-06-05 19:40:00') as order_timestamp union all
    select 5010 as order_id, 4 as customer_id, 105 as product_id, 1 as quantity, timestamp('2026-06-06 11:12:00') as order_timestamp
)

select 
    cast(order_id as int64) as order_id,
    cast(customer_id as int64) as customer_id,
    cast(product_id as int64) as product_id,
    cast(quantity as int64) as quantity,
    order_timestamp
from raw_orders
