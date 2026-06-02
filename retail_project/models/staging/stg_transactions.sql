select
    "TransactionID" as transaction_id,
    "Date" as transaction_date,
    "CustomerID" as customer_id,
    "ProductID" as product_id,
    "StoreID" as store_id,
    "Quantity" as quantity,
    "Discount" as discount,
    "PaymentMethod" as payment_method
from {{ ref('transactions') }}
