{{ config(
    materialized='view',
    schema='NUERAL_CONN'
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM {{ ref('orders') }}
