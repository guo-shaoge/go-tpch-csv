CREATE TABLE `customer` (
  `C_CUSTKEY` bigint(20) NOT NULL,
  `C_NAME` varchar(25) NOT NULL,
  `C_ADDRESS` varchar(40) NOT NULL,
  `C_NATIONKEY` bigint(20) NOT NULL,
  `C_PHONE` char(15) NOT NULL,
  `C_ACCTBAL` decimal(15,2) NOT NULL,
  `C_MKTSEGMENT` char(10) NOT NULL,
  `C_COMMENT` varchar(117) NOT NULL,
  PRIMARY KEY (`C_CUSTKEY`) /*T![clustered_index] CLUSTERED */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
