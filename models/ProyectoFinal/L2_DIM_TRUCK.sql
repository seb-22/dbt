WITH raw_data AS (
    SELECT
        TRUCK_ID,
        TRUCK_BRAND_NAME,
        CAR_BRAND,
        MODEL,
        YEAR
    FROM {{ source('RAW_POS', 'TRUCK') }}
)

SELECT
    TRUCK_ID,
    TRUCK_BRAND_NAME,
    CAR_BRAND,
    MODEL,
    YEAR
FROM raw_data
