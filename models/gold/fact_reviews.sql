with reviews as (
    select 
        reviewid,
        review_timestamp,
        customerid,
        productid,
        product_rating,
        review_comment
    from 
        {{ ref('reviews_clean') }}
)

select * from reviews