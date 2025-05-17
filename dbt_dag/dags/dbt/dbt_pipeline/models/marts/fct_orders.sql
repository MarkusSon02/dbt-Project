select
    orders.*,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.total_item_discount_amount,
    order_item_summary.total_final_sales_amount
from
    {{ ref('stg_orders') }} as orders
join
    {{ ref('view_order_items_summary') }} as order_item_summary
    on orders.order_key = order_item_summary.order_key
order by order_date