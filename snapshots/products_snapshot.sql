{% snapshot products_snapshot %}

{{
    config(
        target_schema='DEV',
        unique_key='productid',
        strategy='check',
        check_cols = ['unit_price', 'stock_quantity']
    )
}}

select
    productid,
    productname,
    category as product_category,
    cast(stock as int) as stock_quantity,
    cast(unitprice as float) as unit_price
from {{ ref('products') }}
where productid is not null


{% endsnapshot %}