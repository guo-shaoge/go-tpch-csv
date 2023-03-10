#!/bin/bash
set -e
set -x

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 from_db_name to_db_name"
  exit 1
fi

mv $1.customer-schema.sql $2.customer-schema.sql
mv $1.lineitem-schema.sql $2.lineitem-schema.sql
mv $1.nation-schema.sql   $2.nation-schema.sql
mv $1.orders-schema.sql   $2.orders-schema.sql
mv $1.part-schema.sql     $2.part-schema.sql
mv $1.partsupp-schema.sql $2.partsupp-schema.sql
mv $1.region-schema.sql   $2.region-schema.sql
mv $1-schema-create.sql   $2-schema-create.sql
mv $1.supplier-schema.sql $2.supplier-schema.sql
