select
    customer_id,
    first_name,
    last_name,
    gender,
    birth_date,
    city,
    join_date
from {{ ref('stg_customers') }}
