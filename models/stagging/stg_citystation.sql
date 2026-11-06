select
    station_id,
    name       as station_name,
    latitude   as lat,
    longitude  as long,
    region_id,
    capacity
from {{ source('thelookecommerce_rawdata', 'citibike_stations') }}