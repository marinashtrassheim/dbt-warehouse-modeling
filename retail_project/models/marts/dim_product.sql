select
    product_id,
    product_name,
    category,
    subcategory,
    unit_price,
    cost_price
from {{ ref('stg_products') }}
