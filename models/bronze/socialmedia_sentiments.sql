with raw_social_media_sentiments as (
    select
        *
    from {{source('socialmedia', 'social_media_sentiments')}}
)
select
    timestamp,
    platform,
    content,
    sentiment
from raw_social_media_sentiments