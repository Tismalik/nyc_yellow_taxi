{% snapshot vehicle_list_snapshot %}

{{
    config(
      target_schema='main',
      unique_key='license_id',
      strategy='timestamp',
      updated_at='tpep_dropoff_datetime'
    )
}}

select * from {{ ref('taxi_rides_raw') }} where passenger_count > 1.0
{% endsnapshot %}
