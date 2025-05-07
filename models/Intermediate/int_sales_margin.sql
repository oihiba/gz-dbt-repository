SELECT (quantity*purchase_price)as purchase_cost,
(revenue-(quantity*purchase_price)) as margin,
FROM {{ ref('stg_gz_raw_data__raw_gz_sales')}} as sales
LEFT JOIN {{ ref("stg_gz_raw_data__raw_gz_product")}} as product
ON sales.products_id=product.products_id 
 