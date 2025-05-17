select
  date_day as date,
  extract(dow from date_day) as day_of_week,
  extract(month from date_day) as month,
  extract(year from date_day) as year,
  case when extract(dow from date_day) in (6, 0) then true else false end as is_weekend
from {{ ref('stg_dates') }}
