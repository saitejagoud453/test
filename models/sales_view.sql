select 
    STORE_ID,
    CATEGORY,
    PRODUCT_ID,
    sum(QUANTITY_SOLD) as total_quantity_sold,
    sum(QUANTITY_SOLD * UNIT_PRICE) as total_sales_amount,
    count(distinct TRANSACTION_ID) as transaction_count,
    TRANSACTION_DATE
from {{source("snowflake","walmart")}}
group by STORE_ID, CATEGORY, PRODUCT_ID, TRANSACTION_DATE