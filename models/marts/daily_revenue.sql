with orders as (

    select *
    from {{ ref('stg_orders') }}

),

daily_revenue as (

    select
        order_date,
        count(order_id) as total_orders,
        sum(order_amount) as total_revenue,
        avg(order_amount) as average_order_value

    from orders

    group by
        order_date

)

select *
from daily_revenue
