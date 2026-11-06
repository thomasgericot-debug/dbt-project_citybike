{% set start_date = var('start_date', '2018-01-01') %}

select
    tripduration                      as trip_duration_seconds,
    starttime                         as started_at,
    stoptime                          as stopped_at,
    cast(start_station_id as string)  as start_station_id,
    start_station_name,
    cast(end_station_id as string)    as end_station_id,
    end_station_name,
    bikeid                            as bike_id,
    usertype                          as user_type,
    birth_year,
    gender
from {{ source('thelookecommerce_rawdata', 'citibike_trips') }}
where date(starttime) >= date('{{ start_date }}')
  and tripduration > 0