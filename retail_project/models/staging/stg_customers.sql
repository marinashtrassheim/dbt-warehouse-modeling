select
    "CustomerID" as customer_id,
    "FirstName" as first_name,
    "LastName" as last_name,
    "Gender" as gender,
    "BirthDate" as birth_date,
    "City" as city,
    "JoinDate" as join_date
from {{ ref('customers') }}
