SELECT
    {{
        dbt_utils.generate_surrogate_key([
            'l_orderkey',
            'l_linenumber'
        ])
    }} AS order_key_item,
    l_orderkey AS order_key,
    l_partkey AS part_key,
    l_linenumber AS linen_umber,
    l_quantity AS quantity,
    l_extendedprice AS extended_price,
    l_discount AS discount,
    l_tax AS tax_rate
FROM
    {{ source('tpch', 'lineitem') }}