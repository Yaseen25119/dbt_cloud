{{ config(
    materialized='table',
    schema=env_var('FINAL_SCHEMA','SCH_MART'),
    database=env_var('FINAL_DB','DB_DEV_ITDM_01')
) }}

SELECT
    id AS customer_id,
    first_name,
    last_name
FROM {{ source('sales_raw', 'customers') }}
