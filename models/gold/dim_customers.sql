with customers as (
    select
        customerid,
        customer_firstname,
        customer_lastname,
        customer_email,
        customer_location
    from {{ ref('customers_clean') }}
)

select * from customers