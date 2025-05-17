select
    c_custkey as customer_key,
    c_name as customer_name,
    c_address as address,
    c_nationkey as nation_key,
    c_phone as phone
from
    {{ source('tpch', 'customer')}}