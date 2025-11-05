{{ config(
    materialized='table',
    schema=env_var('FINAL_SCHEMA'),
    database=env_var('FINAL_DB')
) }}

SELECT
    id AS customer_id,
    first_name,
    last_name
FROM {{ source('sales_raw', 'customers') }}
