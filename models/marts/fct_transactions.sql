with transactions as (
    select * from {{ ref('stg_transactions') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),

products as (
    select * from {{ ref('stg_products') }}
)

select
    t.transaction_id,
    t.order_id,
    o.customer_id as customer_key,
    t.payment_method_id as payment_method_key,
    t.transaction_status,
    -- Pull product configuration metadata to resolve transactional volume totals
    round(o.quantity * p.unit_price, 2) as amount_charged_usd,
    t.processed_at
from transactions t
left join orders o on t.order_id = o.order_id
left join products p on o.product_id = p.product_id
