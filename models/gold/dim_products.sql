with products as (
    select
        productid,
        productname,
        product_category,
        stock_quantity,
        unit_price
    from {{ ref('products_clean') }}
)

select
    productid,
    productname,
    product_category,
from products