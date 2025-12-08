with reviews_clean as (
    select
        {{ dbt_utils.generate_surrogate_key(['timestamp', 'customer_id', 'product_id']) }} as reviewid,
        cast(timestamp as timestamp) as review_timestamp,
        customer_id as customerid,
        product_id as productid,
        cast(rating as int) as product_rating,
        lower(trim(review_text)) as review_comment
    from
        {{ ref('reviews') }}
    where
        timestamp is not null
        and customer_id is not null
        and product_id is not null
)

select * from reviews_clean