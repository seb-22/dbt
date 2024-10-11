WITH SRC AS (
    SELECT * FROM {{ source('pos', 'franchise') }}
),
TRANSFORMED AS (
    SELECT
        FRANCHISE_ID,
        FIRST_NAME AS OWNER_FIRST_NAME,
        LAST_NAME AS OWNER_LAST_NAME,
        CITY AS OWNER_CITY,
        COUNTRY AS OWNER_COUNTRY,
        E-MAIL AS EMAIL,
        PHONE_NUMBER
    FROM SRC
    )

SELECT * FROM TRANSFORMED
