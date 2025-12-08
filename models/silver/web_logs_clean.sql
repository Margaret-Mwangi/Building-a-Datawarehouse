with web_logs_clean as (
    select
        timestamp,
        user_id as customerid,
        page,
        action
    from {{ ref('web_logs') }}
    where user_id is not null
      and page is not null
)

select * from web_logs_clean