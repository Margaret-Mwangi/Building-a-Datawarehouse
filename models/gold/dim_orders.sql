with orders as (
    select
        orderid,
        order_date,
        order_hour,
        customerid,
        productid,
        order_quantity,
        total_amount,
        paymentmethod
    from {{ ref('orders_clean') }}
)

select
    orderid,
    paymentmethod
from orders