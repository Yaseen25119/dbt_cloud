{{ config(
    materialized='view',
    schema=env_var('FINAL_SOURCE_SCHEMA','SCH_PRST'),
    database=env_var('FINAL_DB','DB_DEV_ITDM_01')
) }}

SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('customers') }}