-- This table automatically becomes a physical table in your Gold dataset
select
    id as customer_id,
    concat(first_name, ' ', last_name) as full_name,
    email,
    phone,
    street_address,
    city,
    state,
    country
from {{ ref('stg_customers') }}
