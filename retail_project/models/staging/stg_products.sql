select
    "ProductID" as product_id,
    "ProductName" as product_name,
    "Category" as category,
    "SubCategory" as subcategory,
    "UnitPrice" as unit_price,
    "CostPrice" as cost_price
from {{ ref('products') }}
