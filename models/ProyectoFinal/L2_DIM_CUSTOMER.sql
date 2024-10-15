WITH raw_data AS (
    SELECT
        CUSTOMER_ID,
        FIRST_NAME,
        LAST_NAME,
        COUNTRY,
        CITY,
        GENDER,
        EMAIL
    FROM {{ source('RAW_CUSTOMER', 'CUSTOMER_LOYALTY') }}
)

SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    COALESCE(FIRST_NAME, '') || ' ' || COALESCE(LAST_NAME, '') AS FULL_NAME,
    COUNTRY,
    CITY,
    GENDER,
    EMAIL
FROM raw_data
