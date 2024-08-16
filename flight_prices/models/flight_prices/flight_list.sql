{{ config(materialized='table')}}

--select airline from {{source('raw','flight_prices')}}
select airline from {{ ref('flight_prices') }}