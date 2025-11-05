{{ config(
    materialized='table',
    schema=env_var('FINAL_SCHEMA','SCH_MART'),
    database=env_var('FINAL_DB','DB_DEV_ITDM_01')
) }}

SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
FROM {{ source('sales_raw', 'orders') }}
