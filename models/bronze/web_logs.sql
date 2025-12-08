with raw_web_logs as (
    select
        *
    from {{ source('socialmedia', 'web_logs') }}
)
select
    timestamp,
    user_id,
    page,
    action
from raw_web_logs