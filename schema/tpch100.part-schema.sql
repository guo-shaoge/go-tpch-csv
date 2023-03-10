CREATE TABLE `part` (
  `P_PARTKEY` bigint(20) NOT NULL,
  `P_NAME` varchar(55) NOT NULL,
  `P_MFGR` char(25) NOT NULL,
  `P_BRAND` char(10) NOT NULL,
  `P_TYPE` varchar(25) NOT NULL,
  `P_SIZE` bigint(20) NOT NULL,
  `P_CONTAINER` char(10) NOT NULL,
  `P_RETAILPRICE` decimal(15,2) NOT NULL,
  `P_COMMENT` varchar(23) NOT NULL,
  PRIMARY KEY (`P_PARTKEY`) /*T![clustered_index] CLUSTERED */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
