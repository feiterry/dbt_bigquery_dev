{{ config(alias='stg_payment_methods') }}

with raw_payments as (
    select 'PM01' as payment_method_id, 'Credit Card' as payment_method_name, true as is_digital union all
    select 'PM02' as payment_method_id, 'PayPal' as payment_method_name, true as is_digital union all
    select 'PM03' as payment_method_id, 'Apple Pay' as payment_method_name, true as is_digital union all
    select 'PM04' as payment_method_id, 'Bank Transfer' as payment_method_name, false as is_digital
)

select 
    cast(payment_method_id as string) as payment_method_id,
    cast(payment_method_name as string) as payment_method_name,
    cast(is_digital as boolean) as is_digital_wallet
from raw_payments
