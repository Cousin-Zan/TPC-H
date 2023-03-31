CREATE TABLE tpch.orders
(O_ORDERKEY BIGINT,
O_CUSTKEY INT,
O_ORDERSTATUS "char" :MARS2_ENCODING_MINMAX,
O_TOTALPRICE float8,
O_ORDERDATE DATE :MARS2_ENCODING_MINMAX,
O_ORDERPRIORITY TEXT :MARS2_ENCODING_MINMAX,
O_CLERK TEXT,
O_SHIPPRIORITY INTEGER,
O_COMMENT TEXT)
:LARGE_STORAGE
:DISTRIBUTED_BY
PARTITION BY RANGE (O_ORDERDATE)
(start('1992-01-01') INCLUSIVE end ('1998-12-31') INCLUSIVE every (interval '1 year'),
default partition others);
:CREATE_MARS2_BTREE_INDEX;
