with socialmedia_sentiments_clean as ( 
    select 
        cast(timestamp as timestamp) as timestamp,
        platform,
        lower(trim(content)) as content,
        sentiment,
    from 
        {{ ref('socialmedia_sentiments') }}
    where 
        platform is not null
        and sentiment in ('positive', 'negative', 'neutral')
)   

select * from socialmedia_sentiments_clean