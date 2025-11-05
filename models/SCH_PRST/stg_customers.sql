{{ config(
    materialized='view',
    schema=env_var('FINAL_SOURCE_SCHEMA'),
    database=env_var('FINAL_DB')
) }}

SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('customers') }}