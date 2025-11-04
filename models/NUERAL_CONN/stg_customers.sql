{{ config(
    materialized='view',
    schema=env_var('NUERAL_SCHEMA', 'NUERAL_CONN'),
    database=env_var('DB_NAME', 'JARVIS_MIND')
) }}

SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('customers') }}
