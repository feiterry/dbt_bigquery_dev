{{ config(alias='stg_transactions') }}

with raw_transactions as (
    -- Simulates financial transactions matching order IDs. 
    -- Features 1 declined payment to demonstrate financial analysis modeling.
    select 9001 as transaction_id, 5001 as order_id, 'PM01' as payment_method_id, 'success' as status, timestamp('2026-06-01 10:16:00') as processed_at union all
    select 9002 as transaction_id, 5002 as order_id, 'PM02' as payment_method_id, 'success' as status, timestamp('2026-06-01 11:32:00') as processed_at union all
    select 9003 as transaction_id, 5003 as order_id, 'PM03' as payment_method_id, 'success' as status, timestamp('2026-06-02 14:23:00') as processed_at union all
    -- Customer 2 initially declined, then used a different card successfully (9004 and 9005)
    select 9004 as transaction_id, 5004 as order_id, 'PM01' as payment_method_id, 'declined' as status, timestamp('2026-06-02 16:46:00') as processed_at union all
    select 9005 as transaction_id, 5004 as order_id, 'PM03' as payment_method_id, 'success' as status, timestamp('2026-06-02 16:48:00') as processed_at union all
    select 9006 as transaction_id, 5005 as order_id, 'PM01' as payment_method_id, 'success' as status, timestamp('2026-06-03 09:12:00') as processed_at union all
    select 9007 as transaction_id, 5006 as order_id, 'PM02' as payment_method_id, 'success' as status, timestamp('2026-06-03 13:06:00') as processed_at union all
    select 9008 as transaction_id, 5007 as order_id, 'PM01' as payment_method_id, 'success' as status, timestamp('2026-06-04 17:56:00') as processed_at union all
    select 9009 as transaction_id, 5008 as order_id, 'PM04' as payment_method_id, 'success' as status, timestamp('2026-06-05 08:25:00') as processed_at union all
    select 9010 as transaction_id, 5009 as order_id, 'PM01' as payment_method_id, 'success' as status, timestamp('2026-06-05 19:42:00') as processed_at union all
    select 9011 as transaction_id, 5010 as order_id, 'PM03' as payment_method_id, 'success' as status, timestamp('2026-06-06 11:15:00') as processed_at
)

select 
    cast(transaction_id as int64) as transaction_id,
    cast(order_id as int64) as order_id,
    cast(payment_method_id as string) as payment_method_id,
    cast(status as string) as transaction_status,
    processed_at
from raw_transactions
