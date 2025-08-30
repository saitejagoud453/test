select 
    HOLIDAY_INDICATOR,
    CATEGORY,
    TRANSACTION_DATE,
    sum(QUANTITY_SOLD) as total_quantity_sold
from {{source("snowflake","walmart")}}
group by HOLIDAY_INDICATOR, CATEGORY, TRANSACTION_DATE