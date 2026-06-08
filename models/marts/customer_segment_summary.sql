with customer_revenue as (

    select *
    from {{ ref('fct_customer_revenue') }}

),

segment_summary as (

    select
        customer_type,
        count(customer_id) as total_customers,
        sum(total_orders) as total_orders,
        sum(total_revenue) as total_revenue,
        avg(total_revenue) as avg_revenue_per_customer

    from customer_revenue

    group by
        customer_type

),

final as (

    select
        customer_type,
        total_customers,
        total_orders,
        total_revenue,
        avg_revenue_per_customer,
        round(
            total_revenue / sum(total_revenue) over () * 100,
            2
        ) as revenue_share_pct

    from segment_summary

)

select *
from final
