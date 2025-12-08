with raw_orders as (
    select
        *
    from {{source('socialmedia', 'orders')}}
)
select
    orderid,
    orderdate,
    customerid,
    productid,
    quantity,
    totalamount,
    paymentmethod
from raw_orders