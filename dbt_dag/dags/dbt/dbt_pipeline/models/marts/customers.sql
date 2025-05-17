select
    customer.customer_key,
    customer.customer_name,
    customer.address,
    customer.phone,
    nation.nation_name,
    region.region_name
from
    {{ ref('stg_customers')}} as customer
join 
    {{ ref('stg_nations')}} as nation
    on customer.nation_key = nation.nation_key
join 
    {{ ref('stg_regions')}} as region
    on nation.region_key = region.region_key