select airline,
       count(*)
--from flight_prices
from {{ ref('flight_prices') }}
where departure_time = 'Morning'
group by airline
order by airline