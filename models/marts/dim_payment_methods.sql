select
    payment_method_id as payment_method_key,
    payment_method_name,
    is_digital_wallet
from {{ ref('stg_payment_methods') }}
