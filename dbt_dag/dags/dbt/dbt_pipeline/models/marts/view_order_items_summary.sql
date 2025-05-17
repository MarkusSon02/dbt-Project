{{ config(materialized='view') }}

select
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(item_discount_amount) as total_item_discount_amount,
    sum(final_sales_amount) as total_final_sales_amount
from
    {{ ref('fct_order_items') }}
group by
    order_key