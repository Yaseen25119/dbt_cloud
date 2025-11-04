{{ config(
    materialized='table',
    schema=env_var('CORE_SCHEMA', 'CORE_CONN'),
    database=env_var('DB_NAME', 'JARVIS_MIND')
) }}

SELECT
    id AS customer_id,
    first_name,
    last_name
FROM {{ source('sales_raw', 'customers') }}
