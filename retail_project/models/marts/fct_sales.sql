select
    t.transaction_id,
    t.transaction_date,
    t.customer_id,
    t.product_id,
    t.store_id,
    t.quantity,
    t.discount,
    t.payment_method,
    p.unit_price,
    p.cost_price,
    (t.quantity * p.unit_price) as gross_sales,
    (t.quantity * p.unit_price * t.discount / 100) as discount_amount,
    (t.quantity * p.unit_price * (100 - t.discount) / 100) as net_sales,
    (t.quantity * (p.unit_price - p.cost_price) * (100 - t.discount) / 100) as profit
from {{ ref('stg_transactions') }} t
left join {{ ref('stg_products') }} p on t.product_id = p.product_id
