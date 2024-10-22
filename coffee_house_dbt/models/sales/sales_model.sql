-- models/sales_model.sql
WITH sales_data AS (
    SELECT
        order_id,
        customer_id,
        product_id,
        sale_date,
        sale_amount,
        region
    FROM
        raw_sales.sales_data
)
SELECT
    order_id,
    customer_id,
    product_id,
    sale_date,
    sale_amount,
    region,
    CASE
        WHEN sale_amount > 1000 THEN 'High Value'
        ELSE 'Regular'
    END AS sale_category
FROM sales_data
