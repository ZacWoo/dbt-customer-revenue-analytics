with customers as (

    select *
    from {{ ref('stg_customers') }}

),

orders as (

    select *
    from {{ ref('stg_orders') }}

),

customer_orders as (

    select
        customers.customer_id,
        customers.first_name,
        customers.city,
        orders.order_id,
        orders.order_amount,
        orders.order_date

    from customers
    left join orders
        on customers.customer_id = orders.customer_id

)

select *
from customer_orders
