with products_clean as (

    select
        productid,
        productname,
        product_category,
        stock_quantity,
        unit_price,
        dbt_valid_from,
        dbt_valid_to
    from {{ ref('products_snapshot') }}

)

select * from products_clean
where dbt_valid_to is null