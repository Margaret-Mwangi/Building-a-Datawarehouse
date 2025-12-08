with socialmedia_sentiments as ( 
    select 
        timestamp,
        platform,
        content,
        sentiment
    from 
        {{ ref('socialmedia_sentiments_clean') }}
)

select * from socialmedia_sentiments