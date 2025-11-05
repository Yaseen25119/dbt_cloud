{{ config(
    materialized='view',
    schema=env_var('FINAL_SOURCE_SCHEMA', 'SCH_PRST'),
    database=env_var('FINAL_DB' , 'DB_DEV_ITDM_01')
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM {{ ref('orders') }}