with raw_customers as (
    select
        *
    from {{source('socialmedia', 'customers')}}
)
select
    customerid,
    customername,
    email,
    location,
    signupdate
from raw_customers