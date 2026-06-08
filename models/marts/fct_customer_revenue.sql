with customer_orders as (

    select *
    from {{ ref('int_customer_orders') }}

),

customer_revenue as (

    select
        customer_id,
        first_name,
        city,

        count(order_id) as total_orders,
        sum(order_amount) as total_revenue,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,

        case
            when count(order_id) >= 2 then 'Repeat customer'
            when count(order_id) = 1 then 'One-time customer'
            else 'No orders'
        end as customer_type

    from customer_orders

    group by
        customer_id,
        first_name,
        city

)

select *
from customer_revenue
