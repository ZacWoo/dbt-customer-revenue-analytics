select
    1001 as order_id,
    1 as customer_id,
    99.99 as order_amount,
    '2026-06-01'::date as order_date

union all

select
    1002 as order_id,
    1 as customer_id,
    149.99 as order_amount,
    '2026-06-03'::date as order_date

union all

select
    1003 as order_id,
    2 as customer_id,
    59.99 as order_amount,
    '2026-06-04'::date as order_date

union all

select
    1009 as order_id,
    2 as customer_id,
    89.99 as order_amount,
    '2026-06-02'::date as order_date

union all

select
    1004 as order_id,
    3 as customer_id,
    199.99 as order_amount,
    '2026-06-05'::date as order_date

union all

select
    1005 as order_id,
    3 as customer_id,
    49.99 as order_amount,
    '2026-06-07'::date as order_date

union all 

select
    1011 as order_id,
    1 as customer_id,
    99.99 as order_amount,
    '2026-06-02'::date as order_date

union all 

select
    1012 as order_id,
    1 as customer_id,
    149.99 as order_amount,
    '2026-06-03'::date as order_date
