select
    "StoreID" as store_id,
    "StoreName" as store_name,
    "City" as city,
    "Region" as region
from {{ ref('stores') }}
