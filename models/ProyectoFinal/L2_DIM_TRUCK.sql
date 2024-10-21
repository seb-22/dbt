WITH raw_data AS (
    SELECT
        TRUCK_ID,
        MAKE,
        MODEL,
        YEAR
    FROM {{ source('RAW_POS', 'TRUCK') }}
)

SELECT
    TRUCK_ID,
    MAKE,
    MODEL,
    YEAR
FROM raw_data
