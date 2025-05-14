select 
    WEATHER_CONDITIONS,
    STORE_LOCATION,
    CATEGORY,
    sum(QUANTITY_SOLD) as total_quantity_sold
from {{source("snowflake","walmart")}}
group by WEATHER_CONDITIONS, STORE_LOCATION, CATEGORY