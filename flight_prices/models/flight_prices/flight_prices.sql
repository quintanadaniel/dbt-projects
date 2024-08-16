-- Modify the following line to change the materialization type
{{ config(materialized='view')}}

with flight_prices as (
    select * from read_csv('/Users/danielquintana/personal_projects/python-bigdata/flight-price-prediction-python-ml/Clean_Dataset.csv')
)

select * from {{source('raw','flight_prices')}}
