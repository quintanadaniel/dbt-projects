select *
from {{ ref('flight_prices') }}
where departure_time = 'Night'
