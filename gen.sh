#!/bin/sh
set -e
set -x

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 go-tpc_binary sf"
    exit 1
fi

GO_TPC_BIN=$1
SF=$2

TIDB_HOST="127.0.0.1"
TIDB_PORT=4000
TIDB_STATUS_PORT=10080

# You need to start tidb first.
# tiup playground nightly --tiflash 0 --without-monitor --db.host ${TIDB_HOST} --db.port ${TIDB_PORT}
echo "start to generate tpch${SF} CSV using ${GO_TPC_BIN}, output dir is: ./tpch${SF}"
${GO_TPC_BIN} tpch prepare --sf ${SF} --output-dir ./tpch${SF} --output-type csv --db "tpch${SF}"  -T 20 -H ${TIDB_HOST} -P ${TIDB_PORT} -S ${TIDB_STATUS_PORT}
cd schema && sh ./rename.sh 100 ${SF} && cp *.sql ../tpch${SF} && sh ./rename.sh ${SF} 100 && cd ..
