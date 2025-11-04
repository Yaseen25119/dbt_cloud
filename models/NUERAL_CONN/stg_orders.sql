{{ config(
    materialized='view',
    schema=env_var('NUERAL_SCHEMA', 'NUERAL_CONN'),
    database=env_var('DB_NAME', 'JARVIS_MIND')
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM {{ ref('orders') }}
