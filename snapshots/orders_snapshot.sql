{% snapshot orders_snapshot %}

{{
    config(
    target_schema='DEV',
    unique_key='orderid',
    strategy='check',
    check_cols = ['order_quantity', 'total_amount']    
    )
}}

select
    orderid,
    cast(orderdate as date) as order_date,
    cast(date_trunc('hour', cast(orderDate as timestamp)) as time) as order_hour,
    customerid,
    productid,
    quantity as order_quantity,
    cast(totalamount as float) as total_amount,
    paymentmethod

from {{ ref('orders') }}
where orderid is not null

{%endsnapshot %}