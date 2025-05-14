select 
    SUPPLIER_ID,
    PRODUCT_ID,
    CATEGORY,
    avg(SUPPLIER_LEAD_TIME) as avg_lead_time
from {{source("snowflake","walmart")}}
group by SUPPLIER_ID, PRODUCT_ID, CATEGORY