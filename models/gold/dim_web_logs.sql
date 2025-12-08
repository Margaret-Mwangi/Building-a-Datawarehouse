with web_logs as ( 
    select 
        timestamp,
        customerid,
        page,
        action
    from 
        {{ ref('web_logs_clean') }}
)
select * from web_logs