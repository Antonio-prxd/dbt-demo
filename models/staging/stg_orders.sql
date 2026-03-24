with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as orders_id,
        customer as customer_id,
        ordered_at as orders_date
    from source
)
select * from renamed