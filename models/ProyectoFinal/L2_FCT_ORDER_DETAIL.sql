-- models/L2_FCT_ORDER_DETAIL.sql

WITH raw_data AS (
    SELECT
        ORDER_DETAIL_ID,
        CUSTOMER_ID,
        TRUCK_ID,
        PRODUCT_ID,
        UNIT_PRICE,
        QUANTITY
    FROM {{ source('RAW_POS', 'ORDER_DETAIL') }}
)

SELECT
    ORDER_DETAIL_ID,
    CUSTOMER_ID,
    TRUCK_ID,
    PRODUCT_ID,
    UNIT_PRICE,
    QUANTITY
FROM raw_data
