CREATE TABLE `supplier` (
  `S_SUPPKEY` bigint(20) NOT NULL,
  `S_NAME` char(25) NOT NULL,
  `S_ADDRESS` varchar(40) NOT NULL,
  `S_NATIONKEY` bigint(20) NOT NULL,
  `S_PHONE` char(15) NOT NULL,
  `S_ACCTBAL` decimal(15,2) NOT NULL,
  `S_COMMENT` varchar(101) NOT NULL,
  PRIMARY KEY (`S_SUPPKEY`) /*T![clustered_index] CLUSTERED */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
