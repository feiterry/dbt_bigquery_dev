with orders as (
    select * from {{ ref('stg_orders') }}
),

products as (
    select * from {{ ref('stg_products') }}
)

select
    o.order_id,
    o.customer_id as customer_key,
    o.product_id as product_key,
    o.quantity as quantity_ordered,
    -- Compute business metric dynamically inside the core Fact table
    round(o.quantity * p.unit_price, 2) as gross_revenue_usd,
    o.order_timestamp
from orders o
left join products p on o.product_id = p.product_id
