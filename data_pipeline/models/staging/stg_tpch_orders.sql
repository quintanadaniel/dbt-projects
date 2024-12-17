SELECT
    o_orderkey AS order_key,
    o_customer AS customer_key,
    o_orderstatus AS order_status,
    o_totalprice AS total_price,
    o_orderdate AS order_date
FROM
    {{ source('tpch', 'orders') }}