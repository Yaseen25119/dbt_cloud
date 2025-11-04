{{ config(
    materialized='view',
    schema='NUERAL_CONN'
) }}

SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('customers') }}
