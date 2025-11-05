{{ config(
    materialized='table',
    schema=env_var('FINAL_SCHEMA'),
    database=env_var('FINAL_DB')
) }}

SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
FROM {{ source('sales_raw', 'orders') }}
