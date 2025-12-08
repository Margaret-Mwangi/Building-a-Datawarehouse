with orders_clean as (

    select
        orderid,
        order_date,
        order_hour,
        customerid,
        productid,
        order_quantity,
        total_amount,
        paymentmethod,
        dbt_valid_from,
        dbt_valid_to

    from {{ ref('orders_snapshot') }}
    where order_quantity > 0


)

select * from orders_clean
where dbt_valid_to is null