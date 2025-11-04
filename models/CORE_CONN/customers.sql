{{ config(
    materialized='table',
    schema='CORE_CONN'
) }}

SELECT
    id AS customer_id,
    first_name,
    last_name
FROM SALES_DB.RAW.CUSTOMERS
