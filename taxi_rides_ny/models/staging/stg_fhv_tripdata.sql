with source as (
    select * from {{ source('raw_data', 'fhv_tripdata_2019') }}
)select count(*) record_count  from source
where dispatching_base_num is not null