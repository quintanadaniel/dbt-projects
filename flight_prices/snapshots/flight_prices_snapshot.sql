{% snapshot flight_prices_snapshot %}

{{
    config(
      target_schema='main',
      unique_key='id',
      strategy='timestamp',
      updated_at='last_updated'
    )
}}

select * from {{ source('raw','flight_prices')}}
{% endsnapshot %}
