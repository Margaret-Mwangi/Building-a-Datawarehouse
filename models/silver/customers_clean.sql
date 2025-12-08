with cleaned_customers as (

    select
        customerid,
        customer_firstname,
        customer_lastname,
        customer_email,
        customer_location,
        customer_signupdate,
        dbt_valid_from,
        dbt_valid_to
    from {{ ref('customers_snapshot') }}

)

select * from cleaned_customers
where dbt_valid_to is null