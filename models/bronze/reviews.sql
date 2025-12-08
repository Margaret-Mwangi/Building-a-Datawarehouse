with raw_reviews as (
    select
        *
    from {{source('socialmedia', 'reviews')}}
)
select
    timestamp,
    customer_id,
    product_id,
    rating,
    review_text
from raw_reviews