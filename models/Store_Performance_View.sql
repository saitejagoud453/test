select 
    STORE_ID,
    STORE_LOCATION,
    avg(INVENTORY_LEVEL) as avg_inventory_level,
    avg(REORDER_POINT) as avg_reorder_point,
    avg(REORDER_QUANTITY) as avg_reorder_quantity,
    sum(case when STOCKOUT_INDICATOR then 1 else 0 end) as stockout_events
from {{source("snowflake","walmart")}}
group by STORE_ID, STORE_LOCATION