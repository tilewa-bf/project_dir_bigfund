

CREATE TABLE `balance_tbl` (
  `bal_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `total_payable` double(10,2) DEFAULT '0.00',
  `balance_amount` double(10,2) DEFAULT '0.00',
  `status` varchar(20) DEFAULT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`bal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1839 DEFAULT CHARSET=latin1;

INSERT INTO balance_tbl VALUES("1826","117304","45978114","Balogun Adenike Toyosi","Isholiki","24000.00","0.00","Confirmed","2024-01-08");
INSERT INTO balance_tbl VALUES("1824","154758","87447813","Abanise Titilayo ","Precious","24000.00","0.00","Confirmed","2023-12-25");
INSERT INTO balance_tbl VALUES("1827","470194","89986940","KOLADE OREOFE ANU","Precious","59800.00","0.00","Confirmed","2024-02-17");
INSERT INTO balance_tbl VALUES("1828","229893","65208195","Gbenle ABIODUN BOLUWATIFE","Precious","47840.00","0.00","Confirmed","2024-02-16");
INSERT INTO balance_tbl VALUES("1829","470194","34810718","KOLADE OREOFE ANU","Precious","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1830","229893","50330615","Gbenle ABIODUN BOLUWATIFE","","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1831","229893","48751756","Gbenle ABIODUN BOLUWATIFE","","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1832","470194","56713634","KOLADE OREOFE ANU","Precious","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1833","470194","93393573","KOLADE OREOFE ANU","Precious","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1834","609550","37131747","ODEWOLE ABIODUN BOLUWATIFE","Precious","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1835","516003","33715027","Fadeyibi Moses Elijah","","119600.00","0.00","Confirmed","2024-02-18");
INSERT INTO balance_tbl VALUES("1836","609550","86809499","ODEWOLE ABIODUN BOLUWATIFE","","59800.00","0.00","Confirmed","2024-02-25");
INSERT INTO balance_tbl VALUES("1837","609550","94508973","ODEWOLE ABIODUN BOLUWATIFE","","179400.00","0.00","Confirmed","2024-03-01");
INSERT INTO balance_tbl VALUES("1838","609550","94508973","ODEWOLE ABIODUN BOLUWATIFE","","179400.00","0.00","Confirmed","2024-03-01");



CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `creation_date` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

INSERT INTO bank VALUES("122","445139","SEUNFUNMI IYABO ADEOLA","","","2024-03-01 13:08:40","");
INSERT INTO bank VALUES("121","788361","ODEWOLE ABIODUN BOLUWATIFE","UNITY BANK","0104012919","2024-02-25 18:58:51","");
INSERT INTO bank VALUES("120","536736","AKINLADE ABIODUN CUBANA","","","2024-02-24 22:13:24","");
INSERT INTO bank VALUES("119","835165","AKINLADE ABIODUN BABATUNDE","","","2024-02-24 22:11:19","");
INSERT INTO bank VALUES("118","731665","AKINLADE GBENGA CUBANA","","","2024-02-24 22:03:39","");
INSERT INTO bank VALUES("117","302242","AKINLADE ABIODUN ASELOLA","","","2024-02-24 21:56:50","");
INSERT INTO bank VALUES("116","056999","ATANSUYI JOSHUA BABATUNDE","GUARANTY TRUST BANK","0141843112","2024-02-24 21:51:48","ATANSUYI JOSHUA");
INSERT INTO bank VALUES("114","516003","Fadeyibi Moses Elijah","","","2024-02-18 22:14:52","");
INSERT INTO bank VALUES("113","609550","ODEWOLE ABIODUN BOLUWATIFE","ZENITH BANK","0104012919","2024-02-18 22:07:34","");



CREATE TABLE `branch_tbl` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(100) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `creation_dt` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO branch_tbl VALUES("10","ABULEEGBA","ABULE EGBA","Active","undelete","Atansuyi emmanuel","2023-05-02","2023-05-02 08:54:09pm","Atansuyi emmanuel","2023-05-02","2023-05-02 08:54:39pm");
INSERT INTO branch_tbl VALUES("9","OKEARO","OKE ARO","Active","undelete","Atansuyi emmanuel","2023-03-20","2023-03-20 07:17:28pm","Atansuyi emmanuel","2023-03-20","2023-03-20 07:30:30pm");



CREATE TABLE `dailysaving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(6) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `othername` varchar(25) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bvn` varchar(11) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `res_address` varchar(225) DEFAULT NULL,
  `bus_address` varchar(225) DEFAULT NULL,
  `kin_name` varchar(225) DEFAULT NULL,
  `kin_phone` varchar(11) DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `kin_address` varchar(225) DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `creation_dt` varchar(255) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `upd` date DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `status2` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

INSERT INTO dailysaving VALUES("101","357504","ademola","saheed","tunji","09198989898","BUSINESS","Male","13123213213","Ajayi Adedoyin","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","SEUN ADEGOKE","09198989898","SISTER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","Admin Admin","2024-02-01","2024-02-01 03:16:46pm","","","","undelete","Active");
INSERT INTO dailysaving VALUES("100","419208","Gbenle","Taophic","BOLUWATIFE","09090909909","ROAD WORKER","Female","13123213213","Oyaosho Folakemi","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","SEUN ADEGOKE","09090909909","SISTER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","Admin Admin","2024-01-30","2024-01-30 06:32:52pm","","","","undelete","Active");
INSERT INTO dailysaving VALUES("99","280621","YUSUF","DAMILOLA","ARIDUNU","09092992222","STUDENT","Female","19999999990","Alago Chidera","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","SEUN ADEGOKE","09092992222","SISTER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","Admin Admin","2024-01-30","2024-01-30 10:22:49am","","","","undelete","Active");



CREATE TABLE `dailysaving2` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_acc` varchar(6) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `othername` varchar(25) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `upd` date DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO dailysaving2 VALUES("9","273975","Ik","Chukwu","Ik","08039777768","Male","Chidera","2023-07-03","","Alago Chidera","","undelete");
INSERT INTO dailysaving2 VALUES("10","779204","ADEGBOYEGA","ILORI","JAMES","09029929229","Male","Alago Chidera","2023-09-24","","Admin Admin","","undelete");



CREATE TABLE `dailysavingsmaster_tbl` (
  `dsm_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `cust_acc` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `entry_type` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `confirm_by` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`dsm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

INSERT INTO dailysavingsmaster_tbl VALUES("220","1627871520230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","rev. of cash wtd.","N/A","XC","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 10:02:42 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("219","1721256820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","2500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 09:59:34 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("218","1280637020230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","cash wtd","N/A","CW","Debit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 07:46:38 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("217","1117660520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","reversal entry of m. charges- 066564","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 12:05:13 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("216","1356511820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 12:02:13 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("215","1782854020230102","475071","MRS ADEWALE NA","ABOSEDE","2000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 11:35:51 am");
INSERT INTO dailysavingsmaster_tbl VALUES("210","1966341620230102","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 10:26:50 am");
INSERT INTO dailysavingsmaster_tbl VALUES("214","1778247120230102","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 11:36:13 am");
INSERT INTO dailysavingsmaster_tbl VALUES("211","1153805220230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash withdrawal","N/A","CW","Debit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 10:28:24 am");
INSERT INTO dailysavingsmaster_tbl VALUES("221","1659079220230104","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-04","2023-01-04 01:07:18 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("213","1043596520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 10:31:17 am");
INSERT INTO dailysavingsmaster_tbl VALUES("212","1999592320230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash deposit","N/A","XC","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-03","2023-01-02 10:29:53 am");
INSERT INTO dailysavingsmaster_tbl VALUES("222","1826355520230115","475071","MRS ADEWALE NA","ABOSEDE","1000.00","dep","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-15","2023-01-15 01:40:56 am");
INSERT INTO dailysavingsmaster_tbl VALUES("223","1490352520230123","475071","MRS ADEWALE NA","ABOSEDE","1000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-23","2023-01-23 09:29:50 am");
INSERT INTO dailysavingsmaster_tbl VALUES("224","1846041220230225","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","ds deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:38 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("225","1938334820230225","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:56 pm");
INSERT INTO dailysavingsmaster_tbl VALUES("226","1912494620230325","475071","MRS ADEWALE NA","ABOSEDE","1000.00","loan repayment","N/A","CD","Credit","Cash","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-03-25","2023-03-25 08:24:44 pm");



CREATE TABLE `data_entry_tbl` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `cust_acc` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `entry_type` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `status3` varchar(10) DEFAULT NULL,
  `post_by` varchar(255) NOT NULL,
  `confirm_by` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `checked` varchar(15) NOT NULL DEFAULT 'unchecked',
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

INSERT INTO data_entry_tbl VALUES("305","1490352520230123","475071","MRS ADEWALE NA","ABOSEDE","1000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-23","2023-01-23 09:29:50 am","");
INSERT INTO data_entry_tbl VALUES("304","1826355520230115","475071","MRS ADEWALE NA","ABOSEDE","1000.00","dep","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-15","2023-01-15 01:40:56 am","");
INSERT INTO data_entry_tbl VALUES("303","1665079320230111","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","N/A","CD","Credit","Cash","Processing","delete","moved","Atansuyi emmanuel","","2023-01-11","2023-01-11 10:07:45 am","");
INSERT INTO data_entry_tbl VALUES("302","1331716420230111","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash dep.","N/A","CD","Credit","Cash","Processing","delete","moved","Atansuyi emmanuel","","2023-01-11","2023-01-11 09:00:38 am","");
INSERT INTO data_entry_tbl VALUES("301","1659079220230104","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-04","2023-01-04 01:07:18 pm","");
INSERT INTO data_entry_tbl VALUES("300","1627871520230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","rev. of cash wtd.","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:02:42 pm","");
INSERT INTO data_entry_tbl VALUES("299","1721256820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","2500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 09:59:34 pm","");
INSERT INTO data_entry_tbl VALUES("298","1280637020230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","cash wtd","N/A","CW","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 07:46:38 pm","");
INSERT INTO data_entry_tbl VALUES("297","1117660520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","reversal entry of m. charges- 066564","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:05:13 pm","");
INSERT INTO data_entry_tbl VALUES("295","1778247120230102","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:36:13 am","");
INSERT INTO data_entry_tbl VALUES("296","1356511820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:02:13 pm","");
INSERT INTO data_entry_tbl VALUES("294","1782854020230102","475071","MRS ADEWALE NA","ABOSEDE","2000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:35:51 am","");
INSERT INTO data_entry_tbl VALUES("293","1043596520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:31:17 am","");
INSERT INTO data_entry_tbl VALUES("292","1999592320230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash deposit","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:29:53 am","");
INSERT INTO data_entry_tbl VALUES("291","1153805220230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash withdrawal","N/A","CW","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:28:24 am","");
INSERT INTO data_entry_tbl VALUES("290","1966341620230102","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:26:50 am","");
INSERT INTO data_entry_tbl VALUES("306","1846041220230225","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","ds deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:38 pm","");
INSERT INTO data_entry_tbl VALUES("307","1938334820230225","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:56 pm","");



CREATE TABLE `deposit_savings_tbl` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `account_number` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `debit` double(10,2) DEFAULT NULL,
  `credit` double(10,2) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `entry_type` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `status3` varchar(10) DEFAULT NULL,
  `post_by` varchar(255) NOT NULL,
  `confirm_by` varchar(255) DEFAULT NULL,
  `confirm_dt` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `checked` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;

INSERT INTO deposit_savings_tbl VALUES("443","17927620240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","500.00","500.00","WTD","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:50:06pm","2024-02-28","2024-02-28 04:47:55pm","");
INSERT INTO deposit_savings_tbl VALUES("442","17927620240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","500.00","0.00","500.00","WTD","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:50:06pm","2024-02-28","2024-02-28 04:47:55pm","");
INSERT INTO deposit_savings_tbl VALUES("441","18247120240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","1000.00","1000.00","WTD.","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:49:58pm","2024-02-28","2024-02-28 04:47:30pm","");
INSERT INTO deposit_savings_tbl VALUES("440","18247120240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","1000.00","0.00","1000.00","WTD.","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:49:58pm","2024-02-28","2024-02-28 04:47:30pm","");
INSERT INTO deposit_savings_tbl VALUES("439","16324720240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","2500.00","0.00","2500.00","dep","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:49:50pm","2024-02-28","2024-02-28 04:42:57pm","");
INSERT INTO deposit_savings_tbl VALUES("438","16324720240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","2500.00","2500.00","dep","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:49:50pm","2024-02-28","2024-02-28 04:42:57pm","");
INSERT INTO deposit_savings_tbl VALUES("435","12370520240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","1500.00","0.00","1500.00","dep.","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:39:34pm","2024-02-28","2024-02-28 04:34:40pm","");
INSERT INTO deposit_savings_tbl VALUES("429","14461420240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","1000.00","0.00","1000.00","Dep.","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:28:36pm","2024-02-28","2024-02-28 04:20:08pm","");
INSERT INTO deposit_savings_tbl VALUES("432","12472120240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","500.00","0.00","500.00","wtd","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:40:07pm","2024-02-28","2024-02-28 04:27:40pm","");
INSERT INTO deposit_savings_tbl VALUES("433","12472120240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","500.00","500.00","wtd","NA","CW","Debit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:40:07pm","2024-02-28","2024-02-28 04:27:40pm","");
INSERT INTO deposit_savings_tbl VALUES("434","12370520240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","1500.00","1500.00","dep.","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:39:34pm","2024-02-28","2024-02-28 04:34:40pm","");
INSERT INTO deposit_savings_tbl VALUES("437","12561920240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","2500.00","0.00","2500.00","dep","NA","CD","Credit","Cash","Processing","delete","unmove","ATANSUYI JOSHUA","","","2024-02-28","2024-02-28 04:42:25pm","");
INSERT INTO deposit_savings_tbl VALUES("436","12561920240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","2500.00","2500.00","dep","NA","CD","Credit","Cash","Processing","delete","unmove","ATANSUYI JOSHUA","","","2024-02-28","2024-02-28 04:42:25pm","");
INSERT INTO deposit_savings_tbl VALUES("430","18826220240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","1000.00","1000.00","DEP","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:28:46pm","2024-02-28","2024-02-28 04:26:16pm","");
INSERT INTO deposit_savings_tbl VALUES("431","18826220240228","100467","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","1000.00","0.00","1000.00","DEP","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:28:46pm","2024-02-28","2024-02-28 04:26:16pm","");
INSERT INTO deposit_savings_tbl VALUES("428","14461420240228","609550","ODEWOLE ABIODUN BOLUWATIFE","Atansuyi Joshua","0.00","1000.00","1000.00","Dep.","NA","CD","Credit","Cash","Confirmed","undelete","unmove","ATANSUYI JOSHUA","ATANSUYI JOSHUA","2024-02-28 04:28:36pm","2024-02-28","2024-02-28 04:20:08pm","");



CREATE TABLE `festive` (
  `fe_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(6) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price_per_day` double(10,2) DEFAULT NULL,
  `monthly_price` double(10,2) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `res_address` varchar(225) DEFAULT NULL,
  `kin_name` varchar(225) DEFAULT NULL,
  `kin_phone` varchar(11) DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `kin_address` varchar(225) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `upd` date DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `status2` varchar(11) NOT NULL,
  PRIMARY KEY (`fe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

INSERT INTO festive VALUES("297","231964","MOYOSORE ADEPEGBA","08027580601","Male","Category 1","100.00","3100.00","Oyaosho Folakemi","AJAYI BUS STOP, MATOGBUN ROAD, IFO, OGUN STATE","YUSUF GABRIEL","08027580601","BROTHER","AJAYI BUS STOP, MATOGBUN ROAD, IFO, OGUN STATE","2024-02-03","2024-02-04","Admin Admin","Admin Admin","2024-02-04 01:36:04pm","undelete","Inactive");
INSERT INTO festive VALUES("296","952385","ADERIBIGBE ADENIYI","08128989898","Male","Category 2","150.00","4650.00","Oyaosho Folakemi","AJAYI BUS STOP, MATOGBUN ROAD, IFO, OGUN STATE","IKUMAPAYI IYABODE","08128989898","BROTHER","AJAYI BUS STOP, MATOGBUN ROAD, IFO, OGUN STATE","2024-02-03","","Admin Admin","","","undelete","Inactive");
INSERT INTO festive VALUES("295","107653","Atansuyi Joshua Babatunde","07048032566","Male","Category 1","100.00","3100.00","Ajayi Adedoyin","ALADURA BUS STOP, MATOGHUN ROAD, OKE-ARO, LAGOS STATE.","ATANSUYI IYABODE","07048032566","BROTHER","SAME AS ABOVE","2024-01-22","2024-01-23","Admin Admin","Admin Admin","2024-01-23 02:56:16pm","undelete","Inactive");
INSERT INTO festive VALUES("298","761785","AKINSANYA TITILOPE","09022282882","Female","Category 1","100.00","3100.00","Alago Chidera","IDI-OSAN MATOGHUN ROAD, VIA OKE-ARO,OGUN STATE","ABOSEDE KAROUNWI","09022282882","MOTHER","SAME AS  ABOVE","2024-02-04","","Admin Admin","","","undelete","Inactive");
INSERT INTO festive VALUES("299","477007","AKINSANYA ADENIKE","07098989898","Female","Category 2","150.00","4650.00","Alago Chidera","IDI-OSAN MATOGHUN ROAD, VIA OKE-ARO,OGUN STATE","ABOSEDE KAROUNWI","07098989898","MOTHER","IDI-OSAN MATOGHUN ROAD, VIA OKE-ARO,OGUN STATE","2024-02-04","","Admin Admin","","","undelete","Inactive");
INSERT INTO festive VALUES("300","015553","ADEOSUN OLAWUNMI","08129898989","Female","Category 3","200.00","6200.00","Oyaosho Folakemi","2, DIPO STR, IFO, OGUN STATE","ADEOSUN MARY","08129898989","MOTHER","2, DIPO STR, IFO, OGUN STATE","2024-02-10","","Admin Admin","","","undelete","Inactive");



CREATE TABLE `festive_category_tbl` (
  `fescat_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_code` varchar(4) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `price_per_day` double(10,2) DEFAULT NULL,
  `monthly_price` double(10,2) DEFAULT NULL,
  `account_officer` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `status2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`fescat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

INSERT INTO festive_category_tbl VALUES("21","CAT1","Category 1","100.00","3100.00","Ajayi Adedoyin","Ajayi Adedoyin","2024-01-22","Ajayi Adedoyin","2024-01-23","Active","undelete");
INSERT INTO festive_category_tbl VALUES("174","CAT2","Category 2","150.00","4650.00","Ajayi Adedoyin","Ajayi Adedoyin","2024-02-03","Ajayi Adedoyin","","Active","undelete");
INSERT INTO festive_category_tbl VALUES("175","CAT3","Category 3","200.00","6200.00","Ajayi Adedoyin","Ajayi Adedoyin","2024-02-06","Ajayi Adedoyin","","Active","undelete");
INSERT INTO festive_category_tbl VALUES("176","CAT4","Category 4","300.00","9300.00","Ajayi Adedoyin","Ajayi Adedoyin","2024-02-06","Ajayi Adedoyin","","","");



CREATE TABLE `festive_pay_tbl` (
  `fepa_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `price_per_day` double(10,2) DEFAULT '0.00',
  `monthly_price` double(10,2) DEFAULT '0.00',
  `narration` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status2` varchar(100) DEFAULT 'undelete',
  PRIMARY KEY (`fepa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1851 DEFAULT CHARSET=latin1;

INSERT INTO festive_pay_tbl VALUES("1841","82320240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","FEB","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 07:56:05pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1839","18620240204","231964","MOYOSORE ADEPEGBA","Category 1","Oyaosho Folakemi","FEB","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 07:52:33pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1840","37820240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","JAN","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 07:54:52pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1834","21820240204","231964","MOYOSORE ADEPEGBA","Category 1","Oyaosho Folakemi","JAN","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 06:58:32pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1842","63820240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","FEB","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:07:37pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1843","90420240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","FEB","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:07:53pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1844","97520240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","MAR","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:09:38pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1845","93520240204","107653","Atansuyi Joshua Babatunde","Category 1","Ajayi Adedoyin","APR","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:48:58pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1846","87720240204","952385","ADERIBIGBE ADENIYI","Category 2","Oyaosho Folakemi","JAN","2024","150.00","4650.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:51:00pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1847","14220240204","477007","AKINSANYA ADENIKE","Category 2","Alago Chidera","FEB","2024","150.00","4650.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:52:19pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1848","92420240204","477007","AKINSANYA ADENIKE","Category 2","Alago Chidera","JAN","2024","150.00","4650.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 08:52:53pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1849","36320240204","761785","AKINSANYA TITILOPE","Category 1","Alago Chidera","JAN","2024","100.00","3100.00","Monthly Contribution","Admin Admin","2024-02-04","2024-02-04 10:06:24pm","","","PAID","undelete");
INSERT INTO festive_pay_tbl VALUES("1850","88720240210","015553","ADEOSUN OLAWUNMI","Category 3","Oyaosho Folakemi","JAN","2024","200.00","6200.00","Monthly Contribution","Admin Admin","2024-02-10","2024-02-10 05:51:07pm","","","PAID","undelete");



CREATE TABLE `festive_remittance` (
  `ferem_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `member_id` varchar(6) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT 'Monthly Remittance',
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `post_by` varchar(255) NOT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`ferem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

INSERT INTO festive_remittance VALUES("305","1490352520230123","475071","MRS ADEWALE NA","ABOSEDE","1000.00","cash deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-23","2023-01-23 09:29:50 am");
INSERT INTO festive_remittance VALUES("304","1826355520230115","475071","MRS ADEWALE NA","ABOSEDE","1000.00","dep","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-15","2023-01-15 01:40:56 am");
INSERT INTO festive_remittance VALUES("303","1665079320230111","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","Processing","delete","Atansuyi emmanuel","","2023-01-11","2023-01-11 10:07:45 am");
INSERT INTO festive_remittance VALUES("302","1331716420230111","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash dep.","Processing","delete","Atansuyi emmanuel","","2023-01-11","2023-01-11 09:00:38 am");
INSERT INTO festive_remittance VALUES("301","1659079220230104","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-04","2023-01-04 01:07:18 pm");
INSERT INTO festive_remittance VALUES("300","1627871520230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","rev. of cash wtd.","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:02:42 pm");
INSERT INTO festive_remittance VALUES("299","1721256820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","2500.00","cash deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 09:59:34 pm");
INSERT INTO festive_remittance VALUES("298","1280637020230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","cash wtd","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 07:46:38 pm");
INSERT INTO festive_remittance VALUES("297","1117660520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","reversal entry of m. charges- 066564","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:05:13 pm");
INSERT INTO festive_remittance VALUES("295","1778247120230102","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:36:13 am");
INSERT INTO festive_remittance VALUES("296","1356511820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:02:13 pm");
INSERT INTO festive_remittance VALUES("294","1782854020230102","475071","MRS ADEWALE NA","ABOSEDE","2000.00","cash deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:35:51 am");
INSERT INTO festive_remittance VALUES("293","1043596520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:31:17 am");
INSERT INTO festive_remittance VALUES("292","1999592320230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:29:53 am");
INSERT INTO festive_remittance VALUES("291","1153805220230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash withdrawal","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:28:24 am");
INSERT INTO festive_remittance VALUES("290","1966341620230102","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:26:50 am");
INSERT INTO festive_remittance VALUES("306","1846041220230225","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","ds deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:38 pm");
INSERT INTO festive_remittance VALUES("307","1938334820230225","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","deposit","Confirmed","undelete","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:56 pm");



CREATE TABLE `general_ledger_tbl` (
  `gl_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_no` int(6) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `status2` varchar(10) NOT NULL,
  `reg_date` date NOT NULL,
  `reg_by` varchar(255) NOT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO general_ledger_tbl VALUES("1","100275","Daily Savings Income","income","Inactive","undelete","2022-11-23","Atansuyi EMMANUEL");
INSERT INTO general_ledger_tbl VALUES("2","100615","Loan Income","liability","Inactive","undelete","2022-11-23","Atansuyi EMMANUEL");
INSERT INTO general_ledger_tbl VALUES("14","100999","Daily Savings Deposit","liability","Inactive","undelete","2022-12-27","Atansuyi emmanuel");
INSERT INTO general_ledger_tbl VALUES("15","100467","Savings Deposit","liability","Active","undelete","2023-04-17","AKINSANYA TITILOPE");
INSERT INTO general_ledger_tbl VALUES("16","100129","Loan Account","Asset","Inactive","undelete","2023-04-24","AKINSANYA TITILOPE");
INSERT INTO general_ledger_tbl VALUES("17","100180","Registration Fee","Income","Inactive","undelete","2023-05-22","AKINADE SENI");



CREATE TABLE `gl_bal_tbl` (
  `glb_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `prev_bal` double(10,2) NOT NULL,
  `new_bal` double(10,2) NOT NULL,
  `status` varchar(25) NOT NULL,
  `creation_date` date NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  PRIMARY KEY (`glb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




CREATE TABLE `group_tbl` (
  `grp_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `leader_name` varchar(100) DEFAULT NULL,
  `leader_number` varchar(11) DEFAULT NULL,
  `account_officer` varchar(255) NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

INSERT INTO group_tbl VALUES("21","Precious","Abanise Titlayo","09039261510","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-08","Sanni Bukola","2023-06-23","undelete");
INSERT INTO group_tbl VALUES("22","Coach","Babatunde Olusegun","08036525816","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-08","Shoyebi Folashade","2023-09-15","undelete");
INSERT INTO group_tbl VALUES("23","Gudugba","Rabiu Abosede","08029997175","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-09","Ajayi Adedoyin","2023-06-09","undelete");
INSERT INTO group_tbl VALUES("24","Itakun","Ajewole Odunayo","08060557355","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-09","Ajayi Adedoyin","2023-06-27","undelete");
INSERT INTO group_tbl VALUES("25","Isholiki","Balogun Adenike","08026533095","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-09","Ajayi Adedoyin","2023-06-09","undelete");
INSERT INTO group_tbl VALUES("26","Jerry Ayomide","Jerry Ayomide","09127463195","AKINSANYA TITILOPE","Inactive","Ajayi Adedoyin","2023-06-13","","","deleted");
INSERT INTO group_tbl VALUES("27","Toyin","oluwatoyin","09027048848","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-13","Ajayi Adedoyin","2023-06-13","undelete");
INSERT INTO group_tbl VALUES("28","Jerry","Jerry Ayomide","09127463195","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-13","Ajayi Adedoyin","2023-06-19","undelete");
INSERT INTO group_tbl VALUES("29","Oremeta","Badmus Jamiu","08065511072","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-13","Ajayi Adedoyin","2023-06-19","deleted");
INSERT INTO group_tbl VALUES("30","Temitope","Saki Akinsinde","08068582374","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-13","Oyaosho Folakemi","2023-07-02","undelete");
INSERT INTO group_tbl VALUES("31","Four Square","Omotope Omolilewa","08122840332","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-13","Ajayi Adedoyin","2023-06-14","undelete");
INSERT INTO group_tbl VALUES("32","Indomie","Shobiye Felicia","08133238213","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-14","Ajayi Adedoyin","2023-06-14","undelete");
INSERT INTO group_tbl VALUES("33","Ibukun","Omolaja Kuridat","08121931222","Alago Chidera","Active","Ajayi Adedoyin","2023-06-14","Ajayi Adedoyin","2023-06-14","undelete");
INSERT INTO group_tbl VALUES("34","Olukoya","Abiodun  Olukoya","08133425162","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-14","Admin Admin","2023-06-19","undelete");
INSERT INTO group_tbl VALUES("35","Abiodun","Abiodun  Olukoya","08133425162","Oyaosho Folakemi","Inactive","Oyaosho Folakemi","2023-06-14","","","deleted");
INSERT INTO group_tbl VALUES("36","Tope","Tope Tijani","08143545699","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-14","Oyaosho Folakemi","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("37","Tijani","Tijani Tope","08143545699","Oyaosho Folakemi","Inactive","Ajayi Adedoyin","2023-06-14","","","deleted");
INSERT INTO group_tbl VALUES("38","Ticket 2","Adegunle Adefunke","08168955455","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-14","Ajayi Adedoyin","2023-06-14","undelete");
INSERT INTO group_tbl VALUES("39","Ticket 1","Ogunkanbi Ishola","08176533160","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-14","Ajayi Adedoyin","2023-06-19","undelete");
INSERT INTO group_tbl VALUES("40","Jeff","Osazuea Jeffrey","08166156516","Omolayo Funmilayo","Active","Ajayi Adedoyin","2023-06-19","Ajayi Adedoyin","2023-06-19","undelete");
INSERT INTO group_tbl VALUES("41","Semilore","Kudrat Adebayo","09015978243","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-19","Ajayi Adedoyin","2023-06-19","undelete");
INSERT INTO group_tbl VALUES("42","Amazing","Lawal Oluwatoyin","09038801928","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-19","Ajayi Adedoyin","2023-06-21","undelete");
INSERT INTO group_tbl VALUES("43","Dolapo","Akerele Yemi","07049228690","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("44","Faith","Ajayi Odunayo","09044129264","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("45","Ayedun","Ayedun Funke","08187227246","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("46","Ik","Nzejekpe","07015270416","Alago Chidera","Active","Alago Chidera","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("47","Esther","Lawal monsurat","08130621884","Alago Chidera","Active","Alago Chidera","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("48","Eledie","Olaitan Taiwo","08064486006","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("49","NURTW","Obayomi Kehinde","08035413206","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("50","BLESSING","Olarewaju Musa","08033511693","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("51","Okiki","Alokolaro Afolashade","09071953917","Alago Chidera","Active","Alago Chidera","2023-06-20","Alago Chidera","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("52","Ope","Afolayan Bukky","08167755620","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-06-20","Ajayi Adedoyin","2023-06-20","undelete");
INSERT INTO group_tbl VALUES("53","Ire","Funmilayo Goriola","08084476839","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-21","Ajayi Adedoyin","2023-06-21","undelete");
INSERT INTO group_tbl VALUES("54","Success","Monsurat Akinbarni","07089060688","Alago Chidera","Active","Alago Chidera","2023-06-21","Alago Chidera","2023-06-21","undelete");
INSERT INTO group_tbl VALUES("55","TAJU BELLO","Adio mosurat","09127686455","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-06-21","Ajayi Adedoyin","2023-06-22","undelete");
INSERT INTO group_tbl VALUES("56","Idris","Adeleye  Idris","07025892013","Alago Chidera","Active","Alago Chidera","2023-06-21","Alago Chidera","2023-06-21","undelete");
INSERT INTO group_tbl VALUES("57","Isiwat","Fatai isiwat","08066119511","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-22","Ajayi Adedoyin","2023-06-22","undelete");
INSERT INTO group_tbl VALUES("58","Princess","Obasanya Linda","08094460443","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-23","Oyaosho Folakemi","2023-06-23","undelete");
INSERT INTO group_tbl VALUES("59","Ariyo","Ola Ariyo","07044988192","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-26","Oyaosho Folakemi","2023-06-26","undelete");
INSERT INTO group_tbl VALUES("60","Eleja","Raheem modinat","09158671061","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-06-26","Oyaosho Folakemi","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("61","Ilerioluwa","Fausat Alabi","08080451196","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("62","Ayoni","Sarah Adediran","09032255213","Shoyebi Folashade","Inactive","Shoyebi Folashade","2023-06-29","Sanni Bukola","2023-09-18","deleted");
INSERT INTO group_tbl VALUES("63","Twins","Taiwo Adewale","08023569761","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("64","Goodnews","Iyabo ldowu","07063197973","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("65","Boluwatife","Titilayo falola","22Â²222","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("66","Divine","Ali faith","Www","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("67","Arike","Sarah sodiq","222","Shoyebi Folashade","Active","Shoyebi Folashade","2023-06-29","Ajayi Adedoyin","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("68","Mariam","oladejo mariam","07033493205","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-01","Oyaosho Folakemi","2023-07-01","undelete");
INSERT INTO group_tbl VALUES("69","Adewale","Adegbola Adewale","08038258386","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-07-03","Ajayi Adedoyin","2023-07-03","undelete");
INSERT INTO group_tbl VALUES("70","Habibat","Sharafa Fatima Adeola","08130701878","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-03","Oyaosho Folakemi","2023-07-03","undelete");
INSERT INTO group_tbl VALUES("71","Akanchawa","Akanchawa  Sunday","09076513373","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-03","Oyaosho Folakemi","2023-07-03","undelete");
INSERT INTO group_tbl VALUES("72","ALORE","Ajiboye iyabo","0904654210","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-07-04","Omolayo Funmilayo","2023-07-04","undelete");
INSERT INTO group_tbl VALUES("73","Yaba","Adeniyi Daramola","09094994366","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-05","Oyaosho Folakemi","2023-07-05","undelete");
INSERT INTO group_tbl VALUES("74","ALUBA","Kareem Olawale","08111253462","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-05","Oyaosho Folakemi","2023-07-05","undelete");
INSERT INTO group_tbl VALUES("75","Abaniseloluwa","Lidipe omolabake","08022735959","Shoyebi Folashade","Active","Shoyebi Folashade","2023-07-05","Shoyebi Folashade","2023-07-05","undelete");
INSERT INTO group_tbl VALUES("76","AKINMEJI","Akinmeji  Adeniyi","08135117539","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-06","Oyaosho Folakemi","2023-07-06","undelete");
INSERT INTO group_tbl VALUES("77","UCHENDU","Gordon uchendu","08136595000","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-07-06","Omolayo Funmilayo","2023-07-06","undelete");
INSERT INTO group_tbl VALUES("78","Adufe","Adufe olabayo","08069936579","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-07-06","Omolayo Funmilayo","2023-07-06","undelete");
INSERT INTO group_tbl VALUES("79","Omodara","Fasasi Latefat","09031169798","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-07-10","Ajayi Adedoyin","2023-07-10","undelete");
INSERT INTO group_tbl VALUES("80","Aminat","Salami Aminat","08152221363","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-10","Oyaosho Folakemi","2023-07-10","undelete");
INSERT INTO group_tbl VALUES("81","Florence","Babarinde Florence","09079903672","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-12","Oyaosho Folakemi","2023-07-12","undelete");
INSERT INTO group_tbl VALUES("82","Owo oluwa","Ayomide omolara temitayo","08057559164","Ibitomi Esther","Active","Omolayo Funmilayo","2023-07-12","Ajayi Adedoyin","2023-07-13","undelete");
INSERT INTO group_tbl VALUES("83","Joy","DA Silva Tosin joy","07041788315","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-12","Oyaosho Folakemi","2023-07-12","undelete");
INSERT INTO group_tbl VALUES("84","UMARU","Umaru Rahimat","09028870579","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-07-13","Omolayo Funmilayo","2023-07-13","undelete");
INSERT INTO group_tbl VALUES("85","Azuru","Glory kelechi","08068187061","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-07-17","Omolayo Funmilayo","2023-07-17","undelete");
INSERT INTO group_tbl VALUES("86","Ilorin","Ademola Animat","08186657493","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-18","Oyaosho Folakemi","2023-07-18","undelete");
INSERT INTO group_tbl VALUES("87","God gift","Olawale Kehinde","07055702042","Alago Chidera","Active","Alago Chidera","2023-07-19","Alago Chidera","2023-08-09","undelete");
INSERT INTO group_tbl VALUES("88","Adeleke","Tunmise Temitope","09055303129","AKINSANYA TITILOPE","Inactive","Ajayi Adedoyin","2023-07-19","","","deleted");
INSERT INTO group_tbl VALUES("89","Morenike","Adeleke Tunmise","09055303129","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-07-19","Ajayi Adedoyin","2023-07-19","undelete");
INSERT INTO group_tbl VALUES("90","K.b","salau kabiru","08101306152","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-21","Oyaosho Folakemi","2023-07-21","undelete");
INSERT INTO group_tbl VALUES("91","Good market","Okorie  Blessing","07069692243","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-21","Oyaosho Folakemi","2023-10-09","undelete");
INSERT INTO group_tbl VALUES("92","Nnamdi","Nnamdi Sabastine","07061119740","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-07-25","Ajayi Adedoyin","2023-07-25","undelete");
INSERT INTO group_tbl VALUES("93","Wisdom","Yusuf Yinka","08161757070","Shoyebi Folashade","Active","Shoyebi Folashade","2023-07-26","Shoyebi Folashade","2023-07-26","undelete");
INSERT INTO group_tbl VALUES("94","Olatundu","Olatundun lateef","09096945756","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-07-27","Oyaosho Folakemi","2023-07-27","undelete");
INSERT INTO group_tbl VALUES("95","EMERALD","TEMITOPE","08118383111","Ibitomi Esther","Active","Ibitomi Esther","2023-07-28","Ajayi Adedoyin","2023-07-28","undelete");
INSERT INTO group_tbl VALUES("96","Iya koko","Idayat Taiwo","11Â¹11","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-01","Oyaosho Folakemi","2023-09-03","undelete");
INSERT INTO group_tbl VALUES("97","Comfort","Daodu Abosede","08121266554","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-08-01","Ajayi Adedoyin","2023-08-01","undelete");
INSERT INTO group_tbl VALUES("98","Chemist","Jimoh Bola Risikat","08025925491","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-02","Oyaosho Folakemi","2023-08-02","undelete");
INSERT INTO group_tbl VALUES("99","Odunayo","Taofeex Asisat","08064599521","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-08-02","Ajayi Adedoyin","2023-08-02","undelete");
INSERT INTO group_tbl VALUES("100","Diyaolu","Adebayo Diyaolu","07064538447","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-03","Oyaosho Folakemi","2023-08-03","undelete");
INSERT INTO group_tbl VALUES("101","Chinyere","solola juliana","08063944094","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-03","Oyaosho Folakemi","2023-08-03","undelete");
INSERT INTO group_tbl VALUES("102","Onaopemipo","Lawal onaopemipo","08061389104","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-03","Oyaosho Folakemi","2023-08-04","undelete");
INSERT INTO group_tbl VALUES("103","Iya kola","Osunpidan lola","08030669418","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-06","Oyaosho Folakemi","2023-08-06","deleted");
INSERT INTO group_tbl VALUES("104","Apari","Temitope Nimota Babatunde","09130698598","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-06","Oyaosho Folakemi","2023-08-06","undelete");
INSERT INTO group_tbl VALUES("105","Iya fufu","mebel irunkwar","08171300220","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-08-06","Oyaosho Folakemi","2023-08-06","undelete");
INSERT INTO group_tbl VALUES("106","Grace","Kafayat shobwale","09169805340","Alago Chidera","Active","Alago Chidera","2023-08-09","Oyaosho Folakemi","2023-09-05","undelete");
INSERT INTO group_tbl VALUES("107","Oke Ayo","Akinboni Adenike","07017909589","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-08-17","Ajayi Adedoyin","2023-08-17","undelete");
INSERT INTO group_tbl VALUES("108","Toke","Jimoh khadijat","09032544510","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-08-17","Omolayo Funmilayo","2023-08-17","undelete");
INSERT INTO group_tbl VALUES("109","Ayonio","Adebayo Adeola","08086193443","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-08-22","Omolayo Funmilayo","2023-08-22","undelete");
INSERT INTO group_tbl VALUES("110","kemi","Babatunde Kemi","09162742361","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-01","Oyaosho Folakemi","2023-09-01","undelete");
INSERT INTO group_tbl VALUES("111","Genesis","Temitope   Fayemi","09044004045","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-01","Oyaosho Folakemi","2023-09-01","undelete");
INSERT INTO group_tbl VALUES("112","Adeniji","Adeniji  Taiwo","08057042761","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-02","Oyaosho Folakemi","2023-09-02","undelete");
INSERT INTO group_tbl VALUES("113","Felicia","Odejimi Felicia Tosin","07010744778","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-03","Oyaosho Folakemi","2023-09-03","undelete");
INSERT INTO group_tbl VALUES("114","Kasali Rashidat","Kasali Rashidat","08064420317","Shoyebi Folashade","Inactive","Shoyebi Folashade","2023-09-06","","","deleted");
INSERT INTO group_tbl VALUES("115","Blossom","Kasali Rashidat","08064420317","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-06","Shoyebi Folashade","2023-09-06","undelete");
INSERT INTO group_tbl VALUES("116","Ajibodu","Babatunde","08022321182","AKINSANYA TITILOPE","Inactive","Ajayi Adedoyin","2023-09-08","","","deleted");
INSERT INTO group_tbl VALUES("117","Valentine","Ajibodu Babatunde","08022321182","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-09-08","Ajayi Adedoyin","2023-09-08","undelete");
INSERT INTO group_tbl VALUES("118","Asunmo","Yeku Morufat","08160704679","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-09-13","Ajayi Adedoyin","2023-09-13","undelete");
INSERT INTO group_tbl VALUES("119","Kitchen","Afusat Adekunle","08166447578","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-15","Sanni Bukola","2023-09-18","undelete");
INSERT INTO group_tbl VALUES("120","Alahaja","Abereijo Mutiat","09118024535","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-15","Ajayi Adedoyin","2023-09-15","undelete");
INSERT INTO group_tbl VALUES("121","IYA IJEBU","Bamigbose yemisi","09029244394","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-09-19","Omolayo Funmilayo","2023-09-20","undelete");
INSERT INTO group_tbl VALUES("122","Funke","Adesanmi","08136023589","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-20","Shoyebi Folashade","2023-09-20","undelete");
INSERT INTO group_tbl VALUES("123","Akorede","Abdulsirmad Alimot","09054847340","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-20","Shoyebi Folashade","2023-09-21","undelete");
INSERT INTO group_tbl VALUES("124","Pelumi","Lawal Nimota","09073241933","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-21","Shoyebi Folashade","2023-09-21","undelete");
INSERT INTO group_tbl VALUES("125","Mr Tunde","Alaba Babatunde shobande","08059298333","Sanni Bukola","Active","Omolayo Funmilayo","2023-09-21","Omolayo Funmilayo","2023-09-21","deleted");
INSERT INTO group_tbl VALUES("126","Olewe","Iheayi olewe","07035325166","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-09-21","Omolayo Funmilayo","2023-09-21","undelete");
INSERT INTO group_tbl VALUES("127","Adewunmi","Adewunmi Dupe","09027788742","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-09-21","Ajayi Adedoyin","2023-09-21","undelete");
INSERT INTO group_tbl VALUES("128","Greatness","Adeyeye Elibathe","09034998864","Shoyebi Folashade","Active","Shoyebi Folashade","2023-09-25","Oyaosho Folakemi","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("129","Babatunde","Shobande Alaba","08059298333","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-09-26","Ajayi Adedoyin","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("130","Bimbola","Fashina  Bimbola","08028489969","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-26","Oyaosho Folakemi","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("131","Badejo","Badejo Sukurat","07062557745","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-26","Oyaosho Folakemi","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("132","Effiong","Peter Effiong","09072971099","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-26","Oyaosho Folakemi","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("133","Enilolobo","Peter Essien","09072971099","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-09-26","Oyaosho Folakemi","2023-09-26","undelete");
INSERT INTO group_tbl VALUES("134","Alabi","Adebayo Wasiu","08123854889","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-09-28","Ajayi Adedoyin","2023-09-28","undelete");
INSERT INTO group_tbl VALUES("135","Execl","Daramola Ayodele","07066595455","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-10-03","Ajayi Adedoyin","2023-10-03","undelete");
INSERT INTO group_tbl VALUES("136","Falilat","Ereji-Kesi Falilat","08023139292","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-10-04","Ajayi Adedoyin","2023-10-04","undelete");
INSERT INTO group_tbl VALUES("137","Yetunde","Yusuf Yetunde","08147123512","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-10-05","Ajayi Adedoyin","2023-10-05","undelete");
INSERT INTO group_tbl VALUES("138","Nupe","Ahmed Baba","08063214169","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-10-05","Ajayi Adedoyin","2023-10-05","undelete");
INSERT INTO group_tbl VALUES("139","Oluwatosin","Ifeoluwa","08030898338","Shoyebi Folashade","Active","Shoyebi Folashade","2023-10-10","Shoyebi Folashade","2023-10-10","undelete");
INSERT INTO group_tbl VALUES("140","Balikis","Fatoyinbo balikis temitope","09045764360","Omolayo Funmilayo","Active","Omolayo Funmilayo","2023-10-10","Omolayo Funmilayo","2023-10-10","undelete");
INSERT INTO group_tbl VALUES("141","Gift","Tawakalitu   Olatinwo","08164397331","Shoyebi Folashade","Active","Shoyebi Folashade","2023-10-11","Shoyebi Folashade","2023-10-11","undelete");
INSERT INTO group_tbl VALUES("142","Gold","Ajibode Muinat","09064360878","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-07","Ajayi Adedoyin","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("143","Rita","Rita Emmanuel","09072121011","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-11-07","Oyaosho Folakemi","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("144","Mary","Anthony  Mary","09122285981","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-11-07","Oyaosho Folakemi","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("145","Amaka","Olewe Blessing","08036969063","Oyaosho Folakemi","Active","Oyaosho Folakemi","2023-11-07","Oyaosho Folakemi","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("146","Ruka","Saheed Temitope","08085493893","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-07","Ajayi Adedoyin","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("147","Tosin","Dasilva Tosin","07041788315","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-07","Ajayi Adedoyin","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("148","Bidemi","Babatunde Bidemi","08165503384","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-07","Ajayi Adedoyin","2023-11-07","undelete");
INSERT INTO group_tbl VALUES("149","Lasisi","Lasisi Zanib","09028148818","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-09","Ajayi Adedoyin","2023-11-09","undelete");
INSERT INTO group_tbl VALUES("150","Eli","Ojo Toyin","07011568428","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-09","Ajayi Adedoyin","2023-11-09","undelete");
INSERT INTO group_tbl VALUES("151","Anu","Aminat Okedara","08051489903","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-09","Ajayi Adedoyin","2023-11-09","undelete");
INSERT INTO group_tbl VALUES("152","Buhari","Abiodun Buhari","08167038626","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-09","Ajayi Adedoyin","2023-11-09","undelete");
INSERT INTO group_tbl VALUES("153","Unchangeable","Ebera Akalonu","09036077655","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-11-09","Ajayi Adedoyin","2023-11-09","undelete");
INSERT INTO group_tbl VALUES("154","D Kings","Akande Toyin","08143114869","Omolayo Funmilayo","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("155","Baba Kekere","Oyewunmi Simeon","08024270712","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("156","Bukola","Fashina Bimbola","09028489969","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("157","Fatimo","Sharafa Fatimo","08130701878","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("158","Favour","Adejumo Ranti","08166736675","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("159","Happiness","Suleman Azeez","08028826110","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("160","Alubarika","Najeem Waheed","07083532730","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("161","Chairman","Obayomi Busola","08103038303","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("162","Baba Eja","Ademola Idowu","09069043989","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-10","Ajayi Adedoyin","2023-11-10","undelete");
INSERT INTO group_tbl VALUES("163","Johnson","Adedoyin Tope","09043446779","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-11-14","Ajayi Adedoyin","2023-11-14","undelete");
INSERT INTO group_tbl VALUES("164","Saido","Ogunleye Sahid","07036363325","Shoyebi Folashade","Active","Ajayi Adedoyin","2023-11-14","Ajayi Adedoyin","2023-11-14","undelete");
INSERT INTO group_tbl VALUES("165","Benzima","Ugoala Collins","07088008117","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-16","Ajayi Adedoyin","2023-11-16","undelete");
INSERT INTO group_tbl VALUES("166","Snacks","Kayode Olutosin","09034841566","Sanni Bukola","Inactive","Ajayi Adedoyin","2023-11-22","","","undelete");
INSERT INTO group_tbl VALUES("167","Opeyemi","Opadeji Wahab","09060071576","Shoyebi Folashade","Active","Ajayi Adedoyin","2023-11-22","Ajayi Adedoyin","2023-11-22","undelete");
INSERT INTO group_tbl VALUES("168","Basirat","Adeniyi Basirat","09162799563","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-23","Ajayi Adedoyin","2023-11-23","undelete");
INSERT INTO group_tbl VALUES("169","Adeyinka","Okanlawon Muinat","08139386922","AKINSANYA TITILOPE","Active","Ajayi Adedoyin","2023-11-24","Ajayi Adedoyin","2023-11-24","undelete");
INSERT INTO group_tbl VALUES("170","Anuoluwapo","Okosun Abiola","09066153117","Ibitomi Esther","Active","Ajayi Adedoyin","2023-11-24","Ajayi Adedoyin","2023-11-24","undelete");
INSERT INTO group_tbl VALUES("171","Onyeka","Onyeka James","07036217129","Omolayo Funmilayo","Active","Ajayi Adedoyin","2023-11-24","Ajayi Adedoyin","2023-11-24","undelete");
INSERT INTO group_tbl VALUES("172","Funmilayo","Akande Funmilayo","07064265014","Oyaosho Folakemi","Active","Ajayi Adedoyin","2023-11-29","Ajayi Adedoyin","2023-11-29","undelete");
INSERT INTO group_tbl VALUES("173","Away","Okpara Joshua","07031664460","Omolayo Funmilayo","Active","Ajayi Adedoyin","2023-11-29","Ajayi Adedoyin","2023-11-29","undelete");



CREATE TABLE `guarantor_tbl` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_code` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `guarantor_name` varchar(100) NOT NULL,
  `guarantor_pno` varchar(11) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `guarantor_address` varchar(255) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `midno` varchar(100) NOT NULL,
  `upload_mid` varchar(255) NOT NULL,
  `upload_passport` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_date` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




CREATE TABLE `income_tbl` (
  `inc_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `cust_acc` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `debit` double(10,2) NOT NULL,
  `credit` double(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) DEFAULT NULL,
  `post_by` varchar(255) DEFAULT NULL,
  `confirmed_by` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`inc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;




CREATE TABLE `initial_deposit_tbl` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `initial_deposit` int(11) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;




CREATE TABLE `jurisdiction` (
  `jur_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `lga` varchar(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL,
  `status` varchar(8) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status2` varchar(25) NOT NULL,
  PRIMARY KEY (`jur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO jurisdiction VALUES("14","Nigeria","edo","etsako","benin","Active","Atansuyi Emmanuel","2023-06-03","Admin Admin","2023-07-11","undelete");
INSERT INTO jurisdiction VALUES("13","Nigeria","OGUN","IFO","ABULE EGBA","Active","Atansuyi Emmanuel","2023-05-25","Atansuyi Emmanuel","2023-05-25","undelete");
INSERT INTO jurisdiction VALUES("12","Nigeria","OGUN","IFO","OKE ARO","Active","Atansuyi emmanuel","2023-04-28","Atansuyi Emmanuel","2023-05-25","undelete");
INSERT INTO jurisdiction VALUES("15","Nigeria","LAGOS","AGEGE","AGEGE","Active","Admin Admin","2023-06-06","Admin Admin","2023-06-06","undelete");



CREATE TABLE `link_tbl` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL,
  `link_icon` varchar(100) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO link_tbl VALUES("13","Staff","Active","bx bxs-user","Atansuyi emmanuel","2022-08-02","2022-08-02 12:57:49pm","","");
INSERT INTO link_tbl VALUES("14","Member","Active","bx bxs-user-plus","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:27pm","","");
INSERT INTO link_tbl VALUES("15","Loans","Active","bx bx-money","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:51pm","","");
INSERT INTO link_tbl VALUES("16","Savings","Active","fas fa-fax","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:19pm","","");
INSERT INTO link_tbl VALUES("17","Reports","Active","fas fa-receipt","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:46pm","","");
INSERT INTO link_tbl VALUES("12","Setup","Active","fas fa-tools","Atansuyi emmanuel","2022-08-02","2022-08-02 12:51:18pm","","");
INSERT INTO link_tbl VALUES("19","User Manual","Inactive","fas fa-book-reader","Atansuyi Emmanuel","2023-06-02","2023-06-02 10:40:54pm","","");
INSERT INTO link_tbl VALUES("20","Festive","Active","fas fa-shopping-cart","Admin Admin","2024-01-22","2024-01-22 02:49:37pm","","");



CREATE TABLE `link_useraccess` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `sublink_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_permission` varchar(5) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3044 DEFAULT CHARSET=latin1;

INSERT INTO link_useraccess VALUES("566","12","32","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("565","12","33","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("564","12","34","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("563","13","35","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("562","13","36","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("561","14","37","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("560","14","38","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("559","15","39","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("558","15","40","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("557","16","42","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("556","15","41","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("555","16","43","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("554","17","45","22","False","2022-08-07");
INSERT INTO link_useraccess VALUES("553","16","44","22","True","2022-08-07");
INSERT INTO link_useraccess VALUES("552","12","32","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("551","12","33","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("550","12","34","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("549","13","35","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("548","13","36","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("547","14","37","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("546","14","38","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("545","15","39","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("544","15","40","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("543","16","42","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("542","15","41","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("541","16","43","20","True","2022-08-04");
INSERT INTO link_useraccess VALUES("540","17","45","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("539","16","44","20","False","2022-08-04");
INSERT INTO link_useraccess VALUES("3042","12","80","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3041","16","79","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3040","12","78","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3039","15","77","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3038","20","76","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3037","20","75","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3036","20","74","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3035","20","73","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3034","20","72","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3033","20","71","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3032","20","70","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("828","12","54","23","False","2023-03-20");
INSERT INTO link_useraccess VALUES("827","12","53","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("826","12","32","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("825","12","33","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("824","12","34","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("823","13","35","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("822","13","36","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("821","14","37","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("820","14","38","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("819","15","39","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("818","15","40","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("817","15","41","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("816","15","43","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("815","17","45","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("675","12","33","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("674","12","34","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("673","13","35","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("672","13","36","24","False","2022-11-25");
INSERT INTO link_useraccess VALUES("671","14","37","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("670","14","38","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("669","15","39","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("668","15","40","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("667","15","41","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("666","15","43","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("665","17","45","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("664","12","47","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("663","16","50","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("662","15","44","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("661","16","48","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("660","16","49","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("659","16","51","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("658","16","52","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("676","12","32","24","True","2022-11-25");
INSERT INTO link_useraccess VALUES("677","16","52","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("678","16","51","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("679","16","49","26","False","2022-12-17");
INSERT INTO link_useraccess VALUES("680","16","48","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("681","15","44","26","False","2022-12-17");
INSERT INTO link_useraccess VALUES("682","16","50","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("683","12","47","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("684","17","45","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("685","15","43","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("686","15","41","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("687","15","40","26","False","2022-12-17");
INSERT INTO link_useraccess VALUES("688","15","39","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("689","14","38","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("690","14","37","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("691","13","36","26","False","2022-12-17");
INSERT INTO link_useraccess VALUES("692","13","35","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("693","12","34","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("694","12","33","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("695","12","32","26","True","2022-12-17");
INSERT INTO link_useraccess VALUES("3031","15","69","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3030","15","68","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("814","12","47","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("813","16","50","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("812","15","44","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("811","16","49","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("810","16","52","23","True","2023-03-20");
INSERT INTO link_useraccess VALUES("771","16","52","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("772","16","49","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("773","15","44","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("774","16","50","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("775","12","47","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("776","17","45","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("777","15","43","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("778","15","41","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("779","15","40","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("780","15","39","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("781","14","38","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("782","14","37","28","True","2023-02-26");
INSERT INTO link_useraccess VALUES("783","13","36","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("784","13","35","28","True","2023-02-26");
INSERT INTO link_useraccess VALUES("785","12","34","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("786","12","33","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("787","12","32","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("788","12","53","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("789","12","54","28","False","2023-02-26");
INSERT INTO link_useraccess VALUES("3029","14","67","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("829","15","55","23","False","2023-03-20");
INSERT INTO link_useraccess VALUES("889","15","55","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("888","12","54","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("887","12","53","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("886","12","32","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("885","12","33","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("884","12","34","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("883","13","35","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("882","13","36","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("881","14","37","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("880","14","38","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("879","15","39","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("878","15","40","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("877","15","41","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("876","15","43","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("875","17","45","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("874","12","47","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("873","16","50","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("872","15","44","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("871","16","49","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("870","16","52","25","True","2023-03-20");
INSERT INTO link_useraccess VALUES("1031","14","59","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1030","12","58","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1029","13","57","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1028","13","56","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1027","15","55","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1026","12","54","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1025","12","53","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1024","12","32","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1023","12","33","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1022","12","34","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1021","13","35","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1020","13","36","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1019","14","37","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1018","14","38","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("3028","14","66","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3027","13","64","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3026","15","63","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("1017","15","39","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1016","15","40","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1015","15","41","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1014","15","43","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1013","17","45","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1012","12","47","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1011","16","50","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("1010","15","44","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1009","16","49","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1008","16","52","39","True","2023-04-17");
INSERT INTO link_useraccess VALUES("3025","15","62","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3024","15","61","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("1032","14","60","39","False","2023-04-17");
INSERT INTO link_useraccess VALUES("1033","16","52","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1034","16","49","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1035","15","44","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1036","16","50","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1037","12","47","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1038","17","45","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1039","15","43","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1040","15","41","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1041","15","40","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1042","15","39","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1043","14","38","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1044","14","37","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1045","13","36","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1046","13","35","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1047","12","34","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1048","12","33","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1049","12","32","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1050","12","53","40","True","2023-04-24");
INSERT INTO link_useraccess VALUES("1051","12","54","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1052","15","55","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1053","13","56","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1054","13","57","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1055","12","58","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1056","14","59","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1057","14","60","40","False","2023-04-24");
INSERT INTO link_useraccess VALUES("1363","14","60","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1362","14","59","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1361","12","58","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1360","13","57","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1359","13","56","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1358","15","55","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1357","12","54","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1356","12","53","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1355","12","32","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1354","12","33","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1353","12","34","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1352","13","35","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1351","13","36","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1350","14","37","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1349","14","38","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1348","15","39","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1347","15","40","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1346","15","41","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1345","15","43","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1344","17","45","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1343","12","47","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1391","15","61","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1390","14","60","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1389","14","59","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1388","12","58","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1387","13","57","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1386","13","56","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1385","15","55","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1384","12","54","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1383","12","53","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1382","12","32","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1381","12","33","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1380","12","34","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1379","13","35","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1378","13","36","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1377","14","37","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1376","14","38","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1375","15","39","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1374","15","40","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1373","15","41","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1372","15","43","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1371","17","45","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1370","12","47","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1368","15","44","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1342","16","50","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1369","16","50","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1341","15","44","42","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1340","16","49","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1339","16","52","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1367","16","49","41","False","2023-05-23");
INSERT INTO link_useraccess VALUES("1366","16","52","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1364","15","61","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1365","15","62","42","True","2023-05-23");
INSERT INTO link_useraccess VALUES("1392","15","62","41","True","2023-05-23");
INSERT INTO link_useraccess VALUES("2656","12","58","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2655","13","57","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2654","13","56","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2653","15","55","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2652","12","54","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2651","12","53","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2650","12","32","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2649","12","33","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2648","12","34","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2647","13","35","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2646","13","36","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2645","14","37","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2644","14","38","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2643","15","39","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2642","15","40","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2641","15","41","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2640","15","43","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2639","17","45","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2638","12","47","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2637","16","50","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("1554","15","62","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1553","15","61","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1552","14","60","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1551","14","59","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1550","12","58","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1549","13","57","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1548","13","56","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1547","15","55","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1546","12","54","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1545","12","53","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1544","12","32","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1543","12","33","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1542","12","34","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1541","13","35","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1540","13","36","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1539","14","37","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1538","14","38","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1537","15","39","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1536","15","40","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1535","15","41","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1534","15","43","44","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1533","17","45","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1532","12","47","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1531","16","50","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1530","15","44","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1529","16","49","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1528","16","52","44","False","2023-05-25");
INSERT INTO link_useraccess VALUES("2636","15","44","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2635","16","49","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2634","16","52","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("3023","14","60","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3022","14","59","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3021","12","58","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3020","13","57","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3019","13","56","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3018","15","55","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3017","12","54","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3016","12","53","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("1701","16","52","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1702","16","49","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1703","15","44","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1704","16","50","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1705","12","47","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1706","17","45","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1707","15","43","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1708","15","41","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1709","15","40","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1710","15","39","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1711","14","38","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1712","14","37","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1713","13","36","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1714","13","35","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1715","12","34","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1716","12","33","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1717","12","32","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1718","12","53","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1719","12","54","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1720","15","55","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1721","13","56","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1722","13","57","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1723","12","58","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1724","14","59","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1725","14","60","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1726","15","61","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1727","15","62","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1728","15","63","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1729","13","64","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1730","15","65","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1731","14","66","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("1732","14","67","46","True","2023-09-16");
INSERT INTO link_useraccess VALUES("3015","12","32","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3014","12","33","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3013","12","34","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3012","13","35","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3011","13","36","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3010","14","37","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3009","14","38","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3008","15","39","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("2657","14","59","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2658","14","60","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2659","15","61","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2660","15","62","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2661","15","63","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2662","13","64","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2663","15","65","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2664","14","66","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2665","14","67","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2666","15","68","43","False","2024-02-06");
INSERT INTO link_useraccess VALUES("2667","15","69","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2668","20","70","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2669","20","71","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("2670","20","72","43","True","2024-02-06");
INSERT INTO link_useraccess VALUES("3007","15","40","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3006","15","41","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3005","15","43","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3004","17","45","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3003","12","47","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3002","16","50","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3001","15","44","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3000","16","49","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("2999","16","52","51","True","2024-03-02");
INSERT INTO link_useraccess VALUES("3043","14","81","51","True","2024-03-02");



CREATE TABLE `loan_request` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_code` varchar(100) NOT NULL,
  `member_id` varchar(6) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_phone` varchar(11) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `account_officer` varchar(100) DEFAULT NULL,
  `guarantor_name` varchar(100) NOT NULL,
  `guarantor_pno` varchar(11) NOT NULL,
  `guarantor_passport` varchar(255) DEFAULT NULL,
  `utility_bill` varchar(50) DEFAULT NULL,
  `relationship` varchar(100) NOT NULL,
  `guarantor_address` varchar(255) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `midno` varchar(25) NOT NULL,
  `tenor` varchar(255) NOT NULL,
  `loan_purpose` varchar(255) NOT NULL,
  `income` double(10,2) DEFAULT NULL,
  `reg_fee` double(10,2) NOT NULL DEFAULT '0.00',
  `applied_amount` double(10,2) NOT NULL,
  `approved_amount` double(10,2) DEFAULT NULL,
  `total_payable` double(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `app_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `approved_date` date DEFAULT NULL,
  `maturity_date` date DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `status1` varchar(255) DEFAULT NULL,
  `status2` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=409 DEFAULT CHARSET=latin1;

INSERT INTO loan_request VALUES("407","86809499","609550","ODEWOLE ABIODUN BOLUWATIFE","09090909090","","Oyaosho Folakemi","GABRIEL YUSUF","09090909090","limited offer.png","Available","SHOLA","3, MAFOLIKU STR. OSHODI, LAGOS STATE","ROAD WORKER","Voter Card","2222222222222","Weekly","TO AUGMENT MY WORKING CAPITAL","80000.00","14300.00","50000.00","50000.00","59800.00","Loan Disbursed","2024-02-25","ATANSUYI JOSHUA","2024-02-25","2024-02-25","2024-08-04","ATANSUYI JOSHUA","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("408","94508973","609550","ODEWOLE ABIODUN BOLUWATIFE","08027580601","","AKINLADE ABIODUN","aye","baye","","Available","ope","2, adebayo close mushin, lagos state.","taylor","Driver Licence","120909","Weekly","to augment working capital","10000.00","14300.00","150000.00","150000.00","179400.00","Loan Disbursed","2024-03-01","ATANSUYI JOSHUA","2024-03-01","2024-03-01","2024-08-09","ATANSUYI JOSHUA","","Confirmed","Active","undelete","New Loan
                                                        ");



CREATE TABLE `master_tbl` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_code` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `loan_amount` double(10,2) NOT NULL,
  `compulsory_sav` double(10,2) NOT NULL,
  `repayment_amount` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `trans_date` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;




CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(6) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `othername` varchar(25) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `mid` varchar(255) DEFAULT NULL,
  `midno` varchar(255) DEFAULT NULL,
  `bvn` varchar(11) DEFAULT NULL,
  `picture` varchar(225) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `res_address` varchar(225) DEFAULT NULL,
  `bus_address` varchar(225) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `kin_name` varchar(225) DEFAULT NULL,
  `kin_phone` varchar(11) DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `kin_address` varchar(225) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `upd` date DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `status2` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("303","609550","ODEWOLE","ABIODUN","BOLUWATIFE","08027580601","Banker","2024-02-18","joshua@yahoo.com","Male","","Driver Licence","2222222222222222222222","11111111111","NewsDirect pg 16- Asaph.png","AKINLADE ABIODUN","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","09090909090","SHOLA","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2024-02-18","2024-02-29","Admin Admin","ATANSUYI JOSHUA","undelete","Active");
INSERT INTO member VALUES("304","516003","Fadeyibi","Moses","Elijah","08027580601","BANKER","2024-02-18","asasa@gmail.com","Male","","Driver Licence","222222222222222222","22222222222","NewsDirect pg 16- Asaph.png","AKINLADE ABIODUN","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","09090909090","BROTHER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2024-02-18","2024-02-29","Admin Admin","ATANSUYI JOSHUA","undelete","Active");
INSERT INTO member VALUES("306","445139","SEUNFUNMI","IYABO","ADEOLA","09099939393","ENGINEER","2024-03-01","joshua@yahoo.com","Female","Semilore","International Passport","1JB123983921839","13123213213","","SHOYEBI FOLASHADE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","09099939393","SHOLA","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2024-03-01","2024-03-01","ATANSUYI JOSHUA","","undelete","Inactive");



CREATE TABLE `members_master_tbl` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `cust_acc` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `entry_type` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `status3` varchar(10) DEFAULT NULL,
  `post_by` varchar(255) NOT NULL,
  `confirm_by` varchar(255) DEFAULT NULL,
  `confirm_dt` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=latin1;

INSERT INTO members_master_tbl VALUES("362","14784420230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","200.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 01:55:33pm","2023-06-08","2023-06-08 01:55:24pm");
INSERT INTO members_master_tbl VALUES("361","14645620230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","300.00","DEP","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 01:53:33pm","2023-06-08","2023-06-08 01:53:23pm");
INSERT INTO members_master_tbl VALUES("360","13478520230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","1000.00","DEP","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 01:51:21pm","2023-06-08","2023-06-08 01:49:52pm");
INSERT INTO members_master_tbl VALUES("358","11061620230608","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","1200.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:53pm");
INSERT INTO members_master_tbl VALUES("359","19544720230608","018618","AKINSANYA ADENIKE IFEOLUWA","AKINSANYA TITILOPE","1000.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:08pm");
INSERT INTO members_master_tbl VALUES("357","14158420230608","018618","AKINSANYA ADENIKE IFEOLUWA","AKINSANYA TITILOPE","500.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:36pm");



CREATE TABLE `membersavings_tbl` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) NOT NULL,
  `cust_acc` varchar(6) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trans_type` varchar(50) NOT NULL,
  `entry_type` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `status2` varchar(50) NOT NULL,
  `status3` varchar(10) DEFAULT NULL,
  `post_by` varchar(255) NOT NULL,
  `confirm_by` varchar(255) DEFAULT NULL,
  `confirm_dt` varchar(255) DEFAULT NULL,
  `trans_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=latin1;

INSERT INTO membersavings_tbl VALUES("363","14784420230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","200.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 01:55:33pm","2023-06-08","2023-06-08 01:55:24pm");
INSERT INTO membersavings_tbl VALUES("362","14645620230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","300.00","DEP","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 01:53:33pm","2023-06-08","2023-06-08 01:53:23pm");
INSERT INTO membersavings_tbl VALUES("361","13478520230608","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","1000.00","DEP","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 01:51:21pm","2023-06-08","2023-06-08 01:49:52pm");
INSERT INTO membersavings_tbl VALUES("359","14158420230608","018618","AKINSANYA ADENIKE IFEOLUWA","AKINSANYA TITILOPE","500.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:36pm");
INSERT INTO membersavings_tbl VALUES("360","11061620230608","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","1200.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:53pm");
INSERT INTO membersavings_tbl VALUES("358","19544720230608","018618","AKINSANYA ADENIKE IFEOLUWA","AKINSANYA TITILOPE","1000.00","dep","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Admin Admin","Admin Admin","2023-06-08 12:42:18pm","2023-06-08","2023-06-08 01:41:08pm");



CREATE TABLE `pwd_reset` (
  `pwd_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `key` varchar(255) NOT NULL,
  `expDate` datetime NOT NULL,
  PRIMARY KEY (`pwd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO pwd_reset VALUES("1","joshua_atansuyi@yahoo.com","7480a7d87f879fef1bf959354f5e9786","2023-05-27 13:06:15");
INSERT INTO pwd_reset VALUES("2","joshua_atansuyi@yahoo.com","2f1bf1e0f89592f75741ddd071a3fd56","2023-05-27 13:57:32");
INSERT INTO pwd_reset VALUES("3","joshua_atansuyi@yahoo.com","72e4980d4446abeb03240f791b0d025e","2023-05-27 13:59:18");
INSERT INTO pwd_reset VALUES("4","joshua_atansuyi@yahoo.com","2b8e7eabd1fc253161f4cfff0b314b5d","2023-05-27 15:01:41");
INSERT INTO pwd_reset VALUES("5","joshua_atansuyi@yahoo.com","611eea6e29f0c9da59fe024d1aece955","2023-05-27 15:25:01");
INSERT INTO pwd_reset VALUES("6","joshua_atansuyi@yahoo.com","2e2392ab6fa925684132c5439cba6e8e","2023-05-27 15:29:59");
INSERT INTO pwd_reset VALUES("7","joshua_atansuyi@yahoo.com","4fca6c34f06774ea0798c19ccf2ab99f","2023-05-27 16:23:07");
INSERT INTO pwd_reset VALUES("8","joshua_atansuyi@yahoo.com","dc897154e77b20d6ec48a73e247ec96f","2023-05-27 16:27:48");
INSERT INTO pwd_reset VALUES("9","joshua_atansuyi@yahoo.com","aef1bdf3c30d436a36d1efa8047cbb25","2023-05-27 16:33:38");
INSERT INTO pwd_reset VALUES("10","joshua_atansuyi@yahoo.com","9c981b4bca5a0a8656305c3028537471","2025-12-29 07:43:37");



CREATE TABLE `rep_tbl` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `applied_amount` double(10,2) DEFAULT '0.00',
  `approved_amount` double(10,2) DEFAULT '0.00',
  `reverseamount` double(10,2) DEFAULT '0.00',
  `total_payable` double(10,2) DEFAULT '0.00',
  `repayment_amount` double(10,2) DEFAULT '0.00',
  `debit` double(10,2) DEFAULT '0.00',
  `credit` double(10,2) DEFAULT '0.00',
  `entry_type` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `confirmed_by` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `approved_date` date DEFAULT NULL,
  `maturity_date` date DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status2` varchar(100) DEFAULT 'undelete',
  PRIMARY KEY (`rp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1888 DEFAULT CHARSET=latin1;

INSERT INTO rep_tbl VALUES("1885","","609550","86809499","ODEWOLE ABIODUN BOLUWATIFE","","Oyaosho Folakemi","50000.00","50000.00","0.00","59800.00","0.00","59800.00","0.00","","Confirmed","Loan Disbursed","","","2024-02-25","","","","","","undelete");
INSERT INTO rep_tbl VALUES("1886","","609550","94508973","ODEWOLE ABIODUN BOLUWATIFE","","AKINLADE ABIODUN","150000.00","150000.00","0.00","179400.00","0.00","179400.00","0.00","","Confirmed","Loan Disbursed","","","2024-03-01","","","","","","undelete");
INSERT INTO rep_tbl VALUES("1887","","609550","94508973","ODEWOLE ABIODUN BOLUWATIFE","","AKINLADE ABIODUN","150000.00","150000.00","0.00","179400.00","0.00","179400.00","0.00","","Confirmed","Loan Disbursed","","","2024-03-01","","","","","","undelete");



CREATE TABLE `repayment_tbl` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `applied_amount` double(10,2) DEFAULT '0.00',
  `approved_amount` double(10,2) DEFAULT NULL,
  `reverseamount` double(10,2) DEFAULT '0.00',
  `total_payable` double(10,2) DEFAULT '0.00',
  `repayment_amount` double(10,2) DEFAULT '0.00',
  `status` varchar(20) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `confirmed_by` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;




CREATE TABLE `staff_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(11) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `state_of_origin` varchar(255) DEFAULT NULL,
  `midtype` varchar(255) DEFAULT NULL,
  `midno` varchar(255) DEFAULT NULL,
  `bvn` varchar(11) DEFAULT NULL,
  `admin_passport` varchar(255) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_type` varchar(50) NOT NULL,
  `jurisdiction` varchar(255) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `guarantor_name` varchar(255) DEFAULT NULL,
  `guarantor_address` varchar(255) DEFAULT NULL,
  `guarantor_phone` varchar(11) DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `guarantor_passport` varchar(255) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `update_dt` date DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status2` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO staff_tbl VALUES("54","835165","AKINLADE","ABIODUN","BABATUNDE","09090909090","Male","2020-11-29","Married","BSC COMPUTER SCIENCE","Ebonyi","Driver Licence","222222222222222","13123213213","limited offer.png","t@yahoo.com","123456","Credit Officer","AGEGE","Akwa Ibom","","Nigeria","AKINSAYA GANIYAT","ALADURA BUST STOP, MATGBUN ROAD, VIA OKE-ARO, IFO OGUN STATE","09099999999","SISTER","Available","ATANSUYI JOSHUA","2024-02-24","","","undelete","Active");
INSERT INTO staff_tbl VALUES("51","056999","ATANSUYI","JOSHUA","BABATUNDE","08027580601","Male","2015-11-30","Married","BSC COMPUTER SCIENCE","Ondo","National Identity Number","2222222222222","23989891999","special offer2.jpg","joshua_atansuyi@yahoo.com","Joshua123","Admin","OKE ARO","Ogun","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","Nigeria","AKINSAYA GANIYAT","ALADURA BUS STOP, MATOGHUN ROAD, VIA OKE-ARO, IFO OGUN STATE","09090909090","SISTER","Available"," ","2024-02-24","2024-02-25","ATANSUYI JOSHUA","undelete","Active");



CREATE TABLE `sublink_tbl` (
  `sublink_id` int(11) NOT NULL AUTO_INCREMENT,
  `sublink_name` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `sublink_url` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sublink_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

INSERT INTO sublink_tbl VALUES("52","Deposit","16","Active","savingsdeposit.php","Atansuyi EMMANUEL","2022-11-25","2022-11-25 09:00:22am","","");
INSERT INTO sublink_tbl VALUES("51","Member Posting","16","Inactive","postentries.php","Atansuyi emmanuel","2022-11-17","2022-11-17 02:45:54pm","","");
INSERT INTO sublink_tbl VALUES("49","Posting Confirmation","16","Active","confirmmemsaving.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:34:08am","","");
INSERT INTO sublink_tbl VALUES("48","Daily Savings Deposit","16","Inactive","dailysaving-deposit.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:26:47am","","");
INSERT INTO sublink_tbl VALUES("44","Confirm Entry","15","Active","confirmrepayment2.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:40:17pm","","");
INSERT INTO sublink_tbl VALUES("50","History","16","Active","history.php","Atansuyi emmanuel","2022-11-17","2022-11-17 01:23:14pm","","");
INSERT INTO sublink_tbl VALUES("47","View Jurisdiction","12","Active","viewjurisdiction.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:28:48am","","");
INSERT INTO sublink_tbl VALUES("46","Add Sub Link","12","Inactive","add-sublink.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:25:19am","","");
INSERT INTO sublink_tbl VALUES("45","View Reports","17","Active","reports.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:41:09pm","","");
INSERT INTO sublink_tbl VALUES("43","Loan Repayment","15","Active","loanrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:50pm","","");
INSERT INTO sublink_tbl VALUES("41","Loan History","15","Active","loanhistory.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:39pm","","");
INSERT INTO sublink_tbl VALUES("42","Initial Deposit","16","InActive","initialdeposit.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:19pm","","");
INSERT INTO sublink_tbl VALUES("40","Loan Application Status","15","Active","loan-application-status.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:09pm","","");
INSERT INTO sublink_tbl VALUES("39","Apply for Loan","15","Active","loan_application2.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:37:22pm","","");
INSERT INTO sublink_tbl VALUES("38","View member (Admin)","14","Active","viewmember.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:51pm","","");
INSERT INTO sublink_tbl VALUES("37","Add Member","14","Active","member-account.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:16pm","","");
INSERT INTO sublink_tbl VALUES("36","Approve Staff","13","Active","view-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:35pm","","");
INSERT INTO sublink_tbl VALUES("35","Add Staff","13","Active","add-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:03pm","","");
INSERT INTO sublink_tbl VALUES("34","View Group(Admin)","12","Active","viewgroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:34:17pm","","");
INSERT INTO sublink_tbl VALUES("33","Add Group","12","Active","add-group.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:06:11pm","","");
INSERT INTO sublink_tbl VALUES("32","Add Jurisdiction","12","Active","jurisdiction.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:02:54pm","","");
INSERT INTO sublink_tbl VALUES("53","Add Branch","12","Active","add-branch.php","Atansuyi emmanuel","2023-02-24","2023-02-24 07:05:07am","","");
INSERT INTO sublink_tbl VALUES("54","View Branch","12","Active","viewbranch.php","Atansuyi emmanuel","2023-02-24","2023-02-24 09:56:05am","","");
INSERT INTO sublink_tbl VALUES("55","Pending Loan Application","15","Active","pendingloan-request.php","Atansuyi emmanuel","2023-03-06","2023-03-06 04:32:37pm","","");
INSERT INTO sublink_tbl VALUES("56","Staff List","13","Active","staff-list.php","Atansuyi emmanuel","2023-04-06","2023-04-06 02:16:21pm","","");
INSERT INTO sublink_tbl VALUES("57","Edit Staff","13","Active","edit-staff.php","Atansuyi emmanuel","2023-04-06","2023-04-06 02:17:28pm","","");
INSERT INTO sublink_tbl VALUES("58","Staff Priviledge","12","Active","staff-priviledge.php","Atansuyi emmanuel","2023-04-06","2023-04-06 02:18:46pm","","");
INSERT INTO sublink_tbl VALUES("59","Approve Member","14","Active","approve-member.php","AKINSANYA TITILOPE","2023-04-06","2023-04-06 09:23:53pm","","");
INSERT INTO sublink_tbl VALUES("60","Edit Member","14","Active","edit-member.php","AKINSANYA TITILOPE","2023-04-06","2023-04-06 09:24:55pm","","");
INSERT INTO sublink_tbl VALUES("61","Loan Repayment Status","15","Active","loan-rep-status.php","AKINADE SENI","2023-05-20","2023-05-20 01:47:41pm","","");
INSERT INTO sublink_tbl VALUES("62","Loan Due","15","Active","loan-due.php","AKINADE SENI","2023-05-21","2023-05-21 05:22:21pm","","");
INSERT INTO sublink_tbl VALUES("63","Edit Loan Application","15","Active","edit_loan_app.php","Admin Admin","2023-06-28","2023-06-28 07:31:59am","","");
INSERT INTO sublink_tbl VALUES("64","Staff Status","13","Active","deactivatestaff.php","Admin Admin","2023-07-11","2023-07-11 10:10:21am","","");
INSERT INTO sublink_tbl VALUES("65","All Loan History","15","Inactive","allloanhistory.php","Admin Admin","2023-07-11","2023-07-11 02:30:04pm","","");
INSERT INTO sublink_tbl VALUES("66","Total Reg. Member","14","Active","totalregmem.php","Admin Admin","2023-07-21","2023-07-21 08:29:59am","","");
INSERT INTO sublink_tbl VALUES("67","Inactive Member","14","Active","inactivemember.php","Admin Admin","2023-07-21","2023-07-21 08:30:54am","","");
INSERT INTO sublink_tbl VALUES("68","Loan History (Admin)","15","Active","loan_history_admin.php","Admin Admin","2023-12-05","2023-12-05 10:41:55am","","");
INSERT INTO sublink_tbl VALUES("69","Apply for Loan(Admin)","15","Active","loangroup2.php","Admin Admin","2024-01-08","2024-01-08 04:01:42pm","","");
INSERT INTO sublink_tbl VALUES("70","Add Festive Member","20","Active","festive_savings_account.php","Admin Admin","2024-01-22","2024-01-22 02:53:26pm","","");
INSERT INTO sublink_tbl VALUES("71","Edit Festive Mem. Account","20","Active","edit_festive_member.php","Admin Admin","2024-01-22","2024-01-22 03:09:25pm","","");
INSERT INTO sublink_tbl VALUES("72","Monthly Remittance","20","Active","festive_remittance.php","Admin Admin","2024-02-04","2024-02-04 06:09:17am","","");
INSERT INTO sublink_tbl VALUES("73","Edit Festive Mem. Account (Admin)","20","Active","edit_festive_member_admin.php","Admin Admin","2024-02-10","2024-02-10 04:46:01pm","","");
INSERT INTO sublink_tbl VALUES("74","View Festive Member","20","Active","view_festive_member.php","Admin Admin","2024-02-10","2024-02-10 04:56:25pm","","");
INSERT INTO sublink_tbl VALUES("75","View Festive Member (Admin)","20","Active","view_festive_member_admin.php","Admin Admin","2024-02-10","2024-02-10 04:59:39pm","","");
INSERT INTO sublink_tbl VALUES("76","View Contribution","20","Active","view_festive_cont.php","Admin Admin","2024-02-10","2024-02-10 05:11:28pm","","");
INSERT INTO sublink_tbl VALUES("77","Loan Schedule","15","Active","loan_cust_schedule.php","Admin Admin","2024-02-23","2024-02-23 01:42:27pm","","");
INSERT INTO sublink_tbl VALUES("78","Change Password","12","Active","change_password.php","ATANSUYI JOSHUA","2024-02-26","2024-02-26 01:35:52pm","","");
INSERT INTO sublink_tbl VALUES("79","Withdrawal","16","Active","savingswtd.php","ATANSUYI JOSHUA","2024-02-28","2024-02-28 02:31:43pm","","");
INSERT INTO sublink_tbl VALUES("80","View Group","12","Active","viewgroup2.php","ATANSUYI JOSHUA","2024-03-02","2024-03-02 11:45:16am","","");
INSERT INTO sublink_tbl VALUES("81","View Member","14","Active","viewmember2.php","ATANSUYI JOSHUA","2024-03-02","2024-03-02 11:59:59am","","");



CREATE TABLE `temp_rep_tbl` (
  `temp_rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` text,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `account_officer` varchar(255) DEFAULT NULL,
  `applied_amount` double(10,2) DEFAULT '0.00',
  `approved_amount` double(10,2) NOT NULL,
  `reverseamount` double(10,2) DEFAULT '0.00',
  `total_payable` double(10,2) DEFAULT '0.00',
  `repayment_amount` double(10,2) DEFAULT '0.00',
  `status` varchar(20) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `confirmed_by` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`temp_rp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;


