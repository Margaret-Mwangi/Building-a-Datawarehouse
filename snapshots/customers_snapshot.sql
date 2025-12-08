{% snapshot customers_snapshot %}

{{
    config(
        target_schema='DEV',
        unique_key='customerid',
        strategy='check',
        check_cols = ['customer_email', 'customer_location']    
        )
}}

select
    customerid,
    split_part(customername, ' ', 1) as customer_firstname,
    split_part(customername, ' ', 2) as customer_lastname,
    email as customer_email,
    location as customer_location,
    cast(signupdate as date) as customer_signupdate
from {{ ref('customers') }}
where customerid is not null

{% endsnapshot %}