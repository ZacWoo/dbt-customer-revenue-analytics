select
    1 as customer_id,
    'Zac' as first_name,
    'Austin' as city,
    current_timestamp() as created_at

union all

select
    2 as customer_id,
    'Sarah' as first_name,
    'Dallas' as city,
    current_timestamp() as created_at

union all

select
    3 as customer_id,
    'Mike' as first_name,
    'Miami' as city,
    current_timestamp() as created_at

