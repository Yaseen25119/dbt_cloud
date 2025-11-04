{{ config(
    materialized='table',
    schema=env_var('CORE_SCHEMA', 'CORE_CONN'),
    database=env_var('DB_NAME', 'JARVIS_MIND')
) }}

SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
FROM {{ source('sales_raw', 'orders') }}
