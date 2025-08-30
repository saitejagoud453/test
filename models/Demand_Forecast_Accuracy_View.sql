select 
    PRODUCT_ID,
    STORE_ID,
    CATEGORY,
    WEATHER_CONDITIONS,
    sum(FORECASTED_DEMAND) as total_forecasted_demand,
    sum(ACTUAL_DEMAND) as total_actual_demand,
    sum(ACTUAL_DEMAND - FORECASTED_DEMAND) as total_forecast_error
from MY_DATABASE.DBT_SRUDRAGONI.WALMART
group by PRODUCT_ID, STORE_ID,CATEGORY,WEATHER_CONDITIONS