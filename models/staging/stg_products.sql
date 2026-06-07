{{ config(alias='stg_products') }}

with raw_products as (
    select 101 as product_id, 'Premium Wireless Headphones' as product_name, 'Electronics' as category, 149.99 as unit_price union all
    select 102 as product_id, 'Ergonomic Office Chair' as product_name, 'Furniture' as category, 249.50 as unit_price union all
    select 103 as product_id, 'Stainless Steel Water Bottle' as product_name, 'Home & Kitchen' as category, 24.99 as unit_price union all
    select 104 as product_id, '4K Ultra HD Monitor' as product_name, 'Electronics' as category, 329.99 as unit_price union all
    select 105 as product_id, 'Leather Crossbody Bag' as product_name, 'Apparel' as category, 85.00 as unit_price
)

select 
    cast(product_id as int64) as product_id,
    cast(product_name as string) as product_name,
    cast(category as string) as category,
    cast(unit_price as numeric) as unit_price
from raw_products
