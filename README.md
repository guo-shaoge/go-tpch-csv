shell scripts for generating tpch-xxx using go-tpc.

1. Build go-tpc binary: git clone git@github.com:pingcap/go-tpc.git && cd go-tpc && make build
2. Start a tidb cluster for go-tpc to create schema: tiup playground v6.5.0 --without-monitor --tiflash 0
3. Start to generate CSV files of tpch-xxx: ./gen.sh GO_TPC_BIN SF
