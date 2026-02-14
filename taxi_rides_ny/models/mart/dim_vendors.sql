with trips_unioned as
(
    select * from {{ref('int_trips_unioned')}}
),
--select * from trips_unioned,
vendors as 
(
    select distinct vendor_id,
    {{get_vendor_name('vendor_id')}} as get_vendor_name
    from trips_unioned
)
select * from vendors