{{ config(
    materialized='table',
    schema='CORE_CONN'
) }}

SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
FROM SALES_DB.RAW.ORDERS
