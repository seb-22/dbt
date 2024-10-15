WITH raw_data AS (
    SELECT
        MENU_ID,
        MENU_TYPE_ID,
        MENU_TYPE,
        TRUCK_BRAND_NAME,
        MENU_ITEM_ID,
        MENU_ITEM,
        NAME,
        ITEM_CATEGORY,
        ITEM_SUBCATEGORY,
        COST_OF_GOODS_USD,
        SALE_PRICE_USD,
        MENU_ITEM_HEALTH_METRIC_OBJ
    FROM {{ source('RAW_POS', 'MENU') }}
)

SELECT
    MENU_ID,
    MENU_TYPE_ID,
    MENU_TYPE,
    TRUCK_BRAND_NAME,
    MENU_ITEM_ID,
    MENU_ITEM,
    NAME,
    ITEM_CATEGORY,
    ITEM_SUBCATEGORY,
    COST_OF_GOODS_USD,
    SALE_PRICE_USD,
    MENU_ITEM_HEALTH_METRIC_OBJ
FROM raw_data
