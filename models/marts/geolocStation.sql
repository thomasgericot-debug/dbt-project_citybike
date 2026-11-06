{{ config(materialized='table') }}

select
    station_id,
    latitude  as lat,
    longitude as long
from {{ source('thelookecommerce_rawdata', 'citibike_stations') }}

