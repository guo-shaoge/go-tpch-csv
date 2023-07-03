#!/bin/bash
set -e
set -x

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 from_db_name to_db_name"
  exit 1
fi

mv tpch$1.customer-schema.sql tpch$2.customer-schema.sql
mv tpch$1.lineitem-schema.sql tpch$2.lineitem-schema.sql
mv tpch$1.nation-schema.sql   tpch$2.nation-schema.sql
mv tpch$1.orders-schema.sql   tpch$2.orders-schema.sql
mv tpch$1.part-schema.sql     tpch$2.part-schema.sql
mv tpch$1.partsupp-schema.sql tpch$2.partsupp-schema.sql
mv tpch$1.region-schema.sql   tpch$2.region-schema.sql
mv tpch$1-schema-create.sql   tpch$2-schema-create.sql
mv tpch$1.supplier-schema.sql tpch$2.supplier-schema.sql
