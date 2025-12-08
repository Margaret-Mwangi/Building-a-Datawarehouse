with raw_products as (
    select
        *
    from {{source('socialmedia', 'products')}}
)
select
    productid,
    productname,
    category,
    stock,
    unitprice
from raw_products