{{ config(
    materialized='view',
    schema=env_var('FINAL_SOURCE_SCHEMA'),
    database=env_var('FINAL_DB')
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM {{ ref('orders') }}