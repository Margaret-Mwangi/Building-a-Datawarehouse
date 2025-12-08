with customers as (
    select
        customerid,
        customer_firstname,
        customer_lastname,
        customer_email,
        customer_location,
        customer_signupdate
    from {{ ref('customers_clean') }}
),

orders as (
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
),

products as (
    select
        productid,
        productname,
        product_category,
        stock_quantity,
        unit_price
    from {{ ref('products_clean') }}
)

select
    {{ dbt_utils.generate_surrogate_key(['o.orderid','p.productid','c.customerid']) }} as sales_pk,
    o.orderid,
    c.customerid,
    c.customer_signupdate,
    p.productid,
    p.unit_price,
    o.order_quantity,
    o.total_amount,
    o.order_date,
    o.order_hour
from customers c
join orders o
    on c.customerid = o.customerid
join products p
    on o.productid = p.productid