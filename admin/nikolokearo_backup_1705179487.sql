

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
) ENGINE=MyISAM AUTO_INCREMENT=1827 DEFAULT CHARSET=latin1;

INSERT INTO balance_tbl VALUES("1826","117304","45978114","Balogun Adenike Toyosi","Isholiki","24000.00","0.00","Confirmed","2024-01-08");
INSERT INTO balance_tbl VALUES("1824","154758","87447813","Abanise Titilayo ","Precious","24000.00","0.00","Confirmed","2023-12-25");



CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `creation_date` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO bank VALUES("80","694808","","","","2023-05-20 22:13:11","");
INSERT INTO bank VALUES("78","890691","","","","2023-05-02 22:21:56","");
INSERT INTO bank VALUES("79","151149","","","","2023-05-08 12:22:40","");
INSERT INTO bank VALUES("77","179747","","","","2023-05-02 22:19:06","");
INSERT INTO bank VALUES("76","974471","","","","2023-04-28 17:21:42","");
INSERT INTO bank VALUES("75","060411","","","","2023-04-28 17:15:30","");
INSERT INTO bank VALUES("74","657987","","","","2023-04-28 17:11:10","");
INSERT INTO bank VALUES("81","995877","GAFAR SEUNFUNMI GRACE","POLARIS BANK","0632344455","2023-05-22 12:14:27","");
INSERT INTO bank VALUES("82","403866","","","","2023-05-22 12:43:07","");
INSERT INTO bank VALUES("83","462550","ATANSUYI JOSHUA B.","UNITY BANK","0141843112","2023-05-25 10:18:28","Atansuyi Emmanuel");
INSERT INTO bank VALUES("84","775045","","","","2023-05-25 10:32:58","");
INSERT INTO bank VALUES("85","508729","SAMUEL IMOLE IYANU","WEMA BANK","7867896666","2023-05-25 10:36:47","");
INSERT INTO bank VALUES("86","240213","FOLAKE AGUNBIADE ADERIBIGBE","","","2023-05-25 16:24:19","");
INSERT INTO bank VALUES("87","018618","AKINSANYA ADENIKE IFEOLUWA","","","2023-05-29 12:59:35","");
INSERT INTO bank VALUES("88","497363","OSUNAIKE ORE OLUWA","","","2023-06-05 15:42:26","");
INSERT INTO bank VALUES("89","613333","","","","2023-06-09 09:09:45","");
INSERT INTO bank VALUES("90","971589","","","","2023-06-09 09:11:46","");
INSERT INTO bank VALUES("91","416336","ATANSUYI JOSHUA DUPE","","","2023-06-09 09:13:28","");
INSERT INTO bank VALUES("92","032882","ATANSUYI JOSHUA DUPE","","","2023-06-09 09:14:46","");
INSERT INTO bank VALUES("93","150514","ATANSUYI JOSHUA DUPE","","","2023-06-09 09:29:51","");
INSERT INTO bank VALUES("94","650386","ATANSUYI FLORENCE MORENIKEJI","","","2023-06-24 14:53:42","");
INSERT INTO bank VALUES("95","140522","AWOGBADE JOHN KUNLE","","","2023-06-24 14:56:37","");
INSERT INTO bank VALUES("96","024291","YUSUF AMINAT KAFAYAT","","","2023-06-24 14:58:29","");
INSERT INTO bank VALUES("97","748567","HASSAN ISMAIL KAZEEN","","","2023-09-16 13:55:19","");
INSERT INTO bank VALUES("98","400582","SOLABI TAOFEEQAH BOLUWATIFE","","","2023-10-22 17:40:05","");
INSERT INTO bank VALUES("99","516431","ADETORO DAVID MODUPE","","","2023-12-27 21:14:34","");
INSERT INTO bank VALUES("100","700413","ODEWOLE ABIODUN BOLUWATIFE","","","2024-01-10 14:00:26","");



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

INSERT INTO dailysaving VALUES("9","273975","Ik","Chukwu","Ik","08039777768","Male","Chidera","2023-07-03","","Alago Chidera","","undelete");
INSERT INTO dailysaving VALUES("10","779204","ADEGBOYEGA","ILORI","JAMES","09029929229","Male","Alago Chidera","2023-09-24","","Admin Admin","","undelete");



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



CREATE TABLE `dailysavingsmember_tbl` (
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
  `reg_fee` double(10,2) DEFAULT '0.00',
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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

INSERT INTO dailysavingsmember_tbl VALUES("94","400582","SOLABI","TAOFEEQAH","BOLUWATIFE","08029299989","ROAD WORKER","2023-10-22","joshua_atansuyi@yahoo.com","Male","ORELOPE","International Passport","1JB123983921839","13123213213","3500.00","christmas-bell.png","AKINSANYA TITILOPE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","08029299989","SISTER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2023-10-23","2023-10-23","Admin Admin","","undelete","Inactive");



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
  PRIMARY KEY (`mem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=386 DEFAULT CHARSET=latin1;

INSERT INTO deposit_savings_tbl VALUES("385","19687220230916","100467","YUSUF AMINAT KAFAYAT","AKINSANYA TITILOPE","1000.00","0.00","1000.00","reg fee","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-09-16 04:27:11pm","2023-09-16","2023-09-16 04:26:36pm");
INSERT INTO deposit_savings_tbl VALUES("384","19687220230916","024291","YUSUF AMINAT KAFAYAT","AKINSANYA TITILOPE","0.00","1000.00","1000.00","reg fee","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-09-16 04:27:11pm","2023-09-16","2023-09-16 04:26:36pm");
INSERT INTO deposit_savings_tbl VALUES("383","13825120230612","100467","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","1200.00","0.00","1200.00","dep","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 06:00:37pm","2023-06-12","2023-06-12 06:00:23pm");
INSERT INTO deposit_savings_tbl VALUES("382","13825120230612","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","0.00","1200.00","1200.00","dep","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 06:00:37pm","2023-06-12","2023-06-12 06:00:23pm");
INSERT INTO deposit_savings_tbl VALUES("381","11027120230612","100467","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","3500.00","0.00","3500.00","deposit","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:57:35pm","2023-06-12","2023-06-12 05:57:22pm");
INSERT INTO deposit_savings_tbl VALUES("380","11027120230612","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","0.00","3500.00","3500.00","deposit","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:57:35pm","2023-06-12","2023-06-12 05:57:22pm");
INSERT INTO deposit_savings_tbl VALUES("379","12357620230612","100467","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","0.00","1000.00","1000.00","rever","NA","XD","Debit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:54:02pm","2023-06-12","2023-06-12 05:28:04pm");
INSERT INTO deposit_savings_tbl VALUES("378","12357620230612","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","1000.00","0.00","1000.00","rever","NA","XD","Debit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:54:02pm","2023-06-12","2023-06-12 05:28:04pm");
INSERT INTO deposit_savings_tbl VALUES("377","17497220230612","100467","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","1000.00","0.00","1000.00","dep","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:54:02pm","2023-06-12","2023-06-12 05:26:54pm");
INSERT INTO deposit_savings_tbl VALUES("376","17497220230612","240213","FOLAKE AGUNBIADE ADERIBIGBE","AKINSANYA TITILOPE","0.00","1000.00","1000.00","dep","NA","XC","Credit","Cash","Confirmed","undelete","unmove","Admin Admin","Admin Admin","2023-06-12 04:54:02pm","2023-06-12","2023-06-12 05:26:54pm");



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

INSERT INTO income_tbl VALUES("212","1449846520230924","100467","Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","1000.00","0.00","Confirmed","undelete","Admin Admin","","2023-09-24","2023-09-24 05:07:23 pm");
INSERT INTO income_tbl VALUES("213","1030513620230924","100999","Daily Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","20000.00","0.00","Confirmed","undelete","Admin Admin","","2023-09-24","2023-09-24 05:15:53 pm");
INSERT INTO income_tbl VALUES("214","1908816520230924","100275","Daily Savings Income","779204","ADEGBOYEGA ILORI JAMES","0.00","22000.00","Confirmed","delete","Admin Admin","Admin Admin
        ","2023-09-24","2023-09-24 05:21:04 pm");
INSERT INTO income_tbl VALUES("215","1624730320230924","100275","Daily Savings Income","779204","ADEGBOYEGA ILORI JAMES","0.00","22000.00","Confirmed","delete","Admin Admin","Admin Admin
        ","2023-09-24","2023-09-24 05:24:12 pm");
INSERT INTO income_tbl VALUES("216","1807714020230924","100999","Daily Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","0.00","1000.00","Confirmed","undelete","Admin Admin","Admin Admin
        ","2023-09-24","2023-09-24 05:29:31 pm");
INSERT INTO income_tbl VALUES("217","1187704720231003","100999","Daily Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","0.00","1000.00","Confirmed","delete","Admin Admin","","2023-10-03","2023-10-03 10:26:45 am");
INSERT INTO income_tbl VALUES("218","1676191220231003","100999","Daily Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","1000.00","0.00","Confirmed","undelete","Admin Admin","","2023-10-03","2023-10-03 10:27:55 am");
INSERT INTO income_tbl VALUES("219","1464200420231003","100999","Daily Savings Deposit","273975","Ik Chukwu Ik","1500.00","0.00","Confirmed","undelete","Admin Admin","","2023-10-03","2023-10-03 10:28:39 am");
INSERT INTO income_tbl VALUES("220","1718487220231003","100999","Daily Savings Deposit","779204","ADEGBOYEGA ILORI JAMES","0.00","1000.00","Confirmed","undelete","Admin Admin","Admin Admin
        ","2023-10-03","2023-10-03 10:32:49 am");



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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO link_tbl VALUES("13","Staff","Active","bx bxs-user","Atansuyi emmanuel","2022-08-02","2022-08-02 12:57:49pm","","");
INSERT INTO link_tbl VALUES("14","Member","Active","bx bxs-user-plus","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:27pm","","");
INSERT INTO link_tbl VALUES("15","Loans","Active","bx bx-money","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:51pm","","");
INSERT INTO link_tbl VALUES("16","Deposit","Active","fas fa-fax","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:19pm","","");
INSERT INTO link_tbl VALUES("17","Reports","Active","fas fa-receipt","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:46pm","","");
INSERT INTO link_tbl VALUES("12","Setup","Active","fas fa-tools","Atansuyi emmanuel","2022-08-02","2022-08-02 12:51:18pm","","");
INSERT INTO link_tbl VALUES("19","User Manual","Inactive","fas fa-book-reader","Atansuyi Emmanuel","2023-06-02","2023-06-02 10:40:54pm","","");



CREATE TABLE `link_useraccess` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `sublink_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_permission` varchar(5) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2526 DEFAULT CHARSET=latin1;

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
INSERT INTO link_useraccess VALUES("2523","14","67","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2522","14","66","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2521","15","65","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2520","13","64","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2519","15","63","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2518","15","62","11","False","2024-01-08");
INSERT INTO link_useraccess VALUES("2517","15","61","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2516","14","60","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2515","14","59","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2514","12","58","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2513","13","57","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2512","13","56","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("2511","15","55","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2510","12","54","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2509","12","53","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2508","12","32","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("2507","12","33","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("2506","12","34","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2505","13","35","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2504","13","36","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("2503","14","37","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2502","14","38","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("1469","12","58","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1468","13","57","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1467","13","56","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1466","15","55","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1465","12","54","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1464","12","53","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1463","12","32","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1462","12","33","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1461","12","34","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1460","13","35","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1459","13","36","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1458","14","37","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1457","14","38","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1456","15","39","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1455","15","40","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1454","15","41","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1453","15","43","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1452","17","45","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1451","12","47","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1450","16","50","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1449","15","44","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1448","16","49","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1447","16","52","43","True","2023-05-25");
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
INSERT INTO link_useraccess VALUES("1470","14","59","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1471","14","60","43","False","2023-05-25");
INSERT INTO link_useraccess VALUES("1472","15","61","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("1473","15","62","43","True","2023-05-25");
INSERT INTO link_useraccess VALUES("2501","15","39","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2500","15","40","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2499","15","41","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2498","15","43","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2497","17","45","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2496","12","47","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2495","16","50","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2494","15","44","11","True","2024-01-08");
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
INSERT INTO link_useraccess VALUES("2493","16","49","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2492","16","52","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2524","15","68","11","True","2024-01-08");
INSERT INTO link_useraccess VALUES("2525","15","69","11","True","2024-01-08");



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
) ENGINE=MyISAM AUTO_INCREMENT=397 DEFAULT CHARSET=latin1;

INSERT INTO loan_request VALUES("70","59698938","154758","Abanise Titilayo","09039261510","Precious","Ajayi Adedoyin","Andrew Uzooma","08068889398","And.jpg","Available","Friend","4, Alaba Close","Sales Represtative","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-08","2023-06-13","2023-07-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("72","85714617","117304","Balogun Adenike Toyosi","08026533095","Isholiki","Ajayi Adedoyin","Oganla Adewunmi","08025770537","Screenshot_2023-06-13-17-49-25-922_com.growupapps.photogallery.jpg","Not Available","Friend","10 Isholiki Street Off Balogun Iju ishaga  off Gudugba B/Stop","Teacher","National Identity Number","1111","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-13","2023-06-13","2023-07-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                       ");
INSERT INTO loan_request VALUES("71","53849776","862111","Rabiu Abosede Tawakalitu","08029997175","Gudugba","Ajayi Adedoyin","Sukurat","09059895572","IMG_20230613_090616.jpg","Not Available","Daughter","18, Folarin Street Off Gudugba","BUSINESS","National Identity Number","3333","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-13","2023-06-13","2023-07-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("73","47685356","508489","Akorede Jemila Ajoke","08072771424","Gudugba","Ajayi Adedoyin","Lasisi Ajarat Tobiloba","09029503916","IMG_20230613_090808.jpg","Not Available","Sister","18, Folarin Street Off Gudugba","Herb","National Identity Number","OYSO-SEAMFIX","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-13","2023-06-16","2023-07-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("74","43256879","232627","Shobiye Felicia ","08133238213","Indomie","Ajayi Adedoyin","Akintoye Matthew Temi","08163934204","IMG_20230614_085619_1_1.jpg","Not Available","Brother","8, Ajibose St","Businessman","National Identity Number","44161612162","Daily","For Business","250000.00","0.00","50000.00","150000.00","180000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-14","2023-06-19","2023-09-21","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("75","11836923","559552","Omotilewa Omotope Florence","08122840332","Four Square","Ajayi Adedoyin","Omotilewa Solomon Oluwaremilekun","08059444647","IMG_20230614_093757_1.jpg","Not Available","Husband","7, Tunde Abatan Street Off Oke Aro Matogun","Sailor","National Identity Number","LASO-SEAMFIX","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-14","2023-06-16","2023-07-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("76","48644476","419935","Adepoju Michael Sunday","08056161632","Ticket 1","Ajayi Adedoyin","Ilesanmi Bukola Esther","08125677727","IMG_20230619_103202_1.jpg","Not Available","Friend","12, Ten Kobo Street Crossing","Lawma","Voter Card","24-10-02-058","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-19","2023-06-19","2023-07-21","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("77","16081523","450220","Badmus Jamiu ","08068404205","Oremeta","Ajayi Adedoyin","Badmus Mosurat","09120845662","IMG_20230613_090833 (2).jpg","Not Available","Wife","6, Ore-Meta Off Agbado Oremeta","Fashion Designer","National Identity Number","1111","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-19","2023-06-16","2023-07-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("78","22357051","229704","Babatunde Olusegun ","08036525816","Coach","Ajayi Adedoyin","Christian Hannah Opeyemi","08101282576","IMG_20230613_090638 (1).jpg","Not Available","Daughter","1, Bailey Street Off Taju-Bello","Teacher","National Identity Number","64197792118","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-19","2023-06-09","2023-07-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("79","62648874","431332","Jerry Ayomide Kuridat","09127463195","Jerry","Ajayi Adedoyin","Aderinoye Jimoh","09127463195","IMG_20230613_090655.jpg","Not Available","Brother","5,Yususf Rogo","Tricycle","National Identity Number","LA-AFRITECH MULTI CONCEPT","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-19","2023-06-09","2023-07-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("80","34762398","111652","Osere Amudat Yetunde","07082211368","Gudugba","Ajayi Adedoyin","Nafisat Abike","07069158294","IMG_20230620_095901.jpg","Not Available","Sister","18, Folarin Street Off Gudugba","2222","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","80000.00","96000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-20","2023-05-26","2023-06-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("81","02099611","422737","Rabiu Rukayat Funmilayo","08055515109","Gudugba","Ajayi Adedoyin","Rabiu Babatunde Faruz","08151122979","IMG_20230620_160142 (2).jpg","Not Available","Son","5, Arike Street White House","Electrical","National Identity Number","14302288213","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-20","2023-06-22","2023-07-26","Sanni Bukola","","Confirmed","Active","undelete","New loan 
                                                        ");
INSERT INTO loan_request VALUES("82","58536249","264038","Adedugba Taiwo Aderonke","09076330431","Ope","Ajayi Adedoyin","Adedugba Ademola oluwayomi","08038565202","IMG_20230620_111739_1_1.jpg","Not Available","Husband","29, Ogunleye Street Off Balogun Bus Stop","Business Man","National Identity Number","39100393875","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-20","2023-06-22","2023-07-26","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                      ");
INSERT INTO loan_request VALUES("83","78219093","274284","Ã€yedun Funke ","08187227246","Ayedun","Shoyebi Folashade","Ã€yedun seun","07058072843","IMG_20230620_103757_517.jpg","Available","Daughter","Oid path pipeline","Potatoes","National Identity Number","45033760030","Daily","For Business","250000.00","0.00","50000.00","","","","2023-10-03","Shoyebi Folashade","2023-06-20","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("84","18611110","274284","Ã€yedun Funke ","08187227246","Ayedun","Shoyebi Folashade","Ã€yedun olumide","07058072843","IMG_20230620_083905_192.jpg","Not Available","Daughter","Oid path pipeline","Food seller","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-06-20","2023-06-21","2023-07-26","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("85","67606621","889051","Lawal Monsurat Iya ope","08130621884","Esther","Alago Chidera","Lawal Waheed","08102056450","IMG_20230620_101523_648~2.jpg","Available","Husband","121 sorara","Tyier","National Identity Number","32239977144","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-05-26","2023-06-30","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("86","43543098","451099","Raji Sekirat Mummy lekan","08026555733","Ibukun","Alago Chidera","Raji hukmon olamilikan","0907900696","IMG_20230620_101451_470~2.jpg","Available","Son","2 kofo abayomi","Banker","National Identity Number","96048297945","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-06-08","2023-07-11","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("87","19156433","920946","Wasilat Adebayo Adebayo Iya Agbo","08092777963","Ibukun","Alago Chidera","Shukura salail","09167263304","IMG_20230620_101440_122~2.jpg","Available","Daughter","14 band","Fashion designer","National Identity Number","32854774724","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-06-08","2023-07-11","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("88","85975441","765814","Nzejekpe Ikebana ","07015270416","Ik","Alago Chidera","Mgbereta cajeten","07035814951","IMG_20230620_101513_403~2.jpg","Not Available","Friend","Agbado","Clothes seller","Not Available","111111112","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-05-22","2023-06-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("89","89605093","337123","Olatunji Kafayat Tenifayo","08091889190","Precious","Ajayi Adedoyin","Olowookere Morenike Alaba","08160357747","IMG_20230621_093552.jpg","Not Available","Friend","22, Oluyole Matogun Road","Hairdresser","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-21","2023-06-23","2023-07-27","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("90","09496231","017612","Lawal oluwatoyin Abose","09038801928","Amazing","Oyaosho Folakemi","Olaniyi gbenga","07033925973","IMG_20230620_180040.jpg","Available","husband","3 arolambo","Food","National Identity Number","27737792348","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-06-21","2023-06-09","2023-07-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("91","99895904","959016","Akinbarni Monsurat Iya Agbo","07089060688","Success","Alago Chidera","Bunmi Orija","08142465939","IMG_20230621_111511_039~2.jpg","Not Available","Sister","3 tanimowo st","Trader","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-06-15","2023-07-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("92","88907406","478137","Ojurongbe Kemi ","09130610894","Ayedun","Shoyebi Folashade","Ã€yedun olumide","07058072843","IMG_20230621_111500_600.jpg","Not Available","Brother","Oid path pipeline","Office worker","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-06-21","2023-06-22","2023-07-21","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("93","88020128","785398","Hassan Ajadi Suliamon","09070558501","Okiki","Alago Chidera","Moses Victor olamilikan","07039992751","IMG_20230620_130854_642~2.jpg","Not Available","Brother","9, akintayo","Welder","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-07-03","2023-08-03","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("94","10919056","172688","Olarewaju Musa ","08033511693","BLESSING","Omolayo Funmilayo","Olarewaju funmilayo","07033967780","IMG_20230620_145114_375.jpg","Not Available","Wife","13 oladapo Joshua st matogun","Hair dresser","Driver Licence","3333","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-06-21","2023-06-22","2023-07-21","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("95","43241256","195047","Alokolaro Afolashade Afolabi","09071953917","Okiki","Alago Chidera","Adeleke Balikis","08033793099","IMG_20230621_144602_231~2.jpg","Available","Brother","82 egbado road","Frozen food","National Identity Number","90699069530","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-07-03","2023-08-03","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("96","17929432","080281","Adeleye Idris ","07025892013","Idris","Alago Chidera","Paul omosoweni","08025521243","IMG_20230621_165527_367~2.jpg","Not Available","Friend","59 olatoyin st power line","Transport","Voter Card","94479065814","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-06-21","2023-07-03","2023-08-03","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("97","00084308","400080","Rasaq Fatimo ","09046101776","Gudugba","Ajayi Adedoyin","Kayode Oluwatoyin","09032302911","IMG_20230620_111622_1_1.jpg","Not Available","Sister","5, Atanda Close Off Gudugba","Food Seller","Voter Card","24-10-05-007","Daily","For Business","250000.00","0.00","50000.00","80000.00","96000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-22","2023-06-23","2023-07-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("98","14093229","130066","Tiamiyu Titilayo ","08062965795","Ayedun","Shoyebi Folashade","Omowumi Ayedun","08136175094","IMG_20230620_103757_516.jpg","Available","Sister","Oid path pipeline","Provision","National Identity Number","45917158487","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-06-22","2023-06-22","2023-07-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("99","21450622","114084","Fatai isiwat Abose","08066119511","Isiwat","Oyaosho Folakemi","Fatima aminat","08066119511","IMG_20230622_090502.jpg","Not Available","Daughter","20 unity estate gideon bus stop","Student","Voter Card","1111","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-06-22","2023-06-22","2023-06-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("100","29656504","803138","Qudril Mariam Temitope","08132913903","Toyin","Oyaosho Folakemi","Anuoluwa Onadapo","08066719830","IMG_20230619_174124.JPG","Not Available","husband","3 bakers street enilolobo","Transport","Voter Card","A28758053","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-06-22","2023-06-23","2023-07-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("101","00581786","153949","Ariyo ola Ariyo","07044988192","Ariyo","Oyaosho Folakemi","Wasiu Akani","07039395500","IMG_20230626_092349.jpg","Not Available","father","15 arolambo matogun","Butcher","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-06-26","2023-06-26","2023-07-31","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("102","12553123","801029","Ogunkanbi Ishola ","08176533160","Ticket 1","Ajayi Adedoyin","Oderinde Olumide","09019022044","IMG_20230626_172129_1.jpg","Not Available","Brother","52, Alausa Road Giwa Oke Aro","Driver","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-06-26","2023-06-02","2023-07-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("123","34180021","889051","Lawal Monsurat Iya ope","09067063576","Esther","Alago Chidera","Lawal Waheed","08102056450","IMG_20230620_101523_648.jpg","Available","Husband","Same","Tyier","National Identity Number","32239977144","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-03","2023-07-06","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("104","50275074","237689","Adio Mosurat ","09127686455","TAJU BELLO","Omolayo Funmilayo","Ojubo folasade","08026631413","IMG_20230622_132122_270.jpg","Not Available","Sister","No5 Ayo idowu close","Trader","Driver Licence","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-06-27","2023-06-08","2023-07-07","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("105","02505063","073345","Adedeji Fatimo ","07035063857","TAJU BELLO","Omolayo Funmilayo","Olaosebikan Cecilia","09039567930","IMG_20230626_105310_940.jpg","Not Available","Sister","No 3 ramoni close","Trader","Driver Licence","3333","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-06-27","2023-05-11","2023-07-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("106","43662404","073345","Adedeji Fatimo ","07035063857","TAJU BELLO","Omolayo Funmilayo","Olaosebikan Cecilia","09039567930","IMG_20230626_105310_940.jpg","Not Available","Sister","No 3 ramoni close","Trader","Driver Licence","3333","Daily","For Business","250000.00","0.00","50000.00","","","","2023-10-03","Omolayo Funmilayo","2023-06-27","","","","","decline","Inactive","decline","double posting");
INSERT INTO loan_request VALUES("122","83034529","750395","Sharafa fatima Adeola","08130701878","Habibat","Oyaosho Folakemi","Ojeniyi Basiratu","07031834026","IMG_20230701_123256.jpg","Available","Nebour","8 olalekan savage powerline","Provision","Voter Card","A2355532","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-03","2023-07-03","2023-08-04","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                       ");
INSERT INTO loan_request VALUES("107","76692642","303142","Raheem modinat Abose","09158671061","Eleja","Oyaosho Folakemi","Ajao Zanaib Adesola","09057291997","IMG_20230701_122907.jpg","Not Available","Friend","9 olaseni Adebuyi street Powerline bus stop","Provision","Voter Card","1111","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-01","2023-06-29","2023-07-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("108","52980772","017612","Lawal oluwatoyin Abose","09038801928","Amazing","Oyaosho Folakemi","Olaniyi gbenga","07033925973","IMG_20230701_130808.jpg","Available","husband","3 arolambo matogun road","Food","National Identity Number","27737792348","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-01","2023-06-08","2023-07-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("109","06417252","756856","Adegunle Adefunke ","08168955455","Ticket 2","Ajayi Adedoyin","Labiran Adebimpe","08054254448","Screenshot_2023-07-01-17-31-37-141_com.whatsapp_1.jpg","Not Available","Sister","Water Co-operation","Provision","Voter Card","24-08-09-027","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-01","2023-06-09","2023-07-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("110","57607188","972953","Oladejo Mariam Abioun","07033493205","Mariam","Oyaosho Folakemi","Raski Folajimi ajoke","08172847096","IMG_20230701_130314.jpg","Not Available","mother","9 olaseni Adebuyi street Powerline bus stop","Papper","Voter Card","A25710322","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-06-23","2023-07-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("111","82854423","972490","Lasisi zanib ashabi","08073271092","Princess","Oyaosho Folakemi","Lasisi Yusuf Olatunji","09074292189","IMG_20230701_125706.jpg","Not Available","husband","ogaa. Oke ira","Transport","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-07-03","2023-08-04","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("112","08705116","311159","Olukoya Abiodun Kayode","08133425962","Olukoya","Oyaosho Folakemi","Doyin Adeyemo","09025895710","IMG_20230613_183832.jpg","Available","Friend","22olatoye street powerline","National parmit","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-06-07","2023-07-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("113","63252753","311159","Olukoya Abiodun Kayode","08133425962","Olukoya","Oyaosho Folakemi","Doyin Adeyemo","09025895710","IMG_20230613_183832.jpg","Available","Friend","22olatoye street powerline","National parmit","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","","","","2023-10-03","Oyaosho Folakemi","2023-07-02","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("114","14754478","399764","Tijani Temitope Aina","08143545699","Tope","Oyaosho Folakemi","Rufus Omolara","09097791317","IMG_20230701_130619.jpg","Available","Friend","10 olatoye street powerline","Food","National Identity Number","44706732335","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-06-08","2023-07-14","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("115","30106147","374982","Onakayode oluwatoyin precious","09027048848","Toyin","Oyaosho Folakemi","Onadapo Olufunke","09027048848","IMG_20230702_193939.jpg","Available","mother inlow","20 unity estate gideon bus stop","Provision","National Identity Number","88831410018","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-06-16","2023-07-21","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("116","80443689","803138","Qudril Mariam Temitope","08132913903","Toyin","Oyaosho Folakemi","Anuoluwa Onadapo","08066719830","IMG_20230702_210307.jpg","Available","husband","3 bakers street enilolobo","Transport","National Identity Number","91383942932","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-07-10","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("117","19106776","212692","Olulola grace joy","09162544521","Temitope","Oyaosho Folakemi","Blessing Akinside","07066105717","IMG_20230701_124655.jpg","Available","friend","11 adebuyi adeoje close ile ise","Food","Voter Card","A28572580","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-02","2023-06-23","2023-07-21","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("118","51292914","110431","Olowokere Okuwasola ","08113683748","Okiki","Alago Chidera","Foloundho Funnilay","09072116031","IMG_20230703_092636_836~2.jpg","Not Available","Neighbors","15 oguntade","Hair dresser","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-03","2023-07-03","2023-08-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("119","98332606","061284","Adegbola Adewale Mukaila","08038258386","Adewale","Ajayi Adedoyin","Busayo olagunju","08146716828","IMG_20230703_092414.jpg","Not Available","Sister","Arolambo inside","Trade","National Identity Number","11111","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-03","2023-07-03","2023-08-07","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("120","76397696","060355","Jimoh Adijat Abidun","08123730020","Temitope","Oyaosho Folakemi","Arogundade Fausat","09122108004","IMG_20230701_131006.jpg","Available","friend","10 ishola street ile ise","Fashion style","National Identity Number","97726223934","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-03","2023-07-03","2023-08-03","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("121","63092861","318572","Odeyale Olalekan Afiz","08027721593","Isholiki","Ajayi Adedoyin","Odeyale Lateefat","08027358432","IMG_20230620_085251_1 (2).jpg","Not Available","Wife","5, Akinlade Close Gudugba","Provision","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-03","2023-06-08","2023-07-13","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("124","39115496","272306","Odo sunday Akanchawa","09076513373","Akanchawa","Oyaosho Folakemi","Blessing Odo","09133607264","IMG_20230701_124539.jpg","Available","Daughter","4 owolanwa junction","beauty Empire","Voter Card","1111","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-03","2023-07-03","2023-08-04","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("125","19854036","852723","Fashina Abimbola patience","09028489969","Habibat","Oyaosho Folakemi","Anthony mary","09122258581","IMG_20230701_123855.jpg","Available","niebour","22 Olaore streets","Provision","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-03","2023-07-03","2023-08-04","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("126","62252040","209507","Alabi Fausat ","08080451196","Ilerioluwa","Shoyebi Folashade","Moshood  Alabi","08179389879","IMG_20230629_175253_453.jpg","Not Available","Son","6 Salami   st Agbado","Transporter","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-04","2023-07-04","2023-08-04","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("127","90205465","209507","Alabi Fausat ","08080451196","Ilerioluwa","Shoyebi Folashade","Aweda  comfort","07012987372","IMG_20230704_105504_263.jpg","Available","Sister","5 salami st agbado","Tailor","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-04","2023-07-04","2023-08-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("128","06664042","763868","Ajiboye Iyabo ","09046543210","ALORE","Omolayo Funmilayo","Mrs Aforiwo Adebisi","08063311487","IMG_20230704_111343_538.jpg","Not Available","Friend","No2 Toyin crescent","Hair dresser","National Identity Number","81166644520","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-04","2023-07-05","2023-08-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("129","23945978","630840","Tajubello Adijat ","09130984934","TAJU BELLO","Omolayo Funmilayo","Akande Toyin","08143114869","16884673258551136777770500016946.jpg","Not Available","Daughter","No8 power line","Food seller","National Identity Number","26302157948","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-04","2023-07-05","2023-08-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("130","36858647","491909","Daramola Adeniyi joseph","09094994366","Yaba","","Daramola Mojisola","09012709823","IMG_20230705_091427.jpg","Available","wife","No 12 salami ojerinde streets Ola ore","Farmming","National Identity Number","11315300369","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-05","2023-07-06","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("131","89944106","555148","Akerele Yemi Dolapo","07049228690","Dolapo","Ajayi Adedoyin","Akerele Enitan","08101325798","IMG_20230705_103748_1.jpg","Not Available","Daughter","24, Ori Ade Street Abule Egba","Student","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-05","2023-07-10","2023-08-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("132","00304761","552927","Olaitan Taiwo Adekemi","08064486006","Eledie","Ajayi Adedoyin","Ailera Wasilat Abioye","08120851303","IMG_20230620_111703_1.jpg","Not Available","Friend","1, Adeyemi Street Ishaga","Selling Shoes &amp; Cloths","International Passport","5477134144","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-05","2023-07-10","2023-08-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("133","05342452","674572","Lidipe Omolabake ","08022735959","Abaniseloluwa","Shoyebi Folashade","Lidipe Babatunde","08034097786","IMG_20230706_090742_442.jpg","Not Available","Son","25 lidipe lane crossing","Mechanic","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-06","2023-07-07","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("134","10648796","807462","Gordon Kelechi Uchendu","08136595000","UCHENDU","Omolayo Funmilayo","Uchendu oluchi","08064201057","16886491398798596795169100070631.jpg","Not Available","Wife","2/4 Toyin compound","Worker","National Identity Number","33876361589","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-06","2023-07-11","2023-10-17","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("135","65988410","675672","Adufe Olabayo ","07069936579","Adufe","Omolayo Funmilayo","Balogun sekinat","08138949856","16886501021234572192147644292295.jpg","Not Available","Friend","No24 ancluse","Trader","National Identity Number","33015869881","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-06","2023-07-12","2023-08-17","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("136","62657001","658264","Ezealora kk Favour ","08163845591","Abaniseloluwa","Shoyebi Folashade","Amerechi success","08163845591","IMG_20230706_091857_242.jpg","Not Available","Neibour","10 New  Rd Agbado","Cloth","Voter Card","49223649072","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-06","2023-07-07","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("137","07056212","645893","Fasasi Latefat ","09031169798","Omodara","Ajayi Adedoyin","Mukaila Nurudeen","07030446085","IMG_20230710_152324.jpg","Not Available","Sister","6, Adeshina Street","Painter","National Identity Number","41404245740","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-10","2023-07-13","2023-08-16","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("138","77093716","875454","Ashimolowo Nimota ","08065350027","Ilerioluwa","Shoyebi Folashade","Adeshina Opeyemi","08065350027","IMG_20230711_084632.jpg","Not Available","Friend","5, Oluseyi St Agbado","Food Stuff","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-11","2023-07-12","2023-08-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("139","21503491","642032","Yekini Aweda ","08032224213","Ilerioluwa","","Jayeoba Abiodun","09035455631","IMG_20230711_084115.jpg","Not Available","Brother","5, Salami Street","Transporter","National Identity Number","17647534060","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-11","2023-07-12","2023-08-16","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("140","16260014","493517","Ojekunle Yemisi Apinke","07085445052","Ilerioluwa","Shoyebi Folashade","Ojubanire","09163707266","IMG_20230711_084417.jpg","Not Available","Sister","7, Salami Street","Busines Woman","National Identity Number","45362562657","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-11","2023-07-12","2023-08-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("141","07509032","231633","Ayinde Fatimo Omolabake","08028268414","Ope","Ajayi Adedoyin","Aradoye Florence","08028268414","IMG_20230711_115634 (1).jpg","Not Available","Daughter","1, Irepodun Close Toko Taya Bus Stop","Fashion Designer","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-11","2023-07-13","2023-08-11","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("142","21239880","673526","Babarinde Florence Abiodun","09079903672","Florence","Oyaosho Folakemi","Babarinde Matthew","09054962917","IMG_20230712_093022.jpg","Available","husband","No6 oredola street asuje","Farming","Voter Card","A23006392","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-12","2023-07-12","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("143","87357874","789000","Salami Aminat Omolara","08152221362","Aminat","Oyaosho Folakemi","Adegite maria","07025128559","IMG_20230710_172431.jpg","Available","sister","No 6 Fatai  no sir u street crossing","Hair dresser","National Identity Number","88372197347","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-12","2023-07-12","2023-08-16","Sanni Bukola","","Confirmed","Active","undelete","New loan
                                                        ");
INSERT INTO loan_request VALUES("144","01178616","318572","Odeyale Olalekan Afiz","08027721593","Isholiki","Ajayi Adedoyin","Odeyale Latefat","08027358432","IMG_20230620_085251_1 (1).jpg","Not Available","Wife","5, Akinlade Close","Provision","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-12","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("145","49564910","587862","Lidipe Babatunde ","08034097786","Abaniseloluwa","Shoyebi Folashade","Lidipe toyksi","08149496086","IMG_20230706_091940_261.jpg","Not Available","Wife","25 lidipe lane crossing","Nurse","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-13","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("146","46191601","094263","Umaru Rahimat ","09028870579","UMARU","Omolayo Funmilayo","Prince Deborah anabel","09023677801","16892567820253448771003518719474.jpg","Not Available","Sister","No3 yekini st, yewande Giwa","Nurse/Provisions","National Identity Number","27104112533","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-13","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("147","32633099","765814","Nzejekpe Ikebana ","07015270416","Ik","Alago Chidera","Mgbereta cajeten","07035814951","IMG_20230620_101513_403.jpg","Not Available","Friend","7 alakuko road","Wears","Not Available","90699069539","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-13","2023-07-13","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("148","63357496","664513","Oladele Bukky Funmi","07010238363","Esther","Alago Chidera","Muritola Taofeeq","08027197456","IMG_20230713_160728_358~2.jpg","Not Available","Husband","2 Akinbarniade","Mechanic","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-13","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("149","59723577","431332","Jerry Ayomide Kuridat","09127463195","Jerry","Ajayi Adedoyin","Aderinoye Jimoh","09127463195","IMG_20230613_090655.jpg","Not Available","Brother","5, Yusuf Close Rogo","Tricycle","National Identity Number","08/03/2021","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-13","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("150","00011020","664256","Sodiz Sarah Oluwaseun","08029539184","Arike","Shoyebi Folashade","Sodiq Yusuff","07089585611","IMG_20230714_100758.jpg","Not Available","Husband","47, Olusegun Oshoba Road Agbado","Printing","National Identity Number","76843596884","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-14","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("151","17041308","132343","Dasiliva Tosin joy","07041788315","Joy","Oyaosho Folakemi","Gbenro Rose Oke","08141641262","IMG_20230714_162103.jpg","Available","friend","No12 ijaye streets off CAC church","Provision","Voter Card","A24750726","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-14","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("152","20032213","618494","Azuru Glory Kelechi","08068187061","Azuru","Omolayo Funmilayo","Azuru Uzochukwu","08034655478","16896018389237683191482859846938.jpg","Not Available","Husband","1/3 new life pentecostal","Transporter","Driver Licence","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-17","2023-07-14","2023-08-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("153","89541345","441470","Ademola Aminat Iyabo","08186657493","Ilorin","Oyaosho Folakemi","Mondinat Kareem Ajoke","09138601062","IMG_20230718_081930.jpg","Available","sister","No18 boundary street Agbado crossing","Provision","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-18","2023-07-18","2023-08-22","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("154","09714256","841556","Adeniyi Titilope Taiwo","08057042761","Temitope","Oyaosho Folakemi","Rokib taiwo","09155004587","IMG_20230718_082205.jpg","Available","Inlaw","ishaga-agege","transportation","National Identity Number","89345222363","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-18","2023-07-19","2023-08-23","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("155","30834607","073345","Adedeji Fatimo ","07035063857","TAJU BELLO","Omolayo Funmilayo","Olaosebikan Cecilia","09039567930","16897814702076413533275294075120.jpg","Not Available","Neighbor","No 3 ramoni close","Trader","Driver Licence","4444","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-19","2023-07-20","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("156","30275084","157714","Adeleke Tunmise Temitope","09055303129","Morenike","Ajayi Adedoyin","Adeniyi Toyin","09075492946","IMG_20230719_151108_1.jpg","Not Available","Friend","3, Akinwunmi Compound","Vegetable","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-19","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("157","43853093","237689","Adio Mosurat ","09127686455","TAJU BELLO","Omolayo Funmilayo","Wijobi magret","09165827008","16897820879798030680617710780972.jpg","Not Available","Sister","No44 tajubello ishaga","Trader","Driver Licence","3333","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-19","2023-07-19","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("158","52389520","390918","Adamu Taiwo ","09049470816","Semilore","Shoyebi Folashade","Emuosho Gbenga","09049477081","IMG_20230719_083214_227.jpg","Not Available","Brother","9, Tola Samuel Agbado","Brivcklayer","National Identity Number","88688039402","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-19","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","
     Renewal                                                   ");
INSERT INTO loan_request VALUES("159","73745385","805945","Lasisi Adijat Ayoade","09126656979","Semilore","Shoyebi Folashade","Jamiu Shola","09126656979","IMG_20230719_082654_418.jpg","Not Available","Friend","4, Salami Street","Food Stuff","Voter Card","90F5033426913149","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-19","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("160","96828719","482965","Adebayo Kudirat Tanwa","09015978243","Semilore","Shoyebi Folashade","Ogunshola Tope","09015978243","IMG_20230719_082646_480.jpg","Not Available","Friend","30, Abosule Street","Food Stuff","Voter Card","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-19","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                       ");
INSERT INTO loan_request VALUES("161","37597821","501188","Oladele Kehinde Oriyomi","07055702042","God gift","Alago Chidera","Ugochukwu  pedro","08047042592","IMG_20230714_163531_152~2.jpg","Not Available","Friend","4 agora road adiyan Ben key","Carpentry work","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-20","2023-07-18","2023-08-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("162","09560615","985389","Ubakar Kenneth Favor","07016888067","God gift","Alago Chidera","Idegwu Kenneth","08159187107","IMG_20230714_163455_726~2.jpg","Available","Friend","16 ipetu ijesha street ijaye ojokorov","Transport","National Identity Number","51361971460","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-20","2023-07-18","2023-08-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("163","57129296","790558","Oladele Lateef Oriyomi","09076053525","God gift","Alago Chidera","Agboola Oluwaseyi","07060615020","IMG_20230720_090227_261~2.jpg","Available","Friend","6 igbara street","Transport","National Identity Number","85201584525","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-20","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("164","03130283","932701","Salau Kabiru Abefe","08101306152","K.b","Oyaosho Folakemi","Aina Matthew Adebayo","07011360938","IMG_20230719_182204.jpg","Available","friend","No 12 odetunde railway line Agbado crossing","transportation","Driver Licence","67292-927252-98087","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-21","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("165","08433618","795502","Fatimo Ayandele ","09048690514","Boluwatife","Shoyebi Folashade","Ayandele muraina","09048690514","16899410208415113033847292251900.jpg","Not Available","Husband","Same","Transport","Driver Licence","4444","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-21","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("166","22575680","636460","Odoro Felix ","08031910615","Boluwatife","Shoyebi Folashade","Zubuke onyekacha","08031910615","16899430515532071454406838859718.jpg","Not Available","Friend","Same","Transport","National Identity Number","44881633364","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-21","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("167","25170616","186539","Odoro Rita ","08032844263","Boluwatife","Shoyebi Folashade","James odoro","08032844263","16899436534294119542689302909228.jpg","Not Available","Brother","Same","Transport","Driver Licence","3333","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-21","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("168","80004861","752410","Okorie gift oyinye","07069692243","Good market","Oyaosho Folakemi","Herbert Rosemary omoiye","08134626043","IMG_20230721_141545.jpg","Available","sister","No4 Murphy street ishaga matogun","farmming","National Identity Number","61278628026","Daily","For Business","250000.00","0.00","50000.00","150000.00","180000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-21","2023-07-21","2023-08-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("169","66119281","410460","Olajide Emmanuel ","09160128014","UMARU","Omolayo Funmilayo","Olajide Elizabeth","08025926131","16902113636138492063188146535598.jpg","Not Available","Daughter","No1 wilisco Estate","Caterer","National Identity Number","16351486455","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-07-24","2023-07-26","2023-08-29","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("170","40771507","844684","Nnamdi Sabastine Samuel","07061119740","Nnamdi","Ajayi Adedoyin","Ogungbe Bridget","08172000126","IMG_20230725_093242.jpg","Not Available","Friend","39, Olatoye Pipeline","Teacher","National Identity Number","LA-FILE-SOLUTIONS OBA AKR","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-25","2023-07-28","2023-08-31","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("171","25397733","154758","Abanise Titilayo ","08068404205","Precious","Ajayi Adedoyin","Andrew Jude","08068889398","IMG_20230725_153434.jpg","Not Available","Friend","Alaba Close Gudugba Bus Stop","Business Man","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-25","2023-07-28","2023-08-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("172","69482504","372437","Yusuf Olayinka ","08161757070","Wisdom","Shoyebi Folashade","Odeyemi segun","08063104189","IMG_20230726_083433_679.jpg","Available","Husband","5 David Amodu Agbado","Gas","National Identity Number","91736125652","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-26","2023-07-28","2023-08-30","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("173","46227687","712907","Ogunmodede Kafayat ","07030698408","Wisdom","Shoyebi Folashade","Ogunmodede kunle","09057239220","IMG_20230726_083511_603.jpg","Available","Husband","Ayoola Edun","Tiller","National Identity Number","31954735062","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-07-26","2023-07-28","2023-08-30","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("174","71876520","471681","Lateef Risikatu Olatundun","09096945756","Olatundu","Oyaosho Folakemi","Lateef muyibat Gbemisola","07047457315","IMG_20230727_085825.jpg","Available","daughter","No12 sholeye street, fasho bus stop","Hair dresser","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-27","2023-07-27","2023-08-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("175","38386988","374982","Onakayode oluwatoyin precious","09027048848","Toyin","Oyaosho Folakemi","Onadapo Olufunke florence","09027048848","IMG_20230727_092126.jpg","Available","In-law","No 20 unity estates Gideon bus/stop","Provision","National Identity Number","88831410018","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-07-27","2023-08-02","2023-09-06","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("176","10340510","559552","Omotilewa Omotope Florence","08122840332","Four Square","Ajayi Adedoyin","Omotilewa Solomon","08059444647","IMG_20230614_093757_1 (1).jpg","Not Available","Husband","7, Tunde Abatan Street","Sailor","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","150000.00","180000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-07-27","2023-07-28","2023-08-30","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("177","86543248","469928","Samson Latifat Abiodun","07034061188","Okiki","Alago Chidera","Okelanfa Mopelola Abebi","09057971033","IMG_20230728_142855_632~2.jpg","Available","Sister","1/2awakan agbado","Clothes","Voter Card","36871529883","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-07-28","2023-08-21","2023-09-22","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("178","11173936","504614","TEMITOPE ESTHER ","08118383111","EMERALD","Ibitomi Esther","AFOLAYAN OPEYEMI","07031483481","20230725_162821.jpg","Not Available","RELATIVE","3,OLAEGBON STREET,KOLA","Factory worker","National Identity Number","1614444262","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ibitomi Esther","2023-07-28","2023-08-01","2023-10-03","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("179","74492221","011570","Daodu Abosede Comfort","08121266554","Comfort","Ajayi Adedoyin","Ayoola Kuridat","08022615609","IMG_20230801_111352.jpg","Not Available","Friend","1, Ayinde Ajibode Street","Nurse","Not Available","LA45C0037493","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-01","2023-08-03","2023-09-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("180","27706810","005778","Babatunde Bidemi Bukola","08165503384","Iya koko","Oyaosho Folakemi","Babatunde Janet","08126221498","IMG_20230801_105119.jpg","Available","daughter","No24 adeniji street dalemor alakuko","Woman wear","National Identity Number","1111","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-02","2023-08-04","2023-09-08","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("181","58073951","922803","Jimoh Bola Risikatu","08025925491","Chemist","Oyaosho Folakemi","Oresile kehinde","08025269016","IMG_20230802_091744.jpg","Available","friend","No19 aduni okolawon","shacco saller","National Identity Number","89137907124","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-02","2023-08-03","2023-09-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("182","79132516","268816","Taofeex Asisat Wemimo","08064599521","Odunayo","Ajayi Adedoyin","Kehinde Rokibat","09014196545","IMG_20230802_153953.jpg","Not Available","Daughter","11, Adeshina Street Off Olusesi","Hairdresser","National Identity Number","4513810727","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-02","2023-08-03","2023-09-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("183","75784638","696058","Adeboye Diyaolu felicia","07064538447","Diyaolu","Oyaosho Folakemi","Diyaolu opeyemi","08156129838","IMG_20230801_104731.jpg","Available","daughter","No 14 egbatedo street powerline","Teacher","National Identity Number","94541627945","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-03","2023-09-19","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("184","18494497","865242","Solalo juliana chinyere","08063944094","Chinyere","Oyaosho Folakemi","Olaweseyi mathew","07035183392","IMG_20230802_091957.jpg","Not Available","neighbor","No 17 suraju onajonwo street tau bello","Provision","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-03","2023-08-04","2023-09-07","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("185","93690702","630840","Tajubello Adijat ","09130984934","TAJU BELLO","Omolayo Funmilayo","Akande Toyin","08143114869","16911448075884381173185453349236.jpg","Not Available","Daughter","No 8powerline","Food seller","National Identity Number","26302157948","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-08-04","2023-08-04","2023-09-07","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("186","89683147","472004","Lawal Onaopemipo Oluwakemi","08061389104","Onaopemipo","Oyaosho Folakemi","Lawal temitope","08104642811","IMG_20230801_103120.jpg","Available","daughter","No 25 olatoye street","Electronic marketer","National Identity Number","472004","Daily","For Business","250000.00","0.00","50000.00","","","","2023-10-03","Oyaosho Folakemi","2023-08-04","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("187","79571717","212692","Olulola grace joy","09162544521","Temitope","Oyaosho Folakemi","Okon Mary indofia","09091451838","IMG_20230804_134719.jpg","Available","sister","No 10 olatoye street","food seller","National Identity Number","20685902905","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-04","2023-08-04","2023-09-06","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("188","80848852","113886","Amidu Oladeso Hammed","08022626179","Mariam","Oyaosho Folakemi","Fadiaro moses","08038458442","IMG_20230801_104631.jpg","Available","friend","No 3 adeodu street","transportation","National Identity Number","85549242986","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-06","2023-08-01","2023-09-01","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("189","67368103","491180","Adegunle Adefunke ","08168955455","Ticket 2","Ajayi Adedoyin","Labiran Adebimpe","08024038961","IMG_20230807_172707.jpg","Not Available","Sister","1, Abude Close Water","Drinks","Voter Card","90F5B02EFC295792629","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-07","2023-08-09","2023-09-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("190","79479093","383250","Kafayat Shobwale Iya mary","09169805340","Esther","Alago Chidera","Bose Olanrewaju","08149553079","IMG_20230809_093537_717~2.jpg","Not Available","Friend","Agbado","Fashion designer","Not Available","11111112","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Alago Chidera","2023-08-09","2023-08-10","2023-09-14","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("191","36462547","801029","Ogunkanbi Ishola ","08176533160","Ticket 1","Ajayi Adedoyin","Oderinde Olumide","09019220442","IMG_20230809_171624.jpg","Not Available","Brother","52, Alausa Road Oke-Aro","Driver","Driver Licence","FFF55285AA95","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-09","2023-08-11","2023-09-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("192","58932579","700203","Oginni Bose Ayodeji","08162939266","Iya koko","Oyaosho Folakemi","Ayeni Kayode Olubunmi","08065018558","IMG_20230810_084211.jpg","Available","church member","No 2 boundary street Agbado","pastor","Driver Licence","KRD12519AA01","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-10","2023-08-10","2023-09-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("193","40290924","450220","Badmus Jamiu ","08068404205","Oremeta","Ajayi Adedoyin","Badmus Mosurat","09120845662","Screenshot_2023-08-10-16-13-03-391_com.growupapps.photogallery_1 (1).jpg","Not Available","Wife","6, Ore-Meta Off Agbado Oremeta","Fashion Designer","National Identity Number","2222","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-10","2023-08-11","2023-09-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("194","34175099","763868","Ajiboye Iyabo ","09046543210","ALORE","Omolayo Funmilayo","Aforiwo Adebisi","08063311487","16917407716377753880668493248513.jpg","Not Available","Friend","No 2 Toyin crescent fakile, Giwa","Hair dresser","National Identity Number","81166644520","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-08-11","2023-08-18","2023-09-22","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("195","89796411","429234","Akinbami Banjo Felix","08172756138","Oremeta","Ajayi Adedoyin","Makinde Ayobami","08038519993","IMG_20230815_160730.jpg","Not Available","Brother","1, Ifelodun Street Abule Ijoko","Generator Repair","National Identity Number","42404397910","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-15","2023-08-17","2023-09-17","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("196","06957239","161594","Fapodunda Yetunde Olanike","09030053198","Comfort","Ajayi Adedoyin","Daodu Sarah","08111435795","IMG_20230817_084737.jpg","Not Available","Sister","6, Ayolede Alaba Street","Hairdresser","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-17","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("197","09310390","318572","Odeyale Olalekan Afiz","08027721593","Isholiki","Ajayi Adedoyin","Odeyale Latefat","08027358432","IMG_20230620_085251_1.jpg","Not Available","Wife","5, Akinlade Close","Provision","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-17","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("198","19252828","405947","Akinboni Adenike ","07017909589","Oke Ayo","Ajayi Adedoyin","Adegboye Adejoke","07017909589","IMG_20230816_170359.jpg","Not Available","Mother","Baracheal Groups of School","Food Seller","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-17","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("199","27228517","229704","Babatunde Olusegun ","08036525816","Coach","Ajayi Adedoyin","Christian Hannah Opeyemi","08101282576","IMG_20230613_090638 (2).jpg","Not Available","Daughter","1, Bailey Street Off Taju-Bello","Teacher","National Identity Number","64197792118","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-17","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","renewalNew Loan
                                                        ");
INSERT INTO loan_request VALUES("200","33851503","409067","Jimoh Khadijat Ayomide","09032544510","Toke","Omolayo Funmilayo","Amusan Olaoluwa","07037158141","16922736905206745403055663406897.jpg","Not Available","Husband","Same address","Transporter","National Identity Number","42904640803","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-08-17","2023-08-23","2023-10-23","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("201","59888985","157714","Adeleke Tunmise Temitope","09055303129","Morenike","Ajayi Adedoyin","Adeniyi Toyin","09075492946","IMG_20230719_151038_1.jpg","Not Available","Sister","3, Akinwunmi Compound","Vegetable","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-18","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("202","36501323","094263","Umaru Rahimat ","09028870579","UMARU","Omolayo Funmilayo","Aina folorunsho","08022056869","16928861226175800773126026257991.jpg","Not Available","Husband","No4 adepoju Aina balogun","Fashion designer","National Identity Number","58006459672","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-08-24","2023-08-24","2023-09-24","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("203","44641723","154758","Abanise Titilayo ","08068404205","Precious","Ajayi Adedoyin","Andrew Jude","08068889398","IMG_20230725_153505 (1).jpg","Not Available","Friend","3, Alaba Close Off Gudugba","Sales Representative","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","100000.00","120000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-24","2023-08-25","2023-09-25","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("204","43704057","431332","Jerry Ayomide Kuridat","09127463195","Jerry","Ajayi Adedoyin","Aderinoye Jimoh","08100116728","IMG_20230613_090655 (1).jpg","Not Available","Brother","5, Yusuf Close Rogo","Tricycle","National Identity Number","LA-AFRITECH MULTI CONCEPT","Daily","For Business","250000.00","0.00","50000.00","0.00","0.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-08-25","0000-00-00","0000-00-00","Sanni Bukola","","Confirmed","Active","undelete","");
INSERT INTO loan_request VALUES("205","39383208","703115","Babarinde Florence Biodun","09079903672","Florence","","Babarinde Matthew","09054962917","IMG_20230827_121514.jpg","Available","husband","No 6 oredola street","Farming","Voter Card","A23006392","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-27","2023-08-18","2023-09-18","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("206","09783134","972953","Oladejo Mariam Abioun","07033493205","Mariam","Oyaosho Folakemi","Folajimi rashaki","08172847096","IMG_20230827_123545.jpg","Available","Mother","No 9 olaseyi abuyi street","Pepper seller","Voter Card","222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-27","2023-08-16","2023-09-16","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("207","23230154","914877","Kareem Olawale Abiodun","08111253462","ALUBA","Oyaosho Folakemi","Omosanyat kafayat","07058472692","IMG_20230829_084612.jpg","Available","wife","No 35 agbéde street abule osho","clothes","Voter Card","90F5AEAF13296743449","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-08-29","2023-08-25","2023-09-25","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("208","01324314","115526","Balogun Sekinat ","08138949856","Adufe","Omolayo Funmilayo","Olaniyi Akeem","08055845540","16933126515003723164039942447034.jpg","Not Available","Friend","No6 Adeleye close sesi","Technician","National Identity Number","33865073321","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-08-29","2023-08-29","2023-09-29","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("209","01040775","309260","Adeola Adeniyi Iyanu","09166258320","Mariam","Oyaosho Folakemi","Oshinsolu","09091418336","IMG_20230830_170018.jpg","Not Available","Sister","No 23 olaore street powerline","Fashion Designer","National Identity Number","22405475750","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-01","2023-08-15","2023-09-15","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("210","07686976","434642","Babatunde Kemi Tayo","09162742361","kemi","Oyaosho Folakemi","Funsho Robeth","08108266017","IMG_20230830_170427.jpg","Not Available","Sister","No 17 ishola street  ile ise","Makeup Artist","National Identity Number","32605212061","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-01","2023-08-18","2023-09-22","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("211","02573935","642032","Yekini Aweda ","08032224213","Ilerioluwa","","Adepoju","Ayo","IMG_20230901_111917_574.jpg","Not Available","Brother","7salami st agbado","Driver","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-01","2023-09-01","2023-10-03","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("212","94272749","642032","Yekini Aweda ","08032224213","Ilerioluwa","","Adepoju","Ayo","IMG_20230901_111917_574.jpg","Not Available","Brother","7salami st agbado","Driver","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","","","","2023-10-03","Shoyebi Folashade","2023-09-01","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("213","77573768","410460","Olajide Emmanuel ","09160128014","UMARU","Omolayo Funmilayo","Olajide Elizabeth","08025926131","16935693737523164325690107681807.jpg","Not Available","Daughter","No1 wilisco Estate","Caterer","National Identity Number","16351486455","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-01","2023-09-02","2023-12-03","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("214","83872455","723508","Famuyiwa Lola ","07058082025","Arike","Shoyebi Folashade","Famuyiwa Gabriel","07058082025","16935707823743638453026776623032.jpg","Not Available","Husband","Same address","Transport","National Identity Number","74907915109","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-01","2023-09-01","2023-10-03","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("215","81725142","261145","Fayemi Temitope Elizabeth","09044004045","Genesis","Oyaosho Folakemi","Fayemi Taiwo","07064453970","IMG_20230830_170955.jpg","Not Available","husband","No 1 fayemi close water","Orthopedic doctor","National Identity Number","39307489217","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-01","2023-09-01","2023-10-03","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("216","46820723","362807","Adeniji Taiwo Titilope","08057042761","Adeniji","Oyaosho Folakemi","Roqeeb. Sarah","09061177688","IMG_20230902_164630.jpg","Not Available","sister","No 13 adebuyi close","Fashion designer","National Identity Number","65574447223","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-02","2023-08-28","2023-09-28","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("217","94511426","976892","Mebel Irunkwar Kinse","08171300220","Iya fufu","Oyaosho Folakemi","William ugibebor","07064456256","IMG_20230830_170821.jpg","Not Available","brother","Tajubelo -bailey","transportation","National Identity Number","45693089060","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-02","2023-08-06","2023-09-06","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("218","24939110","092960","Odejimi Felicia Tosin","07010744778","Felicia","Oyaosho Folakemi","Ogunleye precious","22222222222","IMG_20230902_171951.jpg","Not Available","friend","No 11 Agbeke street Agbodo","22222222222222ww","National Identity Number","27409408897","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-03","2023-08-23","2023-09-23","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("219","81101205","752410","Okorie gift oyinye","07069692243","Good market","Oyaosho Folakemi","Rose Mary abart","08134626042","IMG_20230903_201021.jpg","Not Available","sister","No4 olaniyan  Fadairo street petesi bus stop matogun","Provision","National Identity Number","61278628026","Daily","For Business","250000.00","0.00","50000.00","200000.00","240000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-03","2023-08-29","2023-09-29","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("220","00283220","700203","Oginni Bose Ayodeji","08162939266","Iya koko","Oyaosho Folakemi","Ayeni Kayode Olubunmi","08065018558","IMG_20230903_203524.jpg","Not Available","church member","No2 Boundary street crossing","Driver","Driver Licence","KRD12519AA01","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-03","2023-08-11","2023-09-11","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("221","38893856","144137","Osunpidan lola ","08105263246","Iya kola","Oyaosho Folakemi","Osunpidan isiah ola","08030669418","IMG_20230903_205315.jpg","Not Available","husband","No29 Ayoola Agbado crossing","Building contractor","National Identity Number","42285207617","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-03","2023-08-08","2023-09-08","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("222","17043552","491909","Daramola Adeniyi joseph","09094994366","Yaba","","Daramola Mojisola","09012709823","IMG_20230810_172019.jpg","Not Available","wife","No12 salami Ojerinde street","farmming","National Identity Number","11315300369","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-03","2023-08-11","2023-09-11","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("223","64537657","186539","Odoro Rita ","08032844263","Boluwatife","Shoyebi Folashade","Ema","0803467175","IMG_20230901_171726_148.jpg","Available","Son","5 Badmus st Asuje","Salary worker","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-04","2023-09-06","2023-10-06","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("224","33394177","795502","Fatimo Ayandele ","09048690514","Boluwatife","Shoyebi Folashade","Gabriel Ayandele","08137335488","IMG_20230904_022907_710.jpg","Available","Husband","12 Folashade Campbell Asuje","Driver","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-04","2023-09-04","2023-10-04","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("225","79494208","113886","Amidu Oladeso Hammed","08022626179","Mariam","Oyaosho Folakemi","Olusoji Keji","09039732857","IMG_20230904_122851.jpg","Not Available","neighbor","No5 Adeodu street Ola ore","Shoes","National Identity Number","87567873982","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-04","2023-09-06","2023-10-06","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("226","87291825","073345","Adedeji Fatimo ","07035063857","TAJU BELLO","Omolayo Funmilayo","Olaosebikan Cecilia","09039567930","16938334201891580357447917403715.jpg","Not Available","Neighbor","No 3 ramoni close","Trader","Driver Licence","4444","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-04","2023-08-05","2023-09-05","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("227","87842615","471681","Lateef Risikatu Olatundun","09096945756","Olatundu","Oyaosho Folakemi","Lateef muyibat Gbemisola","07047457315","IMG_20230905_084250.jpg","Not Available","daughter","No 15 sholeye street fasho ope ilu","Hair dresser","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-05","2023-09-06","2023-10-06","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("228","12459835","274284","Ã€yedun Funke ","08187227246","Ayedun","Shoyebi Folashade","Omowumi Ayedun","08187267246","IMG_20230901_091443_763.jpg","Available","Daughter","5 old path Asuje 4000","Foodseller","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-05","2023-08-25","2023-10-25","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("229","43282482","128919","Adisa Nofisat morenikeji","08038074491","Princess","Oyaosho Folakemi","Abiodun Akinsanya","08022396406","IMG_20230810_172215.jpg","Not Available","sister","No 5 oladunioye street","Hair dresser","Not Available","1111","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-05","2023-08-09","2023-09-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("230","43820868","478137","Ojurongbe Kemi ","09130610894","Ayedun","Shoyebi Folashade","Olumide Ayedun","07058072843","IMG_20230905_092901_107.jpg","Not Available","Brother","17Ben k adiyan agbado","Govt worker","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-05","2023-08-04","2023-10-04","Sanni Bukola","","Confirmed","Active","undelete","renewal                                                        ");
INSERT INTO loan_request VALUES("231","39830049","005778","Babatunde Bidemi Bukola","08165503384","Iya koko","Oyaosho Folakemi","Oke Tolulope Abimbola","08105628954","IMG_20230905_144625.jpg","Not Available","neighbor","No1 Bailey compound taju bello","cereals and beverage","National Identity Number","19127979645","Daily","For Business","250000.00","0.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-05","2023-09-07","2023-10-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("232","16429000","922803","Jimoh Bola Risikatu","08025925491","Chemist","Oyaosho Folakemi","Mariam  Abdolhi","08096562318","IMG_20230905_152114.jpg","Not Available","Sister in-law","No 5 Aduni okanlawon crossing","chemist","National Identity Number","89137907124","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-05","2023-09-07","2023-10-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("233","51333963","025862","Emele Racheal ","08062261012","Ilerioluwa","Shoyebi Folashade","Emele Charles","08062261012","IMG_20230906_090855_28.jpg","Not Available","Husband","8, Salami Street Agbado","Transport","National Identity Number","63948176791","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-07","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("234","15641139","802093","Onuoha Salomey ","08062261012","Ilerioluwa","Shoyebi Folashade","Akpan","Stella","IMG_20230906_090829_942.jpg","Not Available","Sister","8, Salami Street Agbado","Ugu Seller","Voter Card","90F5B09C42295707110","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-07","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("235","39488504","545232","Obasa Funmilayo ","09168494699","Boluwatife","Shoyebi Folashade","Samuel Sadiq","08106151649","IMG_20230901_091323_960.jpg","Not Available","Brother","20, Badmus Street","Barber","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-07","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("236","59736605","288633","Kareem Funmilayo ","08080451196","Ilerioluwa","Shoyebi Folashade","Taibat Yekini","09034375943","IMG_20230906_101822_219_104730 (3).jpg","Not Available","Sister","Crossing","Fruit","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-07","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("237","40520050","452226","Kasali Rashidat ","08064420317","Blossom","Shoyebi Folashade","Kabiru Kasali","08055732106","IMG_20230906_090734_719.jpg","Not Available","Husband","5, Oriyomi Street","transporter","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-08","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("238","04406588","209507","Alabi Fausat ","08080451196","Ilerioluwa","Shoyebi Folashade","Moshood Alabi","07087865002","IMG_20230906_112549 (1).jpg","Not Available","Son","5, Salami Street","Transporter","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-06","2023-09-08","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("239","03577025","268816","Taofeex Asisat Wemimo","08064599521","Odunayo","Ajayi Adedoyin","Ke","09014196545","IMG_20230802_153953 (1).jpg","Not Available","Daughter","11, Adeshina Street Off Olusesi","Hair Dressing","Not Available","22222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-06","2023-09-08","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("240","82339859","107666","Goriola Fumilayo ","08084476839","Ire","Shoyebi Folashade","Odedina festus","08084476839","IMG_20230907_100324_775.jpg","Available","Brother","22 folaranmi st Agbado","Civil servant","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-07","2023-08-10","2023-10-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("241","40534925","974743","Faboro Femi ","08023754641","Divine","Shoyebi Folashade","Gbenga faboro","09057239220","IMG_20230907_163804_334.jpg","Not Available","Son","7 lshaga rd","Fashion designer","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-07","2023-09-11","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("242","14905514","847222","Ajibodu Babatunde Valentine","08022321182","Valentine","Ajayi Adedoyin","Ademola Kenny","08104749767","IMG_20230908_162106.jpg","Not Available","Sister","16, Omodara Street Off Oguntade","Beauty Care","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-08","2023-09-11","2023-10-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("243","80908011","011570","Daodu Abosede Comfort","08121266554","Comfort","Ajayi Adedoyin","Kuridat Ayoola","08149681120","IMG_20230801_111352 (1).jpg","Not Available","Sister","4, Bajomo Street","Nurse","Not Available","LA45C0037492","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-12","2023-09-15","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("244","90184954","491180","Adegunle Adefunke ","08168955455","Ticket 2","Ajayi Adedoyin","Labiran Adebimpe","08024038961","IMG_20230913_154916.jpg","Not Available","Sister","1, Abude Close Water","Drinks","Voter Card","90F5B02EFC295792629","Daily","For Business","250000.00","0.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-13","2023-09-15","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("245","66549101","379262","Yeku Morufat Oladunmi","08160704679","Asunmo","Ajayi Adedoyin","Bashorun Saheed","09015696219","IMG_20230913_153421.jpg","Not Available","Wife","27, Ifelodun Street Eliot","Painter","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-13","2023-09-15","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("246","28645869","512702","Olomowewe Toyin ","08032627025","TAJU BELLO","Omolayo Funmilayo","Sulaimon Aminat","08188393051","16946816983605387260926063334638.jpg","Not Available","Sister","No 35 shola oyeleye","Trader","National Identity Number","73665768613","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-14","2023-09-14","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("247","64023768","063603","Ajibola Nurudeen ","09011522565","Ilerioluwa","Shoyebi Folashade","Rajia Lukmon","09011522565","IMG_20230915_160236.jpg","Not Available","Friend","5, Salami Street","Transporter","National Identity Number","91242139015","Daily","For Business","250000.00","0.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-15","2023-09-19","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("248","69718619","465909","Abereijo Mutiat Motunrayo","09118024535","Alahaja","Shoyebi Folashade","Abereijo Mosuru","09118024535","IMG_20230714_102733.jpg","Not Available","Husband","5, Oluseyi Street Suleja","Photo","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","70000.00","84000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-15","2023-09-15","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("249","13794614","717321","Oyewole Remi ","08026641246","Ayedun","Shoyebi Folashade","Oyewole Wahidi","08130864943","IMG_20230915_155947.jpg","Not Available","Husband","8, Oredegbe Street","BUSINESSMEN","Not Available","2222","Daily","For Business","250000.00","0.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-15","2023-09-14","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("250","07244463","075151","Adekunle Afusat Arike","08166447578","Kitchen","	
Shoyebi Folashade","Ifadola Olubunmi","08166447578","IMG_20230915_160013.jpg","Not Available","Friend","10, Muri Abiola Street","Fashion Designer","National Identity Number","47695828638","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-18","2023-09-19","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("251","06066794","007107","Adediran Sarah ","09032255213","Ayonio","Omolayo Funmilayo","Ayodele Stephen","09029472635","16950405460397475668067530955604.jpg","Not Available","Brother","Same address","NURTW","Driver Licence","4444","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-18","2023-09-14","2023-10-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("252","05631946","355438","Adebayo Adeola ","08086193443","Ayonio","Omolayo Funmilayo","Olarewaju segun","08026615075","16950421750969023506172206682190.jpg","Not Available","Brother","Ancluse","Mechanic","Voter Card","38341615","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-18","2023-09-19","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("253","54977603","763868","Ajiboye Iyabo ","09046543210","ALORE","Omolayo Funmilayo","Aforiwo Adebisi","08063311487","IMG_20230918_102440_836.jpg","Not Available","Friend","Toyin crescent fakile","Hair dresser","National Identity Number","81166644520","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-20","2023-09-20","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("254","00416132","361061","Bamigbose Yemisi Mariam","09029244394","IYA IJEBU","Omolayo Funmilayo","Hannah bamigbose","09019354455","16952015095445336704509673716006.jpg","Not Available","Daughter","7 babalola str,opp mechanic Ajobose","Factory worker","Voter Card","4444","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-20","2023-09-20","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("255","17264636","107666","Goriola Fumilayo ","08084476839","Ire","Shoyebi Folashade","Olajide Morufat","08126346886","IMG_20230920_172333_404.jpg","Not Available","Neighbour","8, Puponiyi Street Agbado","Trader","National Identity Number","39653251291","Daily","For Business","250000.00","10200.00","50000.00","200000.00","240000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-20","2023-09-21","2023-11-24","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("256","90150945","928847","Abdulsirmad Alimot Bola","09054847340","Akorede","Shoyebi Folashade","Abdulsamad Abiodun","09127617564","IMG_20230920_172201_872.jpg","Not Available","Husband","2, Wonderlane Pipeline","Mechanic","Not Available","2222","Daily","For Business","250000.00","2500.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-21","2023-09-22","2023-10-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("257","72182609","182520","Ademola Agnes Adejumoke","08060813180","Akorede","Shoyebi Folashade","Popoola","07082170263","IMG_20230920_172226_716.jpg","Not Available","Sister","3, Pipeline Water Taju Bello","Tailor","Not Available","2222","Daily","For Business","250000.00","2500.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-21","2023-09-22","2023-10-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("258","01716598","586283","Oyeniyi Latifat Folashade","09132796493","Akorede","Shoyebi Folashade","Adeloye Muminat","08108354355","IMG_20230920_172215_401.jpg","Not Available","Sister","5, Shobite Pipeline","22222","Not Available","22222","Daily","For Business","250000.00","2500.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-21","2023-09-22","2023-10-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("259","02236472","623993","Lawal Nimota Elizabeth","09073241933","Pelumi","Shoyebi Folashade","Falowo","09074713848","IMG_20230920_172248_840.jpg","Not Available","Friend","4, Abike Ola Street Iju Ishaga","POS","Not Available","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-21","2023-09-22","2023-10-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("260","70223842","616309","Adesanmi Funke ","08136023589","Funke","Shoyebi Folashade","Anthony","Anointing","IMG_20230920_172238_997.jpg","Not Available","Husband","10, Ishola Muri Abiola","transporter","Not Available","2222","Daily","For Business","250000.00","3200.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-21","2023-09-20","2023-10-24","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("261","67251576","152179","Olewe Iheayi ","07035325166","Olewe","Omolayo Funmilayo","Olewe chinonso","08126553009","IMG_20230918_120642_240.jpg","Not Available","Brother","15 olajesu str giwa","Electrical Engineer","Driver Licence","2222","Daily","For Business","250000.00","10500.00","50000.00","150000.00","180000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-21","2023-09-18","2023-10-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("262","80151869","212692","Olulola grace joy","09162544521","Temitope","Oyaosho Folakemi","okon Mary","08107083366","IMG_20230920_180643_941~2.jpg","Not Available","sister","No10 olatoye street power line","pepper soup","National Identity Number","20685902905","Daily","For Business","250000.00","3200.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-21","2023-09-15","2023-10-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("263","51277522","700203","Oginni Bose Ayodeji","08162939266","Iya koko","Oyaosho Folakemi","Oginni Adedeji","08035371549","IMG_20230920_180659_330~2.jpg","Not Available","Husband","No 30 Adeniyi street  off powe-line","electrical engineer","National Identity Number","39561612772","Daily","For Business","250000.00","1700.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-21","2023-09-15","2023-10-18","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("264","82591698","157714","Adeleke Tunmise Temitope","09055303129","Morenike","Ajayi Adedoyin","Adeniyi Toyin","09075492945","IMG_20230719_151108_1.jpg","Not Available","Friend","3, Akinwunmi Compound","Business Woman","Not Available","2222","Daily","For Business","250000.00","4200.00","50000.00","80000.00","96000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-21","2023-09-25","2023-10-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("265","77364183","400809","Adewunmi Dupe Bukky","09027788742","Adewunmi","Ajayi Adedoyin","Abada Blessing","08024163285","IMG_20230921_165828.jpg","Not Available","Friend","48/50, Agbado Road Toko-Taya","Catering","Not Available","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-21","2023-09-22","2023-10-27","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("266","77913344","006398","Adeyeye Elizabeth ","09034998643","Greatness","Shoyebi Folashade","Adeyeye Richard","0902861456","IMG_20230925_092829_361.jpg","Available","Son","Lamidi st crossing","Student","Not Available","2222","Daily","For Business","250000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-25","2023-09-26","2023-10-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("267","36087385","434642","Babatunde Kemi Tayo","09162742361","kemi","Oyaosho Folakemi","Robert funsho","09062742361","IMG_20230920_173923_596~2.jpg","Not Available","Sister","17 ishola street abosule  crossing","Makeup Artist","National Identity Number","32605212061","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-25","2023-09-22","2023-10-25","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("268","71650552","979799","Shobande Alaba Babatunde","08059298333","Babatunde","Ajayi Adedoyin","Shobande Olabisi","08102810960","1695715788164.jpg","Not Available","Wife","74, Kajola Road Obawole","Civil Servant","National Identity Number","84876181396","Daily","For Business","250000.00","23500.00","50000.00","150000.00","180000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-26","2023-09-19","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("269","75394560","703115","Babarinde Florence Biodun","09079903672","Florence","","Babarinde Mattew","09054962917","IMG_20230827_121514.jpg","Not Available","Husband","No 6 oredola  sstreet  crossing","Farming","National Identity Number","A29006992","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-26","2023-10-05","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("270","26719664","630840","Tajubello Adijat ","09130984934","TAJU BELLO","Omolayo Funmilayo","Akande Toyin","08143114869","16957183744218055032478664392948.jpg","Not Available","Daughter","No8 power line","Food seller","National Identity Number","3333","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-09-26","2023-09-29","2023-10-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("271","65459063","764152","Alake Stella Mercy","07085749412","Greatness","Shoyebi Folashade","Olamilekan Ejalonibu","0706997946","1695720405882.jpg","Not Available","Brother","12, Yidi Road","Engineer","Not Available","2222","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-26","2023-09-26","2023-10-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("272","16603655","736407","Salami Shakirat Tope","07080229503","Greatness","Shoyebi Folashade","James Afusat","09150610336","1695720405935.jpg","Not Available","Friend","Yaba","Beer Parlour","National Identity Number","27735153846","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-26","2023-09-26","2023-10-30","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("273","36084040","844684","Nnamdi Sabastine Samuel","07061119740","Nnamdi","Ajayi Adedoyin","Ogungbe Bridget","08172000126","IMG_20230725_093242.jpg","Not Available","Friend","5, Foursquare Street","Trader","Not Available","2222","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-26","2023-10-05","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("274","20456142","856433","Essien Peter Effiong","09072971099","Enilolobo","Oyaosho Folakemi","Essien Paulina","08028453240","1695717017799.jpg","Not Available","Brother","8, Bello Owolabi Iyana Ipaja","Food","Voter Card","01682162901","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-26","2023-09-15","2023-10-20","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("275","40887788","627413","Badejo Sukurat Nike","07062557745","Badejo","Oyaosho Folakemi","Hamzat Kamoru","08088407098","1695717017750.jpg","Not Available","Husband","13, Fatai Nosuru Ile Ise","Civil Servant","National Identity Number","15902212883","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-09-26","2023-10-05","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("276","41219381","601099","Kareem Morenike ","09027092906","Akorede","Shoyebi Folashade","Kareem ldowu","090709809","IMG_20230927_083221_329.jpg","Available","Daughter","5 pipeline Rd water","Hairdresser","National Identity Number","35333937513","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-27","2023-09-27","2023-10-27","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("277","78913690","848696","Jolayemi Kemi ","09122256777","Pelumi","Shoyebi Folashade","Adenike Adebanjo","08127679661","IMG_20230927_083306_3.jpg","Available","Sister","8 Oremeji st crossing","Egg supplier","National Identity Number","2502040357","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-27","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("278","41461585","028586","Ayorinde Fatimo ","09135717881","Pelumi","Shoyebi Folashade","Ogunshola","8014849761","IMG_20230927_094032_292.jpg","Not Available","Brothrer","11  lfelodun st lshaga","Tailor1","National Identity Number","70348318597","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-09-27","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("279","52100144","101149","Akinsanya Bosede Olaide","08166650792","Ope","Ajayi Adedoyin","Jimoh","09069534680","IMG_20230927_150320_1.jpg","Not Available","Sister","12, Crossing Road","Trader","National Identity Number","2241845456","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-28","2023-10-13","2023-11-14","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("280","26129367","799395","Adebayo Wasiu Alabi","08123854889","Alabi","Ajayi Adedoyin","Adebayo Blessing","08023896148","IMG_20230928_100632.jpg","Not Available","Wife","29, Irapada Street","Provision","Not Available","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-29","2023-10-13","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("281","62195652","422737","Rabiu Rukayat Funmilayo","08055515109","Gudugba","Ajayi Adedoyin","Rabiu Babatunde Faruz","08051122979","IMG_20230620_160142 (2).jpg","Not Available","Son","5, Arike Street White House","Trade","National Identity Number","14302288213","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-29","2023-09-29","2023-10-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("282","01019749","318572","Odeyale Olalekan Afiz","08027721593","Isholiki","Ajayi Adedoyin","Odeyale Lateefat","08027358432","IMG_20230620_085251_1.jpg","Not Available","Wife","5, Akinbami Street","Provision","National Identity Number","22222","Daily","For Business","250000.00","2700.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-09-29","2023-10-13","2023-11-16","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("283","90900426","081901","Daramola Ayodele Joshua","07066595455","Execl","Ajayi Adedoyin","Fakanle Jimoh","08032954224","IMG_20231003_165656 (1).jpg","Not Available","Friend","16, Osho Agoro Street Gudugba","Transporter","National Identity Number","7760829680","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-03","2023-10-06","2023-11-09","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("284","02858478","555148","Akerele Yemi Dolapo","07049228690","Dolapo","Ajayi Adedoyin","Akerele Enitan","08164935110","IMG_20230705_103748_1.jpg","Not Available","Daughter","20, Oriade Street Abule Egba","Studies","Not Available","2222","Daily","For Business","250000.00","1700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-03","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("285","25459394","227859","Ereji-Kesi Falilat Noghq","08023139292","Falilat","Ajayi Adedoyin","Hassan Chinaza","08163235355","IMG_20231004_100325.jpg","Not Available","Friend","6, Felix Cresent Station Bus Stop","Busines Woman","Voter Card","90F5BJ684729587087","Daily","For Business","250000.00","5000.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-04","2023-10-09","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("286","72918085","657963","Yusuf Yetunde Abosede","08147123512","Yetunde","Ajayi Adedoyin","Fadunsi Olaniyi","08034546553","IMG_20231005_083225.jpg","Not Available","Husband","47, Akinyele Street Oke-Aro","Enginer","Not Available","A012","Daily","For Business","250000.00","3000.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-05","2023-10-12","2023-11-14","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("287","37751180","264038","Adedugba Taiwo Aderonke","09076330431","Ope","Ajayi Adedoyin","Adedugba Ademola oluwayomi","08038565202","IMG_20230620_111739_1_1.jpg","Not Available","Husband","29, Ogunleye Street Off Oguntade Balogun Bus Stop","Business Man","National Identity Number","39100393875","Daily","For Business","250000.00","1700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-05","2023-10-13","2023-11-16","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("288","99955406","126958","Ahmed Baba ","08063214160","Nupe","Ajayi Adedoyin","Idris Abubakar","09081841227","IMG_20231005_092143 (1).jpg","Not Available","Brother","7, Agbole Ishaga","Transporter","Not Available","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-05","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("289","45248642","540601","Muhammed Abdullai ","08149480660","Nupe","Ajayi Adedoyin","Isah Adamu","07015160304","IMG_20231005_092208 (1).jpg","Not Available","Brother","6, Ikare Street Oke Aro","Bike Man","Not Available","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-10-05","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("290","80280478","094263","Umaru Rahimat ","09028870579","UMARU","Omolayo Funmilayo","Aina folorunsho","08022056869","16965126603795992212767414505106.jpg","Not Available","Husband","13 power line","Fashion designer","Driver Licence","3333","Daily","For Business","250000.00","4200.00","50000.00","80000.00","96000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-10-05","2023-10-10","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("291","16818855","355438","Adebayo Adeola ","08086193443","Ayonio","Omolayo Funmilayo","Olarewaju segun","08026615075","1696512964862617887253356647177.jpg","Not Available","Brother","11 ayorinde okearo","Mechanic","Voter Card","3834161","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-10-05","2023-10-04","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("292","20623166","752410","Okorie gift oyinye","07069692243","Good market","Oyaosho Folakemi","Rose Mary Herbert","08134626043","IMG_20231009_095733_837~2.jpg","Not Available","Sister","4 olaniyan fadairo street matogun","Farming","National Identity Number","61278628026","Daily","For Business","250000.00","15200.00","50000.00","300000.00","360000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-10-09","2023-10-09","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("293","55905403","278865","Kofoworola Tiamiyu ","08127679661","Pelumi","Shoyebi Folashade","Sodiq Nojimu","09094992626","IMG_20231011_091723_421.jpg","Not Available","Brother","2  oremeji","Student","Not Available","22222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-10-13","2023-11-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("294","08388070","570493","Tawakalitu OLatinwo ","08164397331","Gift","Shoyebi Folashade","Lawal Saka","09021863384","IMG_20231010_091039_292.jpg","Not Available","Son","same","transporter","Not Available","24-10-05-007","Daily","For Business","250000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-10-17","2023-11-17","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("295","04950513","204833","Ifeoluwa Olayemi ","08030898338","Oluwatosin","Shoyebi Folashade","Olayemi Bankola","08030898338","IMG_20231010_091029_815.jpg","Not Available","Husband","IKeja","Airport","Not Available","22222","Daily","For Business","250000.00","3200.00","50000.00","60000.00","72000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-10-17","2023-11-17","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("296","33373002","621958","Bukky Lawal ","08163986087","Pelumi","Shoyebi Folashade","Akinrele Sunday","09084008656","IMG_20230907_100329_229.jpg","Not Available","Husband","Agboga","transporter","Not Available","22222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-10-13","2023-11-10","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("297","35777797","977991","Jelili Muritala ","09010605144","Ire","Shoyebi Folashade","Hassan Murital","0900605144","IMG_20231011_105439_168.jpg","Not Available","Brother","same","transporter","Not Available","22222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-09-27","2023-10-31","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("298","91332650","071006","Fatoyinbo Balikis Temitope","09045764360","Balikis","Omolayo Funmilayo","Aderounmu olasunkanmi","09022843936","16970318426475303791407821841626.jpg","Not Available","Brother","17, tajubello","Tailor","Voter Card","2222","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Omolayo Funmilayo","2023-10-11","2023-10-13","2023-11-16","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("299","36750362","493688","Omoniyi Tolani ","09044207899","Blossom","Shoyebi Folashade","Titi Olase","090233685","IMG_20231011_105503_737~2.jpg","Not Available","Sister","same","Trader","Not Available","24-10-05-007","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Shoyebi Folashade","2023-10-11","2023-10-16","2023-11-16","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("300","42991147","151247","Ajibode Muinat Ajoke","09064360878","Gold","Oyaosho Folakemi","Omosebi Funmilayo","08086965720","IMG_20231107_105544.jpg","Not Available","Neighbor","2, Pipeline Street Off Tajubello","Bread Seller","Voter Card","030DDE58EF416414831","Daily","For Business","250000.00","2500.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-11-07","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("301","02157928","463541","Adeyeye Pelumi Idowu","09112800590","Gold","Oyaosho Folakemi","Suraju Toyin","09166283057","IMG_20231107_123359.jpg","Not Available","Family","2, Pipeline Street Off Tajubello","Hair Dresser","National Identity Number","2QB9DMMQE00059C","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-11-07","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("302","21374410","580013","Emmanuel Rita Tega","09072121011","Rita","Oyaosho Folakemi","Balogun Banke","09037033262","IMG_20231107_105921.jpg","Not Available","Sister","D47 Ogbonkun Street Ikeja","Hair Dresser","Not Available","2222","Daily","For Business","250000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-11-07","2023-10-17","2023-11-22","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("303","15195816","441806","Anthony Mary Olufunke","09122285981","Mary","Oyaosho Folakemi","Ojeniyi Basiratu","07032183426","IMG_20231107_105846.jpg","Not Available","Friend","22, Olaore Street","Snace","Voter Card","90F5802906298608072","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-11-07","2023-10-20","2023-11-24","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("304","54010593","311159","Olukoya Abiodun Kayode","08133425962","Olukoya","Oyaosho Folakemi","Adeyemo Femi","08133425162","IMG_20231107_105558.jpg","Not Available","Friend","22, Olatoye Street AGBADO","Driver","Voter Card","90F5AEFD64416320255","Daily","For Business","250000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Oyaosho Folakemi","2023-11-07","2023-11-03","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("305","65193461","138614","Olewe Blessing Amaka","08036969063","Amaka","Oyaosho Folakemi","Uzor Silas","07062669927","IMG_20231107_133144.jpg","Not Available","Wife","52, Amosu Street Baliey","Driver","National Identity Number","2IR10CUK5X00082","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("306","57262736","016536","Saheed Temitope Ruka","08085493893","Ruka","Oyaosho Folakemi","Adekunle","Marian","IMG_20231107_105103.jpg","Available","09035678766","6, Okegboro Street Balogun","Friend","National Identity Number","20XIX6S5LE0002N","Daily","For Business","250000.00","3000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-10-20","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("307","62128015","627413","Badejo Sukurat Nike","07062557745","Badejo","Oyaosho Folakemi","Hamzat Kamoru","08088407098","IMG_20231107_104622.jpg","Not Available","Husband","13, Fatai Nasiru Close","Civil Servant","National Identity Number","15902212883","Daily","For Business","250000.00","2200.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("308","76786169","837860","Dasilva Tosin Joy","07041788315","Tosin","Oyaosho Folakemi","Babatunde Abiodun","08135906595","IMG_20231107_143518.jpg","Not Available","Brother","1, Alayaki Enilolobo","Laundry  Businesss","National Identity Number","2QB9DMMQEO004CR","Daily","For Business","250000.00","17000.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-10-10","2023-11-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("309","89522138","480129","Obatoye Samuel Babatunde","08023131947","Tosin","Oyaosho Folakemi","Obatoye Justina","08106260255","IMG_20231107_143540.jpg","Not Available","Sister","15, Engr Adeagbo Off Olaniyi","Sale Represative","Voter Card","22222","Daily","For Business","250000.00","30000.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-10-12","2023-11-17","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("310","94056071","724109","Obatoye Beatrice Oluwatoyin","08089970882","Tosin","Oyaosho Folakemi","Orowunmi Temidayo","08035522058","IMG_20231107_143518.jpg","Not Available","Wife","3, Ajibose Street Giwa Oke Aro","Clearing &amp; Forwarding","National Identity Number","82703209042","Daily","For Business","100000.00","5000.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-07","2023-10-12","2023-11-17","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("311","64024523","434642","Babatunde Kemi Tayo","09162742361","kemi","Oyaosho Folakemi","Robert Funsho","08108266017","IMG_20231107_144637.jpg","Not Available","Sister","17, Ishola Street Agbado","Make Up &amp; Hair Dresser","National Identity Number","88552312439","Daily","For Business","30000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-10-27","Ajayi Adedoyin","2023-11-07","2023-11-01","2023-12-05","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("312","27241325","359147","Babatunde Bidemi Bukola","08165503384","Bidemi","Oyaosho Folakemi","Oke Tolulope","08105628954","IMG_20231107_143640.jpg","Available","Sister","1, Bailey Compound","Beverages","National Identity Number","19127979645","Daily","For Business","30000.00","1200.00","20000.00","30000.00","36000.00","Loan Disbursed","2023-12-18","Ajayi Adedoyin","2023-11-07","2023-10-23","2023-11-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("313","73583787","729097","Owolabi Olanike Iyabode","09021353575","Bidemi","Oyaosho Folakemi","Mushinat Ajoke","08145559951","IMG_20231107_144537.jpg","Not Available","Friend","127, Rogo Bus Stop","Marketer &amp; Agent","Not Available","2222","Daily","For Business","40000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-10-27","Ajayi Adedoyin","2023-11-07","2023-11-07","2023-12-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("314","98757189","001122","Oloyede Anuoluwapo Ife","08126877754","Bidemi","Oyaosho Folakemi","Oloyede Morenike","08091599018","IMG_20231107_144659.jpg","Not Available","Daughter","47, Pipeline Road","Hair Styles","Not Available","22222","Daily","For Business","120000.00","3000.00","30000.00","40000.00","48000.00","Loan Disbursed","2023-10-20","Ajayi Adedoyin","2023-11-07","2023-10-25","2023-11-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("315","33083135","229704","Babatunde Olusegun ","08036525816","Coach","Ajayi Adedoyin","Christian OPeyemi","08101252576","IMG_20230605_161026.jpg","Not Available","Daughter","1, Bailey Street Off Taju Bello","Teacher","National Identity Number","64197792118","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-10-24","Ajayi Adedoyin","2023-11-08","2023-10-27","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("394","79190580","255959","Owolabi Olanike Iyabode","09021353575","Bidemi","Oyaosho Folakemi","Shogunle Adebisi","09021353575","IMG_20231206_091928.jpg","Not Available","Mother","1, Bailey Street Off Taju-Bello","Popcorn","National Identity Number","69567527543","Daily","For Business","50000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-12-05","Ajayi Adedoyin","2023-12-06","2023-12-26","2024-01-26","Admin Admin","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("317","06586090","405947","Akinboni Adenike ","07017909589","Oke Ayo","Ajayi Adedoyin","Adejoke Adegboye","07010219529","IMG_20230621_093621.jpg","Not Available","Mother","8, Oredola Street Ola Ore","Food Seller","Not Available","2222","Daily","For Business","40000.00","1200.00","20000.00","20000.00","24000.00","Loan Disbursed","2023-10-06","Ajayi Adedoyin","2023-11-08","2023-10-30","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("318","18073433","400809","Adewunmi Dupe Bukky","09027788742","Adewunmi","Ajayi Adedoyin","Blessing Ababa","08024163285","IMG_20231108_110015.jpg","Not Available","Friend","48, Abgado Road","Catering","Not Available","2222","Daily","For Business","50000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-09","2023-12-11","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("319","99347303","237689","Adio Mosurat ","09127686455","TAJU BELLO","Omolayo Funmilayo","Magret Abosede","09165827008","IMG_20231108_111049.jpg","Not Available","Sister","44, Taju Bello Street","Trader","Not Available","22222","Daily","For Business","50000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-09","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("320","79130382","763868","Ajiboye Iyabo ","09046543210","ALORE","Omolayo Funmilayo","Aforiowo Toyin","09046543210","IMG_20231108_110037_1.jpg","Not Available","Friend","1, Crescent Street","Egg Supplier","National Identity Number","2222","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-03","2023-12-05","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("321","46831798","682368","Lukmon Awawu Abiodun","08179576714","Temitope","Oyaosho Folakemi","Owoyemi Bukola","08179576714","IMG_20231108_110046_1.jpg","Available","Sister","7, Church Street Agbado","Egg Supplier","National Identity Number","74420138140","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-10-17","Ajayi Adedoyin","2023-11-08","2023-10-26","2023-11-27","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("322","81464044","316065","Ajayi Kemi ","08186761421","Divine","Shoyebi Folashade","Adelakun Dawodu","08139311476","IMG_20231108_110108_1.jpg","Not Available","Sister","5, Oluwo Street Oke Aro","Furniture","Voter Card","90F5AF0334295451594","Daily","For Business","50000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-10-30","Ajayi Adedoyin","2023-11-08","2023-11-07","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("323","92725125","075151","Adekunle Afusat Arike","08166447578","Kitchen","Ajayi Adedoyin","Toyin Hakeem","08086842872","IMG_20231108_110151_1.jpg","Not Available","Friend","5, Muri Abiola","Provision","Not Available","2222","Daily","For Business","50000.00","2700.00","30000.00","40000.00","48000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-09","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("324","55701840","290486","Ojo Omoboriowo ","0806648984","Kitchen","Shoyebi Folashade","Omoboriowo Grace","07012333732","IMG_20231108_110115_1.jpg","Not Available","Wife","24, Muri Abiola Street","Nurse","Not Available","2222","Daily","For Business","60000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-09","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("325","76324164","117304","Balogun Adenike Toyosi","08026533095","Isholiki","Ajayi Adedoyin","Oganla Adewunmi","08025770537","IMG_20231108_125507.jpg","Not Available","Friend","12, Isholiki Street","Teacher","Not Available","2222","Daily","For Business","80000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-08","2023-11-10","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("326","56323381","410460","Olajide Emmanuel ","09160128014","UMARU","Omolayo Funmilayo","Olajide Elizabeth","09120845662","IMG_20231108_141301.jpg","Not Available","Daughter","1, Willisco Estate","Caterer","National Identity Number","16351486455","Daily","For Business","40000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-16","Ajayi Adedoyin","2023-11-08","2023-10-20","2023-11-21","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("327","18285834","157714","Adeleke Tunmise Temitope","09055303129","Morenike","Ajayi Adedoyin","Adeniyi Toyin","09075492945","IMG_20230719_151108_1.jpg","Not Available","Friend","3, Akinwunmi Compound","Vegetables","National Identity Number","30131297907","Daily","For Business","70000.00","4700.00","80000.00","60000.00","72000.00","Loan Disbursed","2023-11-07","Ajayi Adedoyin","2023-11-08","2023-11-09","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("328","12496203","467936","Onifade Kehinde Mary","08147123512","Alahaja","Oyaosho Folakemi","Onifade Jamal","08147123512","IMG_20231108_110052_1.jpg","Not Available","Son","Agbado","Appretice","Not Available","2222","Daily","For Business","40000.00","4000.00","40000.00","40000.00","48000.00","Loan Disbursed","0000-00-00","Ajayi Adedoyin","2023-11-08","2023-10-20","2023-11-23","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("329","67019034","986770","Sabiu Saki Ayinke","09061698840","Okiki","Alago Chidera","Sabiu Ramota","08144881030","IMG_20231108_164601_1.jpg","Not Available","Daughter","28, Adenike Adepoju Street Crossing","Wine &amp; Beer","National Identity Number","51488192293","Daily","For Business","50000.00","2700.00","50000.00","30000.00","36000.00","Loan Disbursed","2023-10-31","Ajayi Adedoyin","2023-11-08","2023-11-08","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("330","77543786","999409","Lasisi Zanib Asabi","09028148818","Lasisi","Oyaosho Folakemi","Lasisi Yussuf","09074292189","IMG_20231108_170815.jpg","Not Available","Husband","16, Olatoye Street","Transporter","Voter Card","90F5B19A75505216348","Daily","For Business","40000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-07","Ajayi Adedoyin","2023-11-09","2023-11-10","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("331","91566060","073345","Adedeji Fatimo ","07035063857","TAJU BELLO","Omolayo Funmilayo","Olaosebikan Celinah","09039567930","IMG_20231109_102220_1.jpg","Not Available","Neighbour","3, Ramoni Close Tokotaya Bus Stop","Trader","Not Available","22222","Daily","For Business","50000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-11-09","Ajayi Adedoyin","2023-11-09","2023-11-14","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("332","06564198","932701","Salau Kabiru Abefe","08101306152","K.b","Oyaosho Folakemi","Badmus Muyideen","08081511080","IMG_20231109_103714_1.jpg","Not Available","Brother","4, Adeola Abiola Street Off Eleja","Transporter","Voter Card","90F5B1885519723747","Daily","For Business","80000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-09","2023-11-10","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("333","08804887","523045","Ojo Toyin Elizabeth","07011568428","Eli","Oyaosho Folakemi","Akinmurele Oluwakemi","09047099713","IMG_20231108_165621_1.jpg","Not Available","Friend","9, Saino Street Agbado","Food Seller","National Identity Number","89013420350","Daily","For Business","30000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-09","2023-11-11","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("334","18194335","327758","Oladeji Saidat ","09120121443","Okiki","Alago Chidera","Oluwatunwase Christiana","09029050263","IMG_20231108_164607_1.jpg","Not Available","Friend","47, Abosede Street Agbado","Trader","National Identity Number","39335200947","Daily","For Business","70000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-02","Ajayi Adedoyin","2023-11-09","2023-11-08","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("335","07777340","161892","Akeye Folakemi Oluwatosin","08122621442","Okiki","Ajayi Adedoyin","Olayanju Oluwakemi","07019283782","IMG_20231108_164612_1.jpg","Not Available","Sister","8, Ijaiye Street","Food Seller","National Identity Number","66559476262","Daily","For Business","40000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-02","Ajayi Adedoyin","2023-11-09","2023-11-08","2023-12-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("336","96333811","529014","Okedara Aminat Motunrayo","08051489903","Anu","Ibitomi Esther","Sanni Ayodele","09137460924","IMG_20231108_164547_1.jpg","Not Available","Mother","21, Lamidi Street","Trader","Voter Card","90F5AE39298481855","Daily","For Business","70000.00","2200.00","30000.00","","","","2023-11-06","Ajayi Adedoyin","2023-11-09","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("337","95172917","901357","Abiodun Buhari Kabiru","08167038626","Buhari","Ibitomi Esther","Buhari Yinka","09134924988","IMG_20231109_120802.jpg","Not Available","Wife","54, Ijoko Abule Idi Oros","Food Stuff","National Identity Number","99323529497","Daily","For Business","150000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-09","2023-11-10","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("338","55073194","771396","Ebera Akalonu Lianus","09036077655","Unchangeable","Ajayi Adedoyin","Agbaoso Ekene","09046262988","IMG_20231109_122339_1.jpg","Not Available","Brother","5, Omojuile Street Balogun","Transporter","National Identity Number","70035817733","Daily","For Business","50000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-09","2023-11-10","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("339","09148934","336831","Akande Toyin Adenike","08143114869","D Kings","Omolayo Funmilayo","Bose Ezekiel","091575926","IMG_20231110_095402_1.jpg","Not Available","Sister","5, Adenekan Street Delight Taju Bello","Fruit","Voter Card","90F5AF246138600","Daily","For Business","80000.00","4000.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-07","Ajayi Adedoyin","2023-11-10","2023-11-10","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("340","02831797","144137","Osunpidan lola ","08182796575","Iya koko","Oyaosho Folakemi","Osunpidan Ishaiah","08030669418","IMG_20231110_095426_1.jpg","Available","Husband","9, Okewolu Kelly Oke Aro","Building","National Identity Number","42285207617","Daily","For Business","30000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-03","Ajayi Adedoyin","2023-11-10","2023-11-07","2023-12-12","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("341","71309942","471681","Lateef Risikatu Olatundun","09096945756","Olatundu","Oyaosho Folakemi","Lateef Muibat","07058055650","IMG_20231110_095457_1.jpg","Not Available","Daughter","12, Soleye Street","Hair Dresser","Not Available","22222","Daily","For Business","40000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-16","Ajayi Adedoyin","2023-11-10","2023-10-20","2023-11-21","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("342","11494856","675293","Oyewunmi Simeon Joshua","08024270712","Baba Kekere","Oyaosho Folakemi","Akinde James","08074720212","IMG_20231110_095647_1.jpg","Not Available","Friend","5, Isele Ola Street AGbado","Transporter","Not Available","22222","Daily","For Business","40000.00","2700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-02","Ajayi Adedoyin","2023-11-10","2023-11-10","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("343","36359515","588403","Tawio Idayat Bunmi","08068404205","Iya koko","Oyaosho Folakemi","Muraina Waliu","08028309249","IMG_20231110_095416_1.jpg","Not Available","Husband","1, Wale Adeshina Street","Vulgazar Man","National Identity Number","46371763455","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-10-18","Ajayi Adedoyin","2023-11-10","2023-10-23","2023-11-24","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("344","64770160","428350","Fashina Bimbola Patience","09028249969","Bukola","Oyaosho Folakemi","Oyewole Idowu","08067087771","IMG_20231110_095559_1.jpg","Not Available","Neighbour","21, Ola Ore Street","Aluumiuni","National Identity Number","78250346346","Daily","For Business","40000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-10","2023-11-14","2023-12-14","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("345","41625704","320715","Sharafa Fatimo Adeola","08130701878","Fatimo","Oyaosho Folakemi","Gabriel Bose","09060902106","IMG_20231110_122727.jpg","Not Available","Friend","12, olatoye Alatise Ola Ore Street","Stationary","Voter Card","90F5B83C67416409398","Daily","For Business","35000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-10-17","Ajayi Adedoyin","2023-11-10","2023-10-23","2023-11-24","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("346","40628532","881904","Abdusalam Bukola Fatimo","08102016624","Okiki","Alago Chidera","Adeniji Adeleke","08186438386","IMG_20231110_145928_1.jpg","Not Available","Brother","8, Falola Street","Driver","Not Available","2222","Daily","For Business","100000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-10","2023-11-10","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("347","31738316","542642","Sanusi Amoke ","09166483728","Okiki","Alago Chidera","Felicia John","08104782803","IMG_20231110_145935_1.jpg","Not Available","Daughter","7, IIubirin Street","Fashion Designer","National Identity Number","50445589437","Daily","For Business","50000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-10","2023-11-10","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("348","61868738","199465","Kazeem Biliki Funke","07011754099","Anu","Ibitomi Esther","Ariyike Yusuff","07011754099","IMG_20231110_150030_1.jpg","Not Available","Daughter","16, Ishola Strett","Fruit Seller","Not Available","2222","Daily","For Business","30000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-10","2023-10-11","2023-11-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("349","32904027","750306","Adejumo Ranti Deborah","08166736675","Favour","Ibitomi Esther","Kushimo Ismail","08024163285","IMG_20231110_145949_1.jpg","Available","Brother","4, Shittu Street","Transporter","Not Available","2222","Daily","For Business","100000.00","5200.00","100000.00","100000.00","120000.00","Loan Disbursed","2023-11-02","Ajayi Adedoyin","2023-11-10","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("350","30276072","651913","Suleman Azeez Wasiu","08028826110","Happiness","Ibitomi Esther","Ogunlade Temitope","08141386688","IMG_20231110_150024_1 (1).jpg","Not Available","Brother","50, Muri Abiola Street","Railway","Not Available","2222","Daily","For Business","20000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-10-19","Ajayi Adedoyin","2023-11-10","2023-10-24","2023-11-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("351","61713018","254253","Najeem Waheed ","07083532730","Alubarika","Ibitomi Esther","Abejide Bamidele","08025515249","IMG_20231110_150017_1.jpg","Not Available","Brother","Kajola Station","Transporter","National Identity Number","46633258492","Daily","For Business","50000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-25","Ajayi Adedoyin","2023-11-10","2023-10-30","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("352","14945351","547915","Obayomi Busola ","08103038303","Chairman","Ibitomi Esther","Olajide Morufat","08126346886","IMG_20231110_150009_1.jpg","Not Available","Friend","8, Ikuponiyi Street","Frozen Food Seller","National Identity Number","50708672542","Daily","For Business","70000.00","2700.00","50000.00","40000.00","48000.00","Loan Disbursed","2023-10-03","Ajayi Adedoyin","2023-11-10","2023-10-26","2023-11-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("353","63479762","908443","Ademola Idowu Isiaka","09069043989","Baba Eja","Ibitomi Esther","Ogunremi Rasaq","08147628297","IMG_20231110_150001_1.jpg","Not Available","Brother","5, Muri Abiola","Transporter","National Identity Number","81312891202","Daily","For Business","100000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-10-25","Ajayi Adedoyin","2023-11-10","2023-10-28","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("354","89815169","672985","Adedoyin Tope Funmilayo","09043446779","Johnson","Ajayi Adedoyin","Falola Paul","08025797232","IMG_20231114_100041_1.jpg","Not Available","Aunty","7, Fadare Avenue","Guniness","Voter Card","90F5BA30CD416181821","Daily","For Business","40000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-14","Ajayi Adedoyin","2023-11-14","2023-11-17","2023-12-21","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("355","70604722","318572","Odeyale Olalekan Afiz","08027721593","Isholiki","Ajayi Adedoyin","Odeyale Latefat","08027358432","IMG_20230620_085251_1 (2).jpg","Not Available","Wife","Balogun Road","Provision","Not Available","22222","Daily","For Business","100000.00","5200.00","100000.00","100000.00","120000.00","Loan Disbursed","2023-11-14","Ajayi Adedoyin","2023-11-14","2023-10-23","2023-12-20","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("356","86169210","469928","Samson Latifat Abiodun","07034061188","Okiki","Alago Chidera","Samson Damilare","07012364342","IMG_20231110_150126_1.jpg","Not Available","Son","1/2, Awakan Street","Fashion Designer","Not Available","22222","Daily","For Business","40000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-08","Ajayi Adedoyin","2023-11-14","2023-11-16","2023-12-19","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("357","60781269","974743","Faboro Femi ","08023754641","Divine","Shoyebi Folashade","Faboro Gbenga","08024163285","IMG_20231114_102209_1.jpg","Not Available","Son","14, Oke Ayo Ishaga","Fashion Designer","Not Available","2222","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-06","Ajayi Adedoyin","2023-11-14","2023-11-09","2023-12-13","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("358","49112398","779531","Ogunleye Sahid Ajasa","07036366332","Saido","Shoyebi Folashade","Ayedun Seyi","07025256654","IMG_20231114_102235_1.jpg","Not Available","Friend","3, Sabana Street Asuje","Food Seller","Not Available","2222","Daily","For Business","60000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-04","Ajayi Adedoyin","2023-11-14","2023-11-07","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("359","61886101","616309","Adesanmi Funke ","08136023589","Funke","Shoyebi Folashade","Anthony Anointing","08026254734","IMG_20231114_102304_1.jpg","Not Available","Husband","10, Ishola Muri Abiola","Transporter","Not Available","2222","Daily","For Business","40000.00","4000.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-11-02","Ajayi Adedoyin","2023-11-14","2023-11-06","2023-12-08","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("360","48947065","752410","Okorie gift oyinye","07069692243","Good market","Oyaosho Folakemi","Herbert Rosemary","08134626042","IMG_20231114_102727_1.jpg","Not Available","Sister","4, Olaniyan Fadero Matogun","Farmer","National Identity Number","99434609486","Daily","For Business","200000.00","10200.00","200000.00","200000.00","240000.00","Loan Disbursed","2023-11-11","Ajayi Adedoyin","2023-11-14","2023-11-13","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("361","47637591","801029","Ogunkanbi Ishola ","08176533160","Ticket 1","Ajayi Adedoyin","Adebola Adeshina","09060004517","IMG_20230809_171624.jpg","Not Available","Friend","30, Wale Adeshina Taju Bello","Bike Man","National Identity Number","82161033922","Daily","For Business","100000.00","3700.00","60000.00","60000.00","72000.00","Loan Disbursed","2023-11-14","Ajayi Adedoyin","2023-11-14","2023-11-17","2023-12-22","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("362","60172708","587862","Lidipe Babatunde ","08034097786","Abaniseloluwa","Shoyebi Folashade","Lidipe Babatunde","08022735959","IMG_20231114_102247_1.jpg","Not Available","Son","5, Lidipe Lane Crossing","Mechanic","Not Available","2222","Daily","For Business","60000.00","5000.00","100000.00","100000.00","120000.00","Loan Disbursed","2023-11-07","Ajayi Adedoyin","2023-11-14","2023-11-16","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("363","58811352","547915","Obayomi Busola ","08103038303","Chairman","Ibitomi Esther","Olajide Morufat","08126346886","IMG_20231115_111534.jpg","Not Available","Sister","8, Ikuponiyi Street","Fish Seller","Voter Card","90F3B1D23480940008","Daily","For Business","80000.00","4200.00","80000.00","80000.00","96000.00","Loan Disbursed","2023-11-14","Ajayi Adedoyin","2023-11-15","2023-11-17","2023-12-22","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("364","62439535","126958","Ahmed Baba ","08063214160","Nupe","Ajayi Adedoyin","Yusuf Aisheth","08063214160","IMG_20231115_114605.jpg","Not Available","Sister","emi Mantu","Trader","National Identity Number","73137522047","Daily","For Business","50000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-10","Ajayi Adedoyin","2023-11-15","2023-11-15","2023-12-22","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("365","20572329","674427","Shogbola Oluwakemi Sarah","08124122501","D Kings","Ajayi Adedoyin","Tijani Olufunke","08078919702","IMG_20231115_114632.jpg","Not Available","Friend","21, Odunayo Street Ope Ilu","Fashion Designer","National Identity Number","78238553829","Daily","For Business","30000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-15","Ajayi Adedoyin","2023-11-15","2023-11-10","2023-12-14","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("366","46395161","011570","Daodu Abosede Comfort","08121266554","Comfort","Ajayi Adedoyin","Kuridat Ayoola","08149681120","IMG_20230801_111352.jpg","Not Available","Friend","8, Bajoko Ishaga","Nurse","Voter Card","22222","Daily","For Business","50000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-10-27","Ajayi Adedoyin","2023-11-15","2023-10-27","2023-11-30","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("367","24168272","291360","Akintoye Matthew Temidayo","08063934204","Indomie","Ajayi Adedoyin","Ogunniyi Folusho","09037460923","IMG_20231115_160803.jpg","Not Available","Friend","11, Kayode Street","Busines Woman","Not Available","2222","Daily","For Business","50000.00","2200.00","40000.00","","","","2023-11-15","Ajayi Adedoyin","2023-11-15","","","","","pending","Inactive","undelete","Not Yet Approve");
INSERT INTO loan_request VALUES("368","05181766","657963","Yusuf Yetunde Abosede","08147123512","Yetunde","Ajayi Adedoyin","Fadunsi Niyi","08028992953","IMG_20231005_083225.jpg","Not Available","Husband","47, Akinyele Street","Email Attended","Not Available","A012","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-16","Ajayi Adedoyin","2023-11-16","2023-11-21","2023-12-26","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("369","92466108","349773","Ugoala Collins Chukwudi","07088008117","Benzima","Ibitomi Esther","Oladeji Jelili","08034372035","IMG_20231117_113525_1.jpg","Not Available","Brother","4, Oseni Close","Transporter","National Identity Number","15578971835","Daily","For Business","150000.00","3000.00","20000.00","30000.00","36000.00","Loan Disbursed","2023-11-14","Ajayi Adedoyin","2023-11-22","2023-10-12","2023-12-15","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("370","76748544","452226","Kasali Rashidat ","08064420317","Blossom","Shoyebi Folashade","Kasali Kabiru","08064420317","IMG_20231117_113538_1.jpg","Not Available","Husband","5, Yidi Bus Stop Asuje Agbado","Transporter","Not Available","2222","Daily","For Business","40000.00","2200.00","20000.00","","","","2023-11-14","Ajayi Adedoyin","2023-11-22","","","","","pending","Inactive","undelete","Not Yet Approve");
INSERT INTO loan_request VALUES("371","46369315","101149","Akinsanya Bosede Olaide","08166650792","Ope","Ajayi Adedoyin","Jimoh Mutiat","09069524680","IMG_20231122_093617.jpg","Not Available","Sister","12, Crossing Road","Beer Parlor","Voter Card","90F5AE4BDA529496589","Daily","For Business","30000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-20","Ajayi Adedoyin","2023-11-22","2023-11-24","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("372","75536084","410460","Olajide Emmanuel ","09160128014","UMARU","Omolayo Funmilayo","Olajide Elizabeth","08025926131","IMG_20231122_101211.jpg","Not Available","Daughter","1, Willisco Estate","Caterer","Not Available","2222","Daily","For Business","40000.00","3200.00","60000.00","60000.00","72000.00","Loan Disbursed","2023-11-22","Ajayi Adedoyin","2023-11-22","2023-11-28","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("373","50025694","837860","Dasilva Tosin Joy","07041788315","Tosin","Oyaosho Folakemi","Babatunde Abiodun","08135906596","IMG_20231122_101558.jpg","Not Available","Brother","1, Alayaki Enilolobo","Laundry Business","National Identity Number","OG-JOREAL AJIBODE BUSTOP ","Daily","For Business","70000.00","1700.00","20000.00","30000.00","36000.00","Loan Disbursed","2023-11-20","Ajayi Adedoyin","2023-11-22","2023-11-28","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("374","89113029","480129","Obatoye Samuel Babatunde","08023131947","Tosin","Oyaosho Folakemi","Obatoye Justina","07051601733","IMG_20231122_101459.jpg","Not Available","Brother","15, Engineer Adeagbo Street Off Olaniyi Abule Egfa","Sales Representative","Not Available","2222","Daily","For Business","150000.00","3200.00","60000.00","50000.00","60000.00","Loan Disbursed","2023-11-16","Ajayi Adedoyin","2023-11-22","2023-11-28","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("375","18144621","724109","Obatoye Beatrice Oluwatoyin","08089970882","Tosin","Oyaosho Folakemi","Orowunmi Temidayo","08035522058","IMG_20231122_101531.jpg","Not Available","Husband","3, Ajibode Street Giwa Oke Aro","Clearing &amp; Forwarding","National Identity Number","82703209042","Daily","For Business","100000.00","2700.00","20000.00","50000.00","60000.00","Loan Disbursed","2023-11-17","Ajayi Adedoyin","2023-11-22","2023-12-21","2023-12-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("376","69446959","359147","Babatunde Bidemi Bukola","08165503384","Bidemi","Oyaosho Folakemi","Oke Tolulope","08105628954","IMG_20231122_101348.jpg","Not Available","Daughter","1, Bailey Company Off Taju-Bello","Beverages","National Identity Number","19127979648","Daily","For Business","40000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-21","Ajayi Adedoyin","2023-11-22","2023-11-28","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("377","34917975","580013","Emmanuel Rita Tega","09072121011","Rita","Oyaosho Folakemi","Balogun Banke","09037033262","IMG_20231122_101330.jpg","Not Available","Sister","D47, Ogbonkun","Hair Dressing","Not Available","2222","Daily","For Business","80000.00","2700.00","50000.00","50000.00","60000.00","Loan Disbursed","2023-11-20","Ajayi Adedoyin","2023-11-22","2023-11-23","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("378","58304695","972953","Oladejo Mariam Abioun","07033493205","Mariam","Oyaosho Folakemi","Rasaki Folajimi","08172847096","IMG_20231122_101245.jpg","Not Available","Mother","13, Oseni Street","Pepper Seller","National Identity Number","22411684876","Daily","For Business","80000.00","3700.00","70000.00","70000.00","84000.00","Loan Disbursed","2023-11-10","Ajayi Adedoyin","2023-11-22","2023-11-16","2023-12-21","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("379","96836097","327835","Olanrawaju Tajudeen Olamilekan","09032989196","Eli","Oyaosho Folakemi","Olanrawaju Ganiyat","07063964180","IMG_20231122_101310.jpg","Not Available","Wife","11, Community Road","Drinks &amp; Snacks","National Identity Number","17563915340","Daily","For Business","90000.00","3000.00","20000.00","30000.00","36000.00","Loan Disbursed","2023-11-09","Ajayi Adedoyin","2023-11-22","2023-11-16","2023-12-19","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("380","76568450","862111","Rabiu Abosede Tawakalitu","08029997175","Gudugba","Ajayi Adedoyin","Rabiu Sukurat","09059895572","IMG_20231122_151824.jpg","Not Available","Daughter","18, Folarin Street Off Gudugba","Herb","Not Available","2222","Daily","For Business","150000.00","4200.00","80000.00","60000.00","72000.00","Loan Disbursed","2023-11-22","Ajayi Adedoyin","2023-11-22","2023-11-24","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("381","97727475","625818","Opadeji Wahab Taoreed","09060071576","Opeyemi","Shoyebi Folashade","Sadiky Sayidatu","09130600374","IMG_20231122_161330.jpg","Not Available","Husband","10, Abuade Street","Tailor","Not Available","2222","Daily","For Business","50000.00","3000.00","30000.00","","","","2023-11-21","Ajayi Adedoyin","2023-11-23","","","","","decline","Inactive","decline","Terms and Conditions Not Met.");
INSERT INTO loan_request VALUES("382","70047551","354654","Adeniyi Basirat ","09162789562","Basirat","Ibitomi Esther","Grace Gilbel","08186651632","IMG_20231123_085743.jpg","Available","Friend","7, Muri Abiola Street Agbado","Busines Woman","Not Available","2222","Daily","For Business","50000.00","2700.00","20000.00","30000.00","36000.00","Loan Disbursed","2023-11-22","Ajayi Adedoyin","2023-11-23","2023-11-27","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("383","45207427","400080","Rasaq Fatimo ","08068404205","Gudugba","Ajayi Adedoyin","Kayode Tosin","09032302911","IMG_20231123_093513.jpg","Not Available","Sister","5, Atanda Close Off Gudugba","Food Seller","Not Available","2222","Daily","For Business","100000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-22","Ajayi Adedoyin","2023-11-23","2023-11-28","2023-12-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("384","51241924","128919","Adisa Nofisat morenikeji","08038074491","Princess","Oyaosho Folakemi","Akinsanya Abiodun","08022396406","IMG_20231123_093642.jpg","Not Available","Sister","1, Oladunjiye Street","Hair Dressing","Not Available","2222","Daily","For Business","50000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-17","Ajayi Adedoyin","2023-11-23","2023-11-23","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("385","10355971","223667","Okanlawon Muinat Adeyinka","08139386922","Adeyinka","Ajayi Adedoyin","Ojo Jumoke","08146895768","IMG_20231124_090851.jpg","Not Available","Daughter","5, Agbado Road Opp Palace Oke Aro","Business Woman","National Identity Number","59196743526","Daily","For Business","70000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-23","Ajayi Adedoyin","2023-11-24","2023-11-30","2024-01-03","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("386","41696359","201220","Okosun Abiola Seun","09066153117","Anuoluwapo","Ibitomi Esther","Clement Okosun","08033478801","IMG_20231124_090811.jpg","Not Available","Husband","23, David Amodu Street Agbado","Doctor","Not Available","2222","Daily","For Business","100000.00","2200.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-22","Ajayi Adedoyin","2023-11-24","2023-11-23","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("387","32282169","606280","Onyeka James Mmelu","07036217129","Onyeka","Omolayo Funmilayo","Ezekwem Peter","07038176492","IMG_20231124_111804.jpg","Not Available","Friend","Plot 18, Increase Estate Off Ogunjimi Street Elliot","Computer Assistant","Voter Card","2222","Daily","For Business","100000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-21","Ajayi Adedoyin","2023-11-24","2023-11-24","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("388","74274331","696058","Adedayo Diyaolu felicia","07064538447","Diyaolu","Oyaosho Folakemi","Olajide Oluwatoyin","08125605739","IMG_20231129_103809_1.jpg","Not Available","Hair Dreesser","15, Ishola Street Ile Ise","Daughter","National Identity Number","41042857700","Daily","For Business","30000.00","1200.00","20000.00","20000.00","24000.00","Loan Disbursed","2023-11-27","Ajayi Adedoyin","2023-11-29","2023-11-27","2023-12-27","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("389","39930215","214077","Okpara Joshua Chigozie","07031665460","Away","Omolayo Funmilayo","Ojiya Nicholas","08031819756","IMG_20231128_164038.jpg","Not Available","Friend","5, Akinlade Street Off Gudugba","Transporter","Voter Card","200000015039742","Daily","For Business","50000.00","4000.00","40000.00","40000.00","48000.00","Loan Disbursed","2023-11-28","Ajayi Adedoyin","2023-11-29","2023-11-29","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("390","83239648","442064","Akande Funmilayo Grace","07064265014","Funmilayo","Oyaosho Folakemi","Aderinoye Funmilayo","09166894128","IMG_20231129_103547.jpg","Not Available","Sister","19, Adeoju Street Ile Ise","Business Woman","National Identity Number","71939743696","Daily","For Business","300000.00","3000.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-24","Ajayi Adedoyin","2023-11-29","2023-11-29","2023-12-29","Sanni Bukola","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("391","05390095","450220","Badmus Jamiu ","08068404205","Oremeta","Ajayi Adedoyin","Badmus Mosurat","09120845662","IMG_20231129_120543_1.jpg","Not Available","Wife","6, Ore-Meta Off Agbado Oremeta","Tailor","National Identity Number","90325552378","Daily","For Business","80000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-29","Ajayi Adedoyin","2023-11-29","2023-12-01","2024-01-02","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("392","03327212","555148","Akerele Yemi Dolapo","07049228690","Dolapo","Ajayi Adedoyin","Akerele Enitan","08164935110","IMG_20231129_120818.jpg","Not Available","Daughter","24, Ori Ade Street","Student","Not Available","2222","Daily","For Business","100000.00","1700.00","30000.00","30000.00","36000.00","Loan Disbursed","2023-11-29","Ajayi Adedoyin","2023-11-29","2023-10-18","2023-11-28","Sanni Bukola","","Confirmed","Active","undelete","Renewal 
                                                        ");
INSERT INTO loan_request VALUES("393","74883935","763868","Ajiboye Iyabo ","09046543210","ALORE","Omolayo Funmilayo","Aforinwo Adebisi","08106682829","IMG_20231206_092208.jpg","Not Available","Friend","2 Toyin Crescent Fakile Giwa","Hair Dressing","National Identity Number","18091430242","Daily","For Business","80000.00","1700.00","30000.00","","","","2023-12-06","Ajayi Adedoyin","2023-12-06","","","","","pending","Inactive","undelete","Not Yet Approve");
INSERT INTO loan_request VALUES("395","87447813","154758","Abanise Titilayo ","08068404205","Precious","Ajayi Adedoyin","seun","09090909090","IMG-20231011-WA0024.jpg","Available","brother","3, MAFOLIKU STR. OSHODI, LAGOS STATE","BUSINESS","National Identity Number","222222222222222","Daily","TO AUGMENT MY WORKING CAPITAL","90000.00","3500.00","20000.00","20000.00","24000.00","Loan Disbursed","2023-12-26","Admin Admin","2023-12-25","2023-12-25","2024-01-24","Admin Admin","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("396","45978114","117304","Balogun Adenike Toyosi","08026533095","Isholiki","Ajayi Adedoyin","seun","ola","AUTHENTICATION.png","Available","SISTER","3, MAFOLIKU STR. OSHODI, LAGOS STATE","TEACHER","National Identity Number","222222222222222","Daily","TO AUGMENT MY WORKING CAPITAL","90000.00","3500.00","20000.00","20000.00","24000.00","Loan Disbursed","2024-01-08","Admin Admin","2024-01-08","2024-01-08","2024-02-29","Admin Admin","","Confirmed","Active","undelete","New Loan
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
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("92","024291","YUSUF","AMINAT","KAFAYAT","08027588766","PRINTER","2023-06-24","aminat@yahoo.com","Female","ORELOPE","Driver Licence","980908098098","90809809898","Increase your sales with an e-commerce virtual store.png","AKINSANYA TITILOPE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","LAGOS","Nigeria","OKE ADEBOSE","08027588766","MOTHER","Aladura B/Stop, Matogun Road, Ogun State.","2023-06-24","2023-06-24","Admin Admin","Admin Admin","undelete","Active");
INSERT INTO member VALUES("93","748567","HASSAN","ISMAIL","KAZEEN","08029398989","CATTLE SELLER","2023-09-16","hassan@gmail.com","Male","SEMILORE","International Passport","99237320779","22222222222","AKINBODE TOHEEB.jpeg","AKINSANYA TITILOPE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OKE ADEBOSE","08029398989","SISTER","Aladura B/Stop, Matogun Road, Ogun State.","2023-09-16","2023-09-16","AKINSAYA DOYIN","Admin Admin","undelete","Active");
INSERT INTO member VALUES("91","140522","AWOGBADE","JOHN","KUNLE","07098978678","TRADER","2023-06-24","johnkunle@yahoo.com","Male","AYONI","International Passport","987897897897","66567567567","DENIED RESERVATIONS.jpg","AKINSANYA TITILOPE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OGUNDIJO SAMUEL","07098978678","FRIEND","Aladura B/Stop, Matogun Road, Ogun State.","2023-06-24","2023-06-24","Admin Admin","Admin Admin","undelete","Active");
INSERT INTO member VALUES("90","650386","ATANSUYI","FLORENCE","MORENIKEJI","08076580601","","","florence76@gmail.com","Female","AYONI","Voter Card","76567576587576","98789789787","","AKINSANYA TITILOPE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OGUNDIJO PRAISE","08076580601","BROTHER","Aladura B/Stop, Matogun Road, Ogun State.","2023-06-24","2023-06-24","Admin Admin","Admin Admin","undelete","Active");
INSERT INTO member VALUES("83","154758","Abanise","Titilayo","","08068404205","Provision","2023-06-08","demiral@gmail.com","Female","Precious","National Identity Number","5771618626","22333732629","IMG_20230608_165627.jpg","Ajayi Adedoyin","24, Balogun Road","24, Balogun Road","Ondo","Nigeria","Tosin","09039261510","Sister","24, Balogun Road","2023-06-08","2023-06-13","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("84","862111","Rabiu","Abosede","Tawakalitu","08029997175","BUSINESSWOMAN","2023-06-13","demiral@gmail.com","Female","Gudugba","National Identity Number","3333","3333","IMG_20230613_090607.jpg","Ajayi Adedoyin","18, Folarin Close","Mokin st off Gudugba B/Stop","Lagos","Nigeria","Rabiu Sukurat","08029997175","Daughter","18, Folarin Close Off Gudugba","2023-06-13","2023-06-13","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("98","419935","Adepoju","Michael","Sunday","08056161632","Bike Man","1988-06-19","demiral@gmail.com","Male","Ticket 1","Voter Card","3333","3333","IMG_20230619_103159_1.jpg","Ajayi Adedoyin","9, Abule Itewaju Ola ogun","Ishaga/Giwa","Ogun","Nigeria","Adepoju Funmi","08056161632","Daughter","9, Abule Itewaju Ola ogun","2023-06-19","2023-06-19","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("85","374982","Onakayode","oluwatoyin","precious","09027048848","Provision","1987-07-07","de-miral@gmail.com","Female","Toyin","National Identity Number","43222650694","22473370688","","Oyaosho Folakemi","20 Unity Estes Gedion Bus/Stop","20 Unity Estes Gedion Bus/Stop","Ogun","Nigeria","Samuel Onakayode","09027048848","Son","20 Unity Estes Gedion Bus/Stop","2023-06-13","2023-06-13","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("86","508489","Akorede","Jemila","Ajoke","08072771424","BUSINESSWOMAN","1983-01-05","demiral@gmail.com","Female","Gudugba","Voter Card","INC2200000016336310","3333","IMG_20230613_090804.jpg","Ajayi Adedoyin","18, Folarin Street Off Gudugba Bus Stop","Mokin st off Gudugba B/Stop","Lagos","Nigeria","Marian Akorede","08072771424","Daughter","18, Folarin Close Off Gudugba","2023-06-13","2023-06-13","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("87","174660","Onakayode","oluwatoyin","precious","09027048848","Provision","1987-07-07","de-miral@gmail.com","Female","Toyin","National Identity Number","43222650694","22473370688","","Oyaosho Folakemi","20 Unity Estes Gedion Bus/Stop","20 Unity Estes Gedion Bus/Stop","Ogun","Nigeria","Samuel Onakayode","09027048848","Son","20 Unity Estes Gedion Bus/Stop","2023-06-13","2023-06-13","Oyaosho Folakemi","","deleted","Inactive");
INSERT INTO member VALUES("88","117304","Balogun","Adenike","Toyosi","08026533095","BUSINESSWOMAN","1967-08-01","demiral@gmail.com","Female","Isholiki","National Identity Number","1111","0000","IMG_20230613_090703.jpg","Ajayi Adedoyin","10 Isholiki Street Off Balogun Iju ishaga","10 Isholiki Street Off Balogun Iju ishaga  off Gudugba B/Stop","Lagos","Nigeria","Balogun Mayowa","08026533095","Son","10 Isholiki Street Off Balogun Iju ishaga  off Gudugba B/Stop","2023-06-13","2023-06-13","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("89","212692","Olulola","grace","joy","09162544521","Food","2023-06-13","de-miral@gmail.com","Female","Temitope","National Identity Number","95363136000","1111","IMG_20230613_095515.jpg","Oyaosho Folakemi","5 Ogunrinde street ile ise","5 Ogunrinde street ile ise","Imoh","Nigeria","Michael Olulola","09162544521","Son","5 Ogunrinde street ile ise","2023-06-13","2023-06-13","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("195","482965","Adebayo","Kudirat","Tanwa","09015978243","Food Stuff","2023-07-18","demiral@gmail.com","Female","Semilore","National Identity Number","84854521591","11111","IMG_20230719_082643_745.jpg","Shoyebi Folashade","30, Abosule Street","5, Muri Abiola Street Agbado","Ogun","Nigeria","Adebayo Ayo","09015978243","Son","30, Abosule Street","2023-07-19","2023-07-19","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("196","035634","Falola","Titilayo","","09018810266","Koko","","","Female","Boluwatife","Not Available","","22614993408","IMG_20230719_182019_777.jpg","Shoyebi Folashade","17 Dadmus st agbado","Agbado","Ogun","Nigeria","Quadri","09018810266","Son","17 Badmus asuje","2023-07-20","2023-07-20","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("197","932701","Salau","Kabiru","Abefe","08101306152","transportation","1987-01-17","de-miral@gmail.com","Male","K.b","National Identity Number","99503910947","2222","IMG_20230719_182118.jpg","Oyaosho Folakemi","No 27 lamidi street Eleja bus/stop ope ilu","ishaga-agbado","Osun","Nigeria","Salau Faruq","08101306152","son","No 27 lamidi street Eleja bus/stop ope ilu","2023-07-21","2023-07-21","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("198","795502","Fatimo","Ayandele","","09048690514","Shoe","1983-07-21","ayandelefatimo@gmail.com","Female","Boluwatife","National Identity Number","14524871634","","16899403416475221691564449986297.jpg","Shoyebi Folashade","No19Folasade cambell","Agbado","Ogun","Nigeria","Wonu","09048690514","Daughter","Agbado","2023-07-21","2023-07-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("199","636460","Odoro","Felix","","08031910615","Transport","1980-07-21","odorofelix@gmail.com","Male","Boluwatife","National Identity Number","70442085089","","16899427681427357914825532440888.jpg","Shoyebi Folashade","No 17 badmus","Agbado","Ogun","Nigeria","Emma","08031910615","Son","Agbado","2023-07-21","2023-07-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("200","186539","Odoro","Rita","","08032844263","Drinks","1987-07-21","ritaodoro@gmail.com","Female","Boluwatife","National Identity Number","78336126193","","16899433883281851653740859038719.jpg","Shoyebi Folashade","No47 badmus","Agbado","Ogun","Nigeria","James","08032844263","Son","Same","2023-07-21","2023-07-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("201","752410","Okorie","gift","oyinye","07069692243","Provision","1984-06-25","de-miral@gmail.com","Female","Good market","National Identity Number","99434609486","22180945856","IMG_20230721_144134.jpg","Oyaosho Folakemi","No4 Murphy street ishaga matogun","No20 akintoye street crossing","Ebohin","Nigeria","Abraham humand","07069692243","son","No4 Murphy street ishaga matogun","2023-07-21","2023-07-21","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("202","410460","Olajide","Emmanuel","","09160128014","Transport","2023-07-24","olajideemmanuel@gmail.com","Male","UMARU","National Identity Number","92907433573","","16902109461127509519731160185367.jpg","Omolayo Funmilayo","No9 erinle street, power line","Ishaga-powerline","Ogun","Nigeria","Anjola ayo","09160128014","Daughter","Same","2023-07-24","2023-07-24","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("203","844684","Nnamdi","Sabastine","Samuel","07061119740","Bike Man","2023-02-05","demiral@gmail.com","Male","Nnamdi","National Identity Number","57966776175","2222","IMG_20230725_093601.jpg","Ajayi Adedoyin","4, Foursquare Street Off Owolewa","Tajubello","Lagos","Nigeria","Nnamdi Samuel","07061119740","Son","4, Foursquare Street Off Owolewa","2023-07-25","2023-07-25","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("204","372437","Yusuf","Olayinka","","08161757070","Drinks","","","Female","Wisdom","Voter Card","270704054","2232107156","IMG_20230726_083429_172.jpg","Shoyebi Folashade","5 David Amodu Agbado","Agbado","Ogun","Nigeria","Abimbola","08161757070","Daughter","David Amodu agbado","2023-07-26","2023-07-26","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("205","712907","Ogunmodede","Kafayat","","07030698408","Caterer","","","Female","Wisdom","National Identity Number","3601061230","22443165904","IMG_20230726_083520_727.jpg","Shoyebi Folashade","9 Ayoola edun Agbado","Agbado","Ogun","Nigeria","Segun","07030698408","Son","David Amodu agbado","2023-07-26","2023-07-26","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("206","471681","Lateef","Risikatu","Olatundun","09096945756","Provision","1962-08-17","de-miral@gmail.com","Female","Olatundu","Voter Card","A23355065","22410862380","IMG_20230727_085915.jpg","Oyaosho Folakemi","No 9 ademola street enilolobo","No7 grace akinwumi enilolobo","Oyo state","Nigeria","qudril lateef","09096945756","son","No 9 ademola street enilolobo","2023-07-27","2023-07-27","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("207","469928","Samson","Latifat","Abiodun","07034061188","Provisions","1989-12-12","demiral@gmail.com","Female","Okiki","National Identity Number","16937249819","11111111112","16905504630715303516655068476735.jpg","Alago Chidera","1/2 awakan Agbado","Agbado","Ogun","Nigeria","Matthew","07034061188","Son","Same","2023-07-28","2023-07-28","Alago Chidera","Alago Chidera","undelete","Active");
INSERT INTO member VALUES("208","504614","TEMITOPE","ESTHER","","08118383111","HAIRDRESSING","1999-01-04","TEMITOPEESTHER@GMAIL.COM","Female","EMERALD","National Identity Number","16414444262","22462407292","20230725_162808.jpg","Ibitomi Esther","6,FESOMADE STREET,POWERLINE","17,FESOMADE STREET,","Lagos","Nigeria","AFOLAYAN OPEYEMI","08118383111","RELATIVE","3,OLAEGBON STREET,KOLA","2023-07-28","2023-07-28","Ibitomi Esther","Ibitomi Esther","undelete","Active");
INSERT INTO member VALUES("209","011570","Daodu","Abosede","Comfort","08121266554","Drinks","1988-08-02","demiral@gmail.com","Female","Comfort","Voter Card","90F5B02FA0296476579","2222","IMG_20230801_111434 (1).jpg","Ajayi Adedoyin","1, Ayinde Ajibode Street Off Oguntade","1, Ayinde Ajibode Street Off Oguntade","Lagos","Nigeria","Ife Daodu","08121266554","Daughter","1, Ayinde Ajibode Street Off Oguntade","2023-08-01","2023-08-01","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("210","005778","Babatunde","Bidemi","Bukola","08165503384","Provision","1978-11-09","de-miral@gmail.com","Female","Iya koko","Voter Card","10112500522","22146228328","IMG_20230801_105159.jpg","Oyaosho Folakemi","No 1 Bailey street taju bello","No 1 Bailey street taju bello","Oyo state","Nigeria","fummi babatunde","08165503384","daughter","No 1 Bailey street taju bello","2023-08-02","2023-08-02","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("211","922803","Jimoh","Bola","Risikatu","08025925491","Chemist","1981-02-03","de-miral@gmail.com","Female","Chemist","National Identity Number","12185000634","2222","IMG_20230802_091721.jpg","Oyaosho Folakemi","No 3 fagbohun street","No 18 adunni okanlawon street crossing","Ondo","Nigeria","Shina Jimoh","08025925491","son","No 3 fagbohun street","2023-08-02","2023-08-02","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("212","268816","Taofeex","Asisat","Wemimo","08064599521","Hawking","1972-02-15","demiral@gmail.com","Female","Odunayo","Voter Card","0G544051637","2222","","Ajayi Adedoyin","11, Adeshina Street Off Olusesi","11, Adeshina Street Off Olusesi","Lagos","Nigeria","Kehinde Rokibat","08064599521","Daughter","11, Adeshina Street Off Olusesi","2023-08-02","2023-08-02","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("213","696058","Adedayo","Diyaolu","felicia","07064538447","Provision","1989-12-28","de-miral@gmail.com","Female","Diyaolu","Not Available","1111","22519121847","IMG_20230802_064001.jpg","Oyaosho Folakemi","No 14 Adeodu street powerline","No 14 Adeodu street powerline","Kwara","Nigeria","Boluwatife Diyaolu","07064538447","daughter","No 14 Adeodu street powerline","2023-08-03","2023-08-03","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("214","181005","Solalo","juliana","chinyere","08063944094","Food seller","1981-01-26","de-miral@gmail.com","Female","Chinyere","National Identity Number","87905316322","22407527975","IMG_20230802_091910.jpg","Oyaosho Folakemi","No 13 aliyn street tokotaya","No 62 olatoye street powerline","Imo","Nigeria","Abiodun solola","08063944094","husband","13 aliyn street tokotaya","2023-08-03","2023-08-03","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("215","865242","Solalo","juliana","chinyere","08063944094","Food seller","1981-01-26","de-miral@gmail.com","Female","Chinyere","National Identity Number","87905316322","22407527975","IMG_20230802_091910.jpg","Oyaosho Folakemi","No 13 aliyn street tokotaya","No 62 olatoye street powerline","Imo","Nigeria","Abiodun solola","08063944094","husband","13 aliyn street tokotaya","2023-08-03","2023-08-03","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("216","472004","Lawal","Onaopemipo","Oluwakemi","08105263246","Drinks","1957-10-10","de-miral@gmail.com","Female","Onaopemipo","National Identity Number","61474072772","22517819108","","Oyaosho Folakemi","No 25 olatoye street","yayabatan ogba","Ogun state","Nigeria","Lawal temitope","08061389104","Daughter","No 25 olatoye street","2023-08-04","2023-08-04","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("217","113886","Amidu","Oladeso","Hammed","08022626179","transportation","1967-07-22","de-miral@gmail.com","Male","Mariam","National Identity Number","48855449346","22359413489","IMG_20230727_143739.jpg","Oyaosho Folakemi","No 3 adeodu street","ishaga-abule","Ogun state","Nigeria","oladejo wasi","08022626179","daughter","No 3 adeodu street","2023-08-06","2023-08-06","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("218","144137","Osunpidan","lola","","08182796575","Plastics seller","1966-06-12","de-miral@gmail.com","Female","Iya koko","Voter Card","","222","IMG_20230806_130129.jpg","Oyaosho Folakemi","No 9 okewole Kenny street","No 9 okewole Kenny street","Oyo state","Nigeria","Ayo Osunpidan","07014809728","son","No 17 muriabiola oja","2023-08-06","2023-09-18","Oyaosho Folakemi","Sanni Bukola","undelete","Active");
INSERT INTO member VALUES("219","976892","Mebel","Irunkwar","Kinse","08171300220","Fufu seller","1968-02-18","de-miral@gmail.com","Female","Iya fufu","National Identity Number","15054208230","222","IMG_20230806_145840.jpg","Oyaosho Folakemi","No 1 shabayo close","No 1 Bailey street","Delta","Nigeria","Sunday john","08171300220","son","No 1 shabayo close","2023-08-06","2023-08-06","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("220","491180","Adegunle","Adefunke","","08168955455","Food Seller","2023-08-07","demiral@gmail.com","Female","Ticket 2","Voter Card","2222","1111","IMG_20230807_163935.jpg","Ajayi Adedoyin","14, Joseph Bodede Street Ishaga","Ishaga Market","Lagos","Nigeria","Adegunle Anu","08168955455","Daughter","14, Joseph Bodede Street Ishaga","2023-08-07","2023-08-07","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("221","383250","Kafayat","Shobwale","Iya mary","09169805340","Trader","1981-02-22","demiral@gmail.com","Female","Esther","Voter Card","21272527808","2246418862","","Alago Chidera","17 opposite crossing","Agbado","Ogun","Nigeria","Joshua","09169805340","Son","Same","2023-08-09","2023-08-09","Alago Chidera","Alago Chidera","undelete","Active");
INSERT INTO member VALUES("222","700203","Oginni","Bose","Ayodeji","08162939266","farmming","1985-09-16","de-miral@gmail.com","Female","Iya koko","National Identity Number","58507108533","22144791367","IMG_20230810_084243.jpg","Oyaosho Folakemi","No 30 adeniyi street powerline","No 29 pep line street tau-bello","Ogun state","Nigeria","Ayodeji Oginni","08162939266","husband","No 30 adeniyi street powerline","2023-08-10","2023-08-10","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("223","429234","Abimbade","Sanjo","Felix","08172756138","Bike Man","1979-06-06","demiral@gmail.com","Male","Oremeta","National Identity Number","73868582282","2222","","Ajayi Adedoyin","9, Akanbi Street Jankara Olaniyi","Balogun/Ishaga","Lagos","Nigeria","Akinbami Precious","08172756138","Daughter","9, Akanbi Street Jankara Olaniyi","2023-08-15","2023-08-15","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("224","161594","Fapodunda","Yetunde","Olanike","09030053198","Cloth &amp; Shoes","1987-08-22","demiral@gmail.com","Female","Comfort","National Identity Number","89392485492","2222","IMG_20230817_084757 (1).jpg","Ajayi Adedoyin","1, Ayinde Ajibode Street Off Oguntade","Agege Market","Lagos","Nigeria","Fapodunda Demilade","09030053198","Daughter","1, Ayinde Ajibode Street Off Oguntade","2023-08-17","2023-08-17","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("225","405947","Akinboni","Adenike","","07017909589","Soft Drinks","2023-08-17","demiral@gmail.com","Female","Oke Ayo","National Identity Number","22824420701","2222","","Ajayi Adedoyin","32, Oke Ayo Street","Ishaga Market","Lagos","Nigeria","Rachel","07017909589","Daughter","32, Oke Ayo Street","2023-08-17","2023-08-17","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("226","409067","Jimoh","Khadijat","Ayomide","09032544510","Trader","1994-03-20","","Female","Toke","National Identity Number","44387754390","22620430401","16922733119814258291070964602267.jpg","Omolayo Funmilayo","No7Adeniiran faloun, cele bus stop Elliott","Fagba","Lagos","Nigeria","Jimoh bola","09032544510","Sister","Same address","2023-08-17","2023-08-17","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("234","261145","Fayemi","Temitope","Elizabeth","09044004045","Drinks","1987-08-23","de-miral@gmail.com","Female","Genesis","Not Available","12345","22545256908","IMG_20230830_171025.jpg","Oyaosho Folakemi","No 1 fayemi close water","No 1 fayemi close  water","Ogun state","Nigeria","Fayemi Ayomide","09044004045","son","No 1 fayemi close water","2023-09-01","2023-09-01","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("228","703115","Babarinde","Florence","Biodun","09079903672","Provision","1980-09-29","de-miral@gmail.com","Female","Florence","National Identity Number","30333259565","22323562537","IMG_20230827_121544.jpg","","No 6 oredola street","No 3 adeniyi street","Oyo state","Nigeria","Olamide Babarinde","09079903672","son","No 6 oredola street","2023-08-27","2023-08-27","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("229","838385","Oladejo","Mariam","Abiodun","07033493205","Pepper seller","1983-12-31","de-miral@gmail.com","Female","Mariam","National Identity Number","22411684876","22495744731","IMG_20230827_123609.jpg","Oyaosho Folakemi","No 3 adeodun street","No 3 adeodun street","Ogun state","Nigeria","oladejo wasilat","07033493205","daughter","No 3 adeodu street","2023-08-27","2023-08-27","Oyaosho Folakemi","Admin Admin","undelete","Active");
INSERT INTO member VALUES("230","115526","Balogun","Sekinat","","08138949856","Trader","1987-12-17","balogunsekina@gmail.com","Female","Adufe","National Identity Number","33015869881","22192614841","16932174862516870135579759727854.jpg","Omolayo Funmilayo","No 24 ancluse","Same address","Ogun","Nigeria","Mariam","08138949856","Daughter","Same address","2023-08-28","2023-08-28","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("231","309260","Adeola","Adeniyi","Iyanu","09166258320","woman wear","1998-10-20","demiral@gmail.com","Female","Mariam","National Identity Number","64561642348","22441180204","IMG_20230830_170042.jpg","Oyaosho Folakemi","No 15 oluadedokun street powerline","No 9 oluadedokun street","osun","Nigeria","oyinade Adeniyi","09166258320","Daughter","ifo  street","2023-09-01","2023-09-01","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("232","434642","Babatunde","Kemi","Tayo","09162742361","Indomie seller","2023-12-08","demiral@gmail.com","Female","kemi","National Identity Number","88552312439","22476067383","IMG_20230830_170126.jpg","Oyaosho Folakemi","No 17 ishola street  ile ise","No 17 Ishola street  Ile ise","Ogun","Nigeria","Emmanuel Robeth","09162742361","Son","No 17 ishola street  ile ise","2023-09-01","2023-09-01","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("233","723508","Famuyiwa","Lola","","07058082025","Pepper","","","Female","Arike","Not Available","2222","2222","IMG_20230901_091841_206.jpg","Shoyebi Folashade","No 5 oshoba rd","Agbado","Ogun","Nigeria","Lekan","07058082025","Son","5oshoba Rd agbado","2023-09-01","2023-09-01","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("235","362807","Adeniji","Taiwo","Titilope","08065138173","Fashion designer","1995-03-15","de-miral@gmail.com","Female","Adeniji","Driver Licence","33333333333","22489265695","IMG_20230902_164658.jpg","Oyaosho Folakemi","No 12Fatai nosiru street. Ile ise","no 4 Abdul I street off balogun","Oyo state","Nigeria","Halia Oladipupo","08057042761","daughter","No 12Fatai nosiru street. Ile ise","2023-09-02","2024-01-08","Oyaosho Folakemi","Admin Admin","undelete","Active");
INSERT INTO member VALUES("236","092960","Odejimi","Felicia","Tosin","07010744778","Drugs","2023-08-21","de-miral@gmail.com","Female","Felicia","National Identity Number","82705869249","2222","IMG_20230902_172022.jpg","Oyaosho Folakemi","No6 ifelodun street lambe","pipeline bus stop","Ogun state","Nigeria","Elijah odejimi","07010744778","son","No6 ifelodun street lambe","2023-09-03","2023-09-03","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("237","585370","Odoro","Rita","","07058082025","","","","Female","Boluwatife","Not Available","2222","2222","IMG_20230901_171721_973.jpg","Shoyebi Folashade","No 5 Badmus st Asuje","Ijaye","Delta","Nigeria","Ema","07058082025","Son","5 Badmus t Asuje","2023-09-04","2023-09-04","Shoyebi Folashade","Admin Admin","undelete","Active");
INSERT INTO member VALUES("238","897207","Adebayo","Adeola","","08086193443","Fruit seller","1987-06-04","Adebayoadeola@gmail.com","Female","Ayoni","National Identity Number","92784557517","22349941022","","Shoyebi Folashade","No 4 ancluse","Ancluse","Ogun","Nigeria","Ayomide Abiola","08086193443","Daughter","Same address","2023-09-04","2023-09-04","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("239","128919","Adisa","Nofisat","morenikeji","08038074491","Provision","2023-08-04","de-miral@gmail.com","Female","Princess","National Identity Number","76651179980","22402817664","IMG_20230810_172241.jpg","Oyaosho Folakemi","No7 sanuaje street toyin","no 14 olatoye street  powerline bus stop","kwara","Nigeria","Adisa Olamilekan","08038074491","sister","No7 sanuaje street toyin","2023-09-05","2023-09-05","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("240","025862","Emele","Racheal","","08062261012","Ugu Seller","1948-09-06","demiral@gmail.com","Female","Ilerioluwa","Not Available","22222","22222","IMG_20230906_090838_158.jpg","Shoyebi Folashade","8, Salami Street Agbado","Ishaga Market","ogun","Nigeria","Faith","08062261012","Daughter","8, Salami Street Agbado","2023-09-06","2023-09-06","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("241","802093","Onuoha","Salomey","","08062261012","Ugu Seller","2023-09-05","demiral@gmail.com","Female","Ilerioluwa","Not Available","22222","22222","IMG_20230906_090818_423.jpg","Shoyebi Folashade","8, Salami Street Agbado","Agbado Market","Ogun","Nigeria","Peace","08062261012","Daughter","8, Salami Street Agbado","2023-09-06","2023-09-06","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("242","545232","Obasa","Funmilayo","","09168494699","Hair Dressing","2023-09-12","demiral@gmail.com","Female","Boluwatife","National Identity Number","INC2200000045284578","2222","IMG_20230901_091318_935.jpg","Shoyebi Folashade","20, Badmus Street","Suleja Bus Stop","Ogun","Nigeria","Odun","09168494699","Daughter","20, Badmus Street","2023-09-06","2023-09-06","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("243","288633","Kareem","Funmilayo","","08080451196","Drinks","2023-09-06","demiral@gmail.com","Female","Ilerioluwa","Not Available","22222","22222","IMG_20230906_101822_219.jpg","Shoyebi Folashade","7, Salami Street","Agbado Market","Lagos","Nigeria","Muda","08080451196","Son","7, Salami Street","2023-09-06","2023-09-06","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("244","452226","Kasali","Rashidat","","08064420317","Food Seller","2023-09-01","demiral@gmail.com","Female","Blossom","Voter Card","2222","2222","IMG_20230906_090729_16.jpg","Shoyebi Folashade","5, Oriyomi Street","Agbado Market","Ogun","Nigeria","Rokiba","08064420317","Daughter","5, Oriyomi Street","2023-09-06","2023-09-06","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("245","107666","Goriola","Fumilayo","","08084476839","","","","Female","Ire","National Identity Number","52664591080","2222","IMG_20230907_100320_947.jpg","Shoyebi Folashade","5 Yidi bus stop","Agbado","Ogun","Nigeria","Sodiq","08084476839","Son","No9 Yidi bus stop Agbado","2023-09-07","2023-09-07","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("246","974743","Faboro","Femi","","08023754641","","","","Female","Divine","Not Available","2222","2222","IMG_20230907_163556_895.jpg","Shoyebi Folashade","7 pipeline tajubello","Pipeline","Ogun","Nigeria","Gbenga","08023754641","Son","7 lshaga rd","2023-09-07","2023-09-07","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("247","847222","Ajibodu","Babatunde","Valentine","08022321182","Gas Refill","1984-02-14","demiral@gmail.com","Male","Valentine","Voter Card","90F5B12B1C295786471","2222","IMG_20230908_162006_1.jpg","Ajayi Adedoyin","16, Ayinde Ajibode Street Off Oguntade","16, Ayinde Ajibode Street Off Oguntade","Lagos","Nigeria","Ajibodu Adedesire","08022321182","Daughter","16, Ayinde Ajibode Street Off Oguntade","2023-09-08","2023-09-08","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("248","379262","Yeku","Morufat","Oladunmi","08160704679","Fish Seller","1967-09-16","demiral@gmail.com","Female","Asunmo","National Identity Number","87583857781","2222","IMG_20230913_153357.jpg","Ajayi Adedoyin","27, Ifelodun Street Eliot","Ishaga Market","Lagos","Nigeria","Bashorun Ismail","08160704679","Son","27, Ifelodun Street Eliot","2023-09-13","2023-09-13","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("249","512702","Olomowewe","Toyin","","08032627025","Trader","1982-02-15","olomowewetoyin@gmail.com","Female","TAJU BELLO","Voter Card","40371199","22442613231","16946806473738917485894795329362.jpg","Omolayo Funmilayo","No 2 ramoni close","Berger","Ogun","Nigeria","Amhed","08032627025","Son","Same address","2023-09-14","2023-09-14","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("250","063603","Ajibola","Nurudeen","","09011522565","Transporter","2023-09-15","demiral@gmail.com","Male","Ilerioluwa","National Identity Number","50119958011","2222","IMG_20230915_160157.jpg","Shoyebi Folashade","5, Salami Street","5, Salami Street","Ogun","Nigeria","Aminat","09011522565","Daughter","5, Salami Street","2023-09-15","2023-09-15","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("256","007107","Adediran","Sarah","","09032255213","Trader","1990-03-24","adediransara@gmail.com","Female","Ayonio","National Identity Number","8158092638","22222","16950403528893397021843221065939.jpg","Omolayo Funmilayo","No11 salami str","Ancluse","Ogun","Nigeria","Fathia","09032255213","Daughter","Same address","2023-09-18","2023-09-18","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("257","355438","Adebayo","Adeola","","08086193443","Fruit seller","1987-06-04","Adebayoadeola@gmail.com","Female","Ayonio","National Identity Number","92784557517","22349941022","16950418897127970143851768212684.jpg","Omolayo Funmilayo","No 4 ancluse","Ancluse","Ogun","Nigeria","Ayomide Abiola","08086193443","Daughter","Same address","2023-09-18","2023-09-18","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("253","465909","Abereijo","Mutiat","Motunrayo","09118024535","Pos/Catering","2023-09-15","demiral@gmail.com","Female","Alahaja","International Passport","17154873446","2222","IMG_20230714_101641.jpg","Shoyebi Folashade","5, Oluseyi Street Suleja","5 Oluseyi Street Suleja","Ogun","Nigeria","Jamal","09118024535","Son","5, Oluseyi Street Suleja","2023-09-15","2023-09-15","Shoyebi Folashade","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("254","717321","Oyewole","Remi","","08026641246","Gbanjo","2023-09-15","demiral@gmail.com","Female","Ayedun","National Identity Number","65352471306","2222","IMG_20230915_155908.jpg","Shoyebi Folashade","8, Oredegbe Street","Eko Market","Ogun","Nigeria","Asisat","08026641246","Son","8, Oredegbe Street","2023-09-15","2023-09-15","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("255","075151","Adekunle","Afusat","Arike","08166447578","Hotel","2023-09-18","demiral@gmail.com","Female","Kitchen","National Identity Number","53571879826","2222","IMG_20230915_160037.jpg","Ajayi Adedoyin","5, Muri Abiola Street Agbado","5, Muri Abiola Street Agbado","Ogun","Nigeria","Damilola","08166447578","Daughter","5, Muri Abiola Street Agbado","2023-09-18","2023-09-18","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("258","361061","Bamigbose","Yemisi","Mariam","09029244394","Liquor","1969-10-20","bamgboseyemisi@gmail.com","Female","IYA IJEBU","Voter Card","2222","22500096022","16952008717887316178495613247750.jpg","Omolayo Funmilayo","10, Ajobode str","Giwa bus stop","Ogun","Nigeria","Abideen","09029244394","Son","Same address","2023-09-20","2023-09-20","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("259","928847","Abdulsirmad","Alimot","Bola","08065138173","Shoes","1995-05-29","demiral@gmail.com","Female","Akorede","Driver Licence","","","IMG_20230920_172155_64.jpg","Shoyebi Folashade","2, Wonderlane Pipeline","Agbado Market","Ogun","Nigeria","Jamal","09054847340","Son","2, Wonderlane Pipeline","2023-09-21","2024-01-08","Shoyebi Folashade","Admin Admin","undelete","Active");
INSERT INTO member VALUES("260","182520","Ademola","Agnes","Adejumoke","08060813180","Food Stuff","2023-09-09","demiral@gmail.com","Female","Akorede","Not Available","22222","2222","IMG_20230920_172226_716.jpg","Shoyebi Folashade","3, Shopitan Close","Agbado Market","Ogun","Nigeria","Ibukun","08060813180","Daughter","3, Shopitan Close","2023-09-21","2023-09-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("261","586283","Oyeniyi","Latifat","Folashade","09132796493","Groundnut","2023-09-20","demiral@gmail.com","Female","Akorede","National Identity Number","19801185181","22222","IMG_20230920_172211_454.jpg","Shoyebi Folashade","19,  Pipeline Road","Agbado Market","Ogun","Nigeria","Sodiq","09132796493","Son","19,  Pipeline Road","2023-09-21","2023-09-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("262","623993","Lawal","Nimota","Elizabeth","09073241933","Potatoes Chips","2023-09-17","demiral@gmail.com","Female","Pelumi","National Identity Number","77339024808","2222","IMG_20230920_172244_388.jpg","Shoyebi Folashade","7, Ten Kobo Street","Agbado Market","Ogun","Nigeria","Rasheed","09073241933","Son","7, Ten Kobo Street","2023-09-21","2023-09-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("263","616309","Adesanmi","Funke","","08136023589","Drugs","1985-05-06","demiral@gmail.com","Female","Funke","Not Available","22222","22222","IMG_20230920_172235_24.jpg","Shoyebi Folashade","10, Ishola Muri Abiola","Agege","Ogun","Nigeria","Tawa","08136023589","Daughter","10, Ishola Muri Abiola","2023-09-21","2023-09-21","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("264","261535","Alaba","Babatunde","Shobande","08059298333","Fintech","1985-03-05","Alabababatunde@gmail.com","Female","Mr Tunde","National Identity Number","46592443641","22188214189","16952894739923490164419789099412.jpg","Sanni Bukola","74, kajola road obawole","Same address","Lagos","Nigeria","Olabisi shobande","08059298333","Spouse","Same address","2023-09-21","2023-09-21","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("265","152179","Olewe","Iheayi","","07035325166","Trader","1977-04-28","oleweiheayi@gmail.com","Male","Olewe","National Identity Number","4444","22198365046","16953002819252729417311395879072.jpg","Omolayo Funmilayo","No4 church str, tajubello","8 oriowo str, tajubello","Ogun","Nigeria","Ruth","07035325166","Wife","Same address","2023-09-21","2023-09-21","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("266","400809","Adewunmi","Dupe","Bukky","09027788742","Drinks","1979-05-14","demiral@gmail.com","Female","Adewunmi","Not Available","2222","2222","IMG_20230921_165800.jpg","Ajayi Adedoyin","25, Balogun Road","Atanda Close Gudugba Bus Stop","Ogun","Nigeria","Odunayo","09027788742","Daughter","25, Balogun Road","2023-09-21","2023-09-21","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("267","006398","Adeyeye","Elizabeth","","09034998643","Beer parlour","2023-09-25","","Female","Greatness","National Identity Number","7393377058662","2222","IMG_20230925_092822_389.jpg","Shoyebi Folashade","5 Lamidi st crossing Agbado","5  Onikoyi st Abosule crossing","Ekiti","Nigeria","Richard","09034998643","Son","5 Lamidi st crossing","2023-09-25","2023-09-25","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("268","979799","Shobande","Alaba","Babatunde","08059298333","Fintech","1985-03-05","demiral@gmail.com","Male","Babatunde","National Identity Number","46592443641","22188214189","1695715788183.jpg","Ajayi Adedoyin","74, Kajola Road Obawole","Baxi Company","Ogun","Nigeria","Olabisi Shobande","08059298333","Spouse","74, Kajola Road Obawole","2023-09-26","2023-09-26","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("269","627413","Badejo","Sukurat","Nike","07062557745","Clothes","2023-09-25","demiral@gmail.com","Female","Badejo","Not Available","22222","22443124781","1695717017775.jpg","Oyaosho Folakemi","No 13 Fatai  Nosiru Street Crossing","No5 owodeyi street abosule  crossing","ogun","Nigeria","Ademide Hamzat","07062557745","SON","No 13 Fatai  Nosiru Street Crossing","2023-09-26","2023-09-26","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("270","764152","Alake","Stella","Mercy","07085749412","Red Made","2023-12-28","demiral@gmail.com","Female","Greatness","National Identity Number","50635687745","22410111249","1695720405909.jpg","Shoyebi Folashade","56, Idi Bus-Stop","56, Idi Bus-Stop","Ogun","Nigeria","Akiola Elija","07085749412","Son","56, Idi Bus-Stop","2023-09-26","2023-09-26","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("271","736407","Salami","Shakirat","Tope","07080229503","Disposal Pack","2023-10-01","demiral@gmail.com","Female","Greatness","Voter Card","57966776175","22233014072","1695719962864.jpg","Shoyebi Folashade","7, Ayoola Edun Street","Agbado Market","Ogun","Nigeria","Salami Yusuf","07080229503","Son","7, Ayoola Edun Street","2023-09-26","2023-09-26","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("272","856433","Essien","Peter","Effiong","09072971099","Off Landing","1976-09-23","demiral@gmail.com","Female","Enilolobo","National Identity Number","76960625573","2222","1695717017822.jpg","Oyaosho Folakemi","21, Olaiya Street Enilolobo","41, Romace Road Enilolobo","Ogun","Nigeria","Essien Goodluck","09072971099","Son","21, Olaiya Street Enilolobo","2023-09-26","2023-09-26","Oyaosho Folakemi","Oyaosho Folakemi","undelete","Active");
INSERT INTO member VALUES("273","601099","Kareem","Morenike","","09027092906","Food stuff","","","Female","Akorede","National Identity Number","8366593529","2222","IMG_20230927_083219_506.jpg","Shoyebi Folashade","5 Pipeline Rd water","Agbado","Osun","Nigeria","Idowu","09027092906","Daughter","5 Pipeline Rd water","2023-09-27","2023-09-27","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("274","848696","Jolayemi","Kemi","","09122256777","Provision","","","Female","Pelumi","National Identity Number","43947815642","2222","IMG_20230927_083259_183.jpg","Shoyebi Folashade","2 oremeji st agbado crossing","Crossing","Osun","Nigeria","Chiboy","09122256777","Son","2 Oremeji st crossing","2023-09-27","2023-09-27","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("275","028586","Ayorinde","Fatimo","","09135717881","Drinks","","","Female","Pelumi","National Identity Number","78034299074","2222","IMG_20230927_094022_814.jpg","Shoyebi Folashade","10 Abikeola st lshaga","lshaga","Ogun","Nigeria","Eniola","09135717881","Daughter","10 Abikeola st lshaga","2023-09-27","2023-09-27","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("276","101149","Akinsanya","Bosede","Olaide","08166650792","Trader","1966-08-29","demiral@gmail.com","Female","Ope","National Identity Number","17683866454","22488517472","IMG_20230927_150329_1.jpg","Ajayi Adedoyin","1, Yewande Street","Taju Bello Bus Stop","Ogun","Nigeria","Akinsanya Mayowa","08166650792","Son","1, Yewande Street","2023-09-27","2023-09-27","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("277","799395","Adebayo","Wasiu","Alabi","08123854889","Okada","1980-09-15","demiral@gmail.com","Male","Alabi","National Identity Number","57153422942","2255986755","","Ajayi Adedoyin","29, Irapada Street","Giwa/Ishaga","Ogun","Nigeria","Adebayo Mercy","08123854889","Daughter","29, Irapada Street","2023-09-29","2023-09-29","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("278","081901","Daramola","Ayodele","Joshua","07066595455","Transporter","1973-07-12","demiral@gmail.com","Male","Execl","National Identity Number","13055431144","22308157200","IMG_20231003_165721.jpg","Ajayi Adedoyin","13, Olorunsogo Street Matogun","Ishaga/Agege","Ogun","Nigeria","Daramola Seun","07066595455","Daughter","13, Olorunsogo Street Matogun","2023-10-03","2023-10-03","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("279","227859","Ereji-Kesi","Falilat","Noghq","08023139292","Book Seller","1986-10-04","demiral@gmail.com","Female","Falilat","Voter Card","90F5B12C1295278445","22145216128","","Ajayi Adedoyin","3, Adesakin Close","3, Adesakin Close","Lagos","Nigeria","Elohob Ereji-Kesi","08023139292","Daughter","3, Adesakin Close","2023-10-04","2023-10-04","Ajayi Adedoyin","Ajayi Adedoyin","deleted","Active");
INSERT INTO member VALUES("280","657963","Yusuf","Yetunde","Abosede","08147123512","Indomie Seller","1993-02-05","demiral@gmail.com","Female","Yetunde","National Identity Number","10654913065","2222","IMG_20231005_083242.jpg","Ajayi Adedoyin","47, Akinyele Street Oke-Aro","Toyin Bus Stop","Ogun","Nigeria","Yusuf Basit","08147123512","Son","47, Akinyele Street Oke-Aro","2023-10-05","2023-10-05","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("281","126958","Ahmed","Baba","","08063214160","Bike Man","1972-01-09","demiral@gmail.com","Male","Nupe","Not Available","3333","22462853715","IMG_20231005_092143 (1).jpg","Ajayi Adedoyin","14, Sholeye Street Ope Ilu","Ishaga","Ogun","Nigeria","Awawu","08063214160","Daughter","14, Sholeye Street Ope Ilu","2023-10-05","2023-10-05","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("282","540601","Muhammed","Abdullai","","08149480660","Bike Man","1982-10-22","demiral@gmail.com","Male","Nupe","Not Available","2222","22413789130","IMG_20231005_092231.jpg","Ajayi Adedoyin","22, Owonikoko Street Agbado","Ishaga/Agbado","Ogun","Nigeria","Abdullai","08149480660","Son","22, Owonikoko Street Agbado","2023-10-05","2023-10-05","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("283","621958","Bukky","Lawal","","08163986087","Fashion Designer","1990-01-01","demiral@gmail.com","Female","Pelumi","Not Available","2222","11111","","Shoyebi Folashade","10 ten kobo","Agbado","Ogun","Nigeria","Korede","08163986087","Son","same","2023-10-10","2023-10-10","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("284","278865","Kofoworola","Tiamiyu","","08127679661","Egg Saller","1995-09-12","demiral@gmail.com","Female","Pelumi","Not Available","2222","11111","IMG_20231011_091714_641.jpg","Shoyebi Folashade","2 oremeji","Agbado Market","Ogun","Nigeria","Kofo","08127679661","Daughter","2 oremeji","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("285","570493","Tawakalitu","OLatinwo","","08164397331","Agbo","1982-09-09","demiral@gmail.com","Female","Gift","Not Available","2222","22222222222","IMG_20231010_091033_479 (2).jpg","Shoyebi Folashade","1 lateef jankande","Agbado Market","oyo","Nigeria","Lawal","08164397331","Son","same","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("286","204833","Ifeoluwa","Olayemi","","08030898338","Trader","1985-07-21","demiral@gmail.com","Female","Oluwatosin","Not Available","2222","11111","IMG_20231010_091026_106.jpg","Shoyebi Folashade","38 salnmi","Agbado","Ogun","Nigeria","Taiye","08030898338","Son","same","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("287","977991","Jelili","Muritala","","09010605144","Fashion Designer","1985-09-26","demiral@gmail.com","Male","Ire","Not Available","2222","11111","","Shoyebi Folashade","5 olokose","Oke Aro","Osun","Nigeria","Sodiq","09010605144","Son","same","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("288","493688","Omoniyi","Tolani","","09044207899","Fashion Designer","1987-09-09","demiral@gmail.com","Female","Blossom","Not Available","2222","22222","IMG_20231011_105457_908~2.jpg","Shoyebi Folashade","32 Eninlolobo","32 Eninlolobo","Ogun","Nigeria","Bose","09044207899","Daughter","same","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("289","071006","Fatoyinbo","Balikis","Temitope","09045764360","Fish seller","1986-06-06","fatoyinbobalikis@gmail.com","Female","Balikis","National Identity Number","8278903074","22473075556","16970315497544575981218738309242.jpg","Omolayo Funmilayo","17, tajubello","Tajubello","Ogun","Nigeria","Fatoyinbo alimat","09045764360","Daughter","Same address","2023-10-11","2023-10-11","Omolayo Funmilayo","Omolayo Funmilayo","undelete","Active");
INSERT INTO member VALUES("290","747507","Omoniyi","Tolani","","09044207899","Fashion Designer","1987-09-09","demiral@gmail.com","Female","Blossom","Not Available","2222","1111","IMG_20231011_105457_908~2.jpg","Shoyebi Folashade","32 Eninlolobo","same","Ogun","Nigeria","Bose","09044207899","Daughter","same","2023-10-11","2023-10-11","Shoyebi Folashade","","deleted","Inactive");
INSERT INTO member VALUES("291","146264","Salami","Janet","Odun","08149359683","Egg Saller","1987-08-09","demiral@gmail.com","Female","Temitope","Not Available","2222","11111","IMG_20231011_105426_785~2.jpg","Oyaosho Folakemi","8 odebode","Agbado Market","Ondo","Nigeria","Naomi","08149359683","Daughter","same","2023-10-11","2023-10-11","Shoyebi Folashade","Shoyebi Folashade","undelete","Active");
INSERT INTO member VALUES("292","151247","Ajibode","Muinat","Ajoke","09064360878","Snacks","1993-01-01","demiral@gmail.com","Female","Gold","Voter Card","FA5B3EC0A5535740244","2222","IMG_20231107_105544.jpg","Oyaosho Folakemi","2, Pipeline Street Tajubello","2, Pipeline Street Tajubello","Ogun","Nigeria","Ogundepo Moses","09064360878","Son","2, Pipeline Street Tajubello","2023-11-07","2023-11-07","Ajayi Adedoyin","Ajayi Adedoyin","undelete","Active");
INSERT INTO member VALUES("293","516431","ADETORO","DAVID","MODUPE","09092929292","ROAD WORKER","2001-03-14","davidadetoro@gmail.com","Male","Precious","Driver Licence","1JB123983921839","13123213213","CAC CERT. SAMPLE.jpg","AKINSANYA TITILOPE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","09092929292","brother","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2023-12-27","2023-12-27","Admin Admin","","deleted","Inactive");
INSERT INTO member VALUES("294","700413","ODEWOLE","ABIODUN","BOLUWATIFE","0909090909","BUSINESS","2024-01-10","joshua_atansuyi@yahoo.com","Male","Amazing","International Passport","1JB123983921839","13123212345","gallery_2.jpg","Oyaosho Folakemi","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","ONDO","Nigeria","SEUN ADEGOKE","0909090909","SISTER","ALADURA BUS STOP, MATOGHUN ROAD, OGUN STATE","2024-01-10","2024-01-10","Admin Admin","","undelete","Inactive");



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
  `date_time` varchar(255) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` varchar(255) DEFAULT NULL,
  `status2` varchar(100) DEFAULT 'undelete',
  PRIMARY KEY (`rp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1834 DEFAULT CHARSET=latin1;

INSERT INTO rep_tbl VALUES("234","73920230613","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","15000.00","0.00","15000.00","Credit","confirmed","Loan Repayment      
8/6/23
12/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-13","2023-06-13 10:28:25am","","2023-06-13 10:29:09am","undelete");
INSERT INTO rep_tbl VALUES("235","73920230613","862111","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","15000.00","0.00","","confirmed","Loan Repayment      
8/6/23
12/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-13","2023-06-13 10:28:25am","","2023-06-13 10:29:09am","undelete");
INSERT INTO rep_tbl VALUES("236","","117304","85714617","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-13","","","","undelete");
INSERT INTO rep_tbl VALUES("233","","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","Sanni Bukola","Ajayi Adedoyin","2023-06-13","2023-06-13 9:30:05am","","","undelete");
INSERT INTO rep_tbl VALUES("232","","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","Sanni Bukola","Ajayi Adedoyin","2023-03-08","2023-03-16 8:40:07am","","","undelete");
INSERT INTO rep_tbl VALUES("239","","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-13","","","","undelete");
INSERT INTO rep_tbl VALUES("240","","232627","43256879","Shobiye Felicia ","Indomie","Ajayi Adedoyin","150000.00","150000.00","0.00","180000.00","0.00","180000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-14","","","","undelete");
INSERT INTO rep_tbl VALUES("241","","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-14","","","","undelete");
INSERT INTO rep_tbl VALUES("242","","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-19","","","","undelete");
INSERT INTO rep_tbl VALUES("244","43920230619","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","19/5/23","Sanni Bukola","Ajayi Adedoyin","2023-06-19","2023-06-19 10:39:42pm","","2023-07-01 11:19:51am","undelete");
INSERT INTO rep_tbl VALUES("245","43920230619","508489","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","19/5/23","Sanni Bukola","Ajayi Adedoyin","2023-06-19","2023-06-19 10:39:42pm","","2023-07-01 11:19:51am","undelete");
INSERT INTO rep_tbl VALUES("246","46020230619","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","pending","19/6/23","Admin Admin","Ajayi Adedoyin","2023-06-19","2023-06-19 10:43:10pm","","2023-06-26 05:41:13pm","deleted");
INSERT INTO rep_tbl VALUES("247","46020230619","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","10000.00","0.00","","pending","19/6/23","Admin Admin","Ajayi Adedoyin","2023-06-19","2023-06-19 10:43:10pm","","2023-06-26 05:41:13pm","deleted");
INSERT INTO rep_tbl VALUES("248","70320230620","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","confirmed","19/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-20","2023-06-20 09:50:39am","","2023-07-01 11:20:02am","undelete");
INSERT INTO rep_tbl VALUES("249","70320230620","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","10000.00","0.00","","confirmed","19/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-20","2023-06-20 09:50:39am","","2023-07-01 11:20:02am","undelete");
INSERT INTO rep_tbl VALUES("250","","229704","22357051","Babatunde Olusegun ","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-19","","","","undelete");
INSERT INTO rep_tbl VALUES("251","","431332","62648874","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-19","","","","undelete");
INSERT INTO rep_tbl VALUES("252","","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","80000.00","80000.00","0.00","96000.00","0.00","96000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-20","","","","undelete");
INSERT INTO rep_tbl VALUES("253","","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-20","","","","undelete");
INSERT INTO rep_tbl VALUES("254","","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-20","","","","undelete");
INSERT INTO rep_tbl VALUES("255","","274284","18611110","Ã€yedun Funke ","Ayedun","Shoyebi Folashade","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-20","","","","undelete");
INSERT INTO rep_tbl VALUES("256","","889051","67606621","Lawal Monsurat Iya ope","Esther","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("257","19020230621","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","20/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 10:35:20am","","2023-07-01 11:20:11am","undelete");
INSERT INTO rep_tbl VALUES("258","19020230621","508489","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","20/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 10:35:20am","","2023-07-01 11:20:11am","undelete");
INSERT INTO rep_tbl VALUES("259","33820230621","889051","67606621","Lawal Monsurat Iya ope","Esther","Alago Chidera","30000.00","30000.00","0.00","36000.00","22500.00","0.00","22500.00","Credit","confirmed","26-5-23 to 20-6-23","Sanni Bukola","Alago Chidera","2023-06-21","2023-06-21 10:35:44am","","2023-07-01 11:20:23am","undelete");
INSERT INTO rep_tbl VALUES("260","33820230621","889051","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","22500.00","0.00","","confirmed","26-5-23 to 20-6-23","Sanni Bukola","Alago Chidera","2023-06-21","2023-06-21 10:35:44am","","2023-07-01 11:20:23am","undelete");
INSERT INTO rep_tbl VALUES("261","55420230621","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","17500.00","0.00","17500.00","Credit","confirmed","13/6/23                                     
20/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 10:37:44am","","2023-07-01 11:20:32am","undelete");
INSERT INTO rep_tbl VALUES("262","55420230621","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","17500.00","0.00","","confirmed","13/6/23                                     
20/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 10:37:44am","","2023-07-01 11:20:32am","undelete");
INSERT INTO rep_tbl VALUES("263","92720230621","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","20/6/23","","Ajayi Adedoyin","2023-06-21","2023-06-21 10:42:54am","","","undelete");
INSERT INTO rep_tbl VALUES("264","92720230621","419935","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","pending","20/6/23","","Ajayi Adedoyin","2023-06-21","2023-06-21 10:42:54am","","","undelete");
INSERT INTO rep_tbl VALUES("265","67720230621","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","21/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 03:06:32pm","","2023-07-01 11:20:39am","undelete");
INSERT INTO rep_tbl VALUES("266","67720230621","508489","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","21/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 03:06:32pm","","2023-07-01 11:20:39am","undelete");
INSERT INTO rep_tbl VALUES("267","13020230621","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","confirmed","21/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 03:07:29pm","","2023-07-01 11:20:47am","undelete");
INSERT INTO rep_tbl VALUES("268","13020230621","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","10000.00","0.00","","confirmed","21/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-21","2023-06-21 03:07:29pm","","2023-07-01 11:20:47am","undelete");
INSERT INTO rep_tbl VALUES("269","","450220","16081523","Badmus Jamiu ","Oremeta","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-19","","","","undelete");
INSERT INTO rep_tbl VALUES("270","","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("271","","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("272","","765814","85975441","Nzejekpe Ikebana ","Ik","Alago Chidera","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("273","","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("274","","017612","09496231","Lawal oluwatoyin Abose","Amazing","Oyaosho Folakemi","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("275","","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","120000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("276","","478137","88907406","Ojurongbe Kemi ","Ayedun","Shoyebi Folashade","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("277","","172688","10919056","Olarewaju Musa ","BLESSING","Omolayo Funmilayo","60000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("278","82620230622","765814","85975441","Nzejekpe Ikebana","Ik","Alago Chidera","40000.00","40000.00","0.00","48000.00","36000.00","0.00","36000.00","Credit","confirmed","23-5-23 to 21-6-23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:01:23am","","2023-07-01 11:20:56am","undelete");
INSERT INTO rep_tbl VALUES("279","82620230622","765814","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","36000.00","0.00","","confirmed","23-5-23 to 21-6-23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:01:23am","","2023-07-01 11:20:56am","undelete");
INSERT INTO rep_tbl VALUES("360","27520230703","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","60000.00","0.00","","confirmed","12/6-2500
13/6-2500
14/6-2500
16/6-5000
20/6-5000
22/6-5000
26/6-2500
4/7-2500","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 12:45:37pm","","2023-07-03 05:15:21pm","undelete");
INSERT INTO rep_tbl VALUES("281","36920230622","765814","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","36000.00","0.00","","confirmed","23/5/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:04:20am","","2023-07-01 11:21:06am","undelete");
INSERT INTO rep_tbl VALUES("282","50720230622","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","13500.00","0.00","13500.00","Credit","confirmed","8/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:08:43am","","2023-07-01 11:21:18am","undelete");
INSERT INTO rep_tbl VALUES("283","50720230622","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","13500.00","0.00","","confirmed","8/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:08:43am","","2023-07-01 11:21:18am","undelete");
INSERT INTO rep_tbl VALUES("284","47420230622","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","13500.00","0.00","13500.00","Credit","confirmed","8/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:09:35am","","2023-07-01 11:21:27am","undelete");
INSERT INTO rep_tbl VALUES("285","47420230622","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","13500.00","0.00","","confirmed","8/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:09:35am","","2023-07-01 11:21:27am","undelete");
INSERT INTO rep_tbl VALUES("286","92020230622","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","120000.00","100000.00","0.00","120000.00","60000.00","0.00","60000.00","Credit","confirmed","05/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:17:07am","","2023-07-01 11:21:35am","undelete");
INSERT INTO rep_tbl VALUES("287","92020230622","959016","100129
","Loan Account","","","120000.00","100000.00","0.00","120000.00","","60000.00","0.00","","confirmed","05/6/23
21/6/23","Sanni Bukola","Alago Chidera","2023-06-22","2023-06-22 09:17:07am","","2023-07-01 11:21:35am","undelete");
INSERT INTO rep_tbl VALUES("288","99420230622","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","22/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-22","2023-06-22 04:29:00pm","","2023-07-01 11:21:44am","undelete");
INSERT INTO rep_tbl VALUES("289","99420230622","508489","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","22/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-22","2023-06-22 04:29:00pm","","2023-07-01 11:21:44am","undelete");
INSERT INTO rep_tbl VALUES("290","","400080","00084308","Rasaq Fatimo ","Gudugba","Ajayi Adedoyin","100000.00","80000.00","0.00","96000.00","0.00","96000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-22","","","","undelete");
INSERT INTO rep_tbl VALUES("291","","130066","14093229","Tiamiyu Titilayo ","Ayedun","Shoyebi Folashade","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-22","","","","undelete");
INSERT INTO rep_tbl VALUES("292","","114084","21450622","Fatai isiwat Abose","Isiwat","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-22","","","","undelete");
INSERT INTO rep_tbl VALUES("293","","803138","29656504","Qudril Mariam Temitope","Toyin","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-22","","","","undelete");
INSERT INTO rep_tbl VALUES("294","","803138","29656504","Qudril Mariam Temitope","Toyin","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-22","","","","undelete");
INSERT INTO rep_tbl VALUES("295","","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","Sanni Bukola","Ajayi Adedoyin","2023-06-13","2023-06-13 9:30:05am","","","deleted");
INSERT INTO rep_tbl VALUES("296","61420230626","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","23/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:02pm","","2023-07-01 11:21:53am","undelete");
INSERT INTO rep_tbl VALUES("297","61420230626","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","23/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:02pm","","2023-07-01 11:21:53am","undelete");
INSERT INTO rep_tbl VALUES("298","30220230626","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:41pm","","2023-07-01 11:22:00am","undelete");
INSERT INTO rep_tbl VALUES("299","30220230626","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:41pm","","2023-07-01 11:22:00am","undelete");
INSERT INTO rep_tbl VALUES("300","56120230626","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:55pm","","2023-07-01 11:22:08am","undelete");
INSERT INTO rep_tbl VALUES("301","56120230626","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:34:55pm","","2023-07-01 11:22:08am","undelete");
INSERT INTO rep_tbl VALUES("302","81720230626","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:35:36pm","","2023-07-01 11:22:16am","undelete");
INSERT INTO rep_tbl VALUES("303","81720230626","508489","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:35:36pm","","2023-07-01 11:22:16am","undelete");
INSERT INTO rep_tbl VALUES("304","58020230626","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","80000.00","80000.00","0.00","96000.00","41500.00","0.00","41500.00","Credit","confirmed","26/5/23
22/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:49:22pm","","2023-07-01 11:22:23am","undelete");
INSERT INTO rep_tbl VALUES("305","58020230626","111652","100129
","Loan Account","","","80000.00","80000.00","0.00","96000.00","","41500.00","0.00","","confirmed","26/5/23
22/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 04:49:22pm","","2023-07-01 11:22:23am","undelete");
INSERT INTO rep_tbl VALUES("306","28520230626","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","43000.00","0.00","43000.00","Credit","pending","8/6/23
26/6/23","Admin Admin","Ajayi Adedoyin","2023-06-26","2023-06-26 05:04:12pm","","2023-06-26 05:09:09pm","deleted");
INSERT INTO rep_tbl VALUES("307","28520230626","862111","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","43000.00","0.00","","pending","8/6/23
26/6/23","Admin Admin","Ajayi Adedoyin","2023-06-26","2023-06-26 05:04:12pm","","2023-06-26 05:09:09pm","deleted");
INSERT INTO rep_tbl VALUES("308","40520230626","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","28000.00","0.00","28000.00","Credit","confirmed","13/6/23
26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:12:39pm","","2023-07-01 11:22:35am","undelete");
INSERT INTO rep_tbl VALUES("309","40520230626","862111","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","28000.00","0.00","","confirmed","13/6/23
26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:12:39pm","","2023-07-01 11:22:35am","undelete");
INSERT INTO rep_tbl VALUES("310","49320230626","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:13:16pm","","2023-07-01 11:22:45am","undelete");
INSERT INTO rep_tbl VALUES("311","49320230626","422737","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1500.00","0.00","","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:13:16pm","","2023-07-01 11:22:45am","undelete");
INSERT INTO rep_tbl VALUES("312","72620230626","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","100000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:13:49pm","","2023-07-01 11:22:53am","undelete");
INSERT INTO rep_tbl VALUES("313","72620230626","400080","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","4000.00","0.00","","confirmed","26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:13:49pm","","2023-07-01 11:22:53am","undelete");
INSERT INTO rep_tbl VALUES("314","79320230626","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","21/6/23
23/6/23
26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:17:16pm","","2023-07-01 11:23:01am","undelete");
INSERT INTO rep_tbl VALUES("315","79320230626","419935","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","21/6/23
23/6/23
26/6/23","Sanni Bukola","Ajayi Adedoyin","2023-06-26","2023-06-26 05:17:16pm","","2023-07-01 11:23:01am","undelete");
INSERT INTO rep_tbl VALUES("316","34120230630","889051","67606621","Lawal Monsurat Iya ope","Esther","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","25/5
27/6","Sanni Bukola","Alago Chidera","2023-06-30","2023-06-30 09:00:22am","","2023-07-01 11:23:08am","undelete");
INSERT INTO rep_tbl VALUES("317","34120230630","889051","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","25/5
27/6","Sanni Bukola","Alago Chidera","2023-06-30","2023-06-30 09:00:22am","","2023-07-01 11:23:08am","undelete");
INSERT INTO rep_tbl VALUES("318","","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("319","","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("320","","080281","17929432","Adeleye Idris ","Idris","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-21","","","","undelete");
INSERT INTO rep_tbl VALUES("321","","153949","00581786","Ariyo ola Ariyo","Ariyo","Oyaosho Folakemi","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-26","","","","undelete");
INSERT INTO rep_tbl VALUES("322","","801029","12553123","Ogunkanbi Ishola ","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-26","","","","undelete");
INSERT INTO rep_tbl VALUES("324","","237689","50275074","Adio Mosurat ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-27","","","","undelete");
INSERT INTO rep_tbl VALUES("325","","073345","02505063","Adedeji Fatimo ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-06-27","","","","undelete");
INSERT INTO rep_tbl VALUES("361","10620230703","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","28000.00","0.00","60000.00","Credit","confirmed","8/6-2500
9/6-2500
12/6-2500
13/6-2500
 14/6-2500
16/6-2500
19/6-3000
20/6-2500
21/6-2500
26/6-5000","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 01:02:46pm","","2023-07-03 05:14:29pm","undelete");
INSERT INTO rep_tbl VALUES("326","27120230703","889051","67606621","Lawal Monsurat Iya ope","Esther","Alago Chidera","30000.00","30000.00","0.00","36000.00","12000.00","0.00","12000.00","Credit","confirmed","27/6
30/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 09:05:58am","","2023-07-03 05:15:02pm","undelete");
INSERT INTO rep_tbl VALUES("327","27120230703","889051","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","12000.00","0.00","","confirmed","27/6
30/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 09:05:58am","","2023-07-03 05:15:02pm","undelete");
INSERT INTO rep_tbl VALUES("359","27520230703","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","27500.00","0.00","27500.00","Credit","confirmed","12/6-2500
13/6-2500
14/6-2500
16/6-5000
20/6-5000
22/6-5000
26/6-2500
4/7-2500","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 12:45:37pm","","2023-07-03 05:15:21pm","undelete");
INSERT INTO rep_tbl VALUES("329","46520230703","765814","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","44000.00","0.00","","pending","23/5
30/6","","Alago Chidera","2023-07-03","2023-07-03 09:13:44am","","","undelete");
INSERT INTO rep_tbl VALUES("330","39920230703","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","30/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 09:19:22am","","2023-07-03 05:15:33pm","undelete");
INSERT INTO rep_tbl VALUES("331","39920230703","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","30/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 09:19:22am","","2023-07-03 05:15:33pm","undelete");
INSERT INTO rep_tbl VALUES("332","14520230703","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:54:55am","","2023-07-03 05:16:08pm","undelete");
INSERT INTO rep_tbl VALUES("333","14520230703","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:54:55am","","2023-07-03 05:16:08pm","undelete");
INSERT INTO rep_tbl VALUES("334","36820230703","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:56:17am","","2023-07-03 05:16:42pm","undelete");
INSERT INTO rep_tbl VALUES("335","36820230703","264038","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:56:17am","","2023-07-03 05:16:42pm","undelete");
INSERT INTO rep_tbl VALUES("388","69020230703","264038","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 06:00:04pm","","2023-07-07 06:00:41am","undelete");
INSERT INTO rep_tbl VALUES("338","23520230703","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","27/6/23
30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:58:59am","","2023-07-03 05:17:04pm","undelete");
INSERT INTO rep_tbl VALUES("339","23520230703","422737","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","27/6/23
30/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 09:58:59am","","2023-07-03 05:17:04pm","undelete");
INSERT INTO rep_tbl VALUES("340","","303142","76692642","Raheem modinat Abose","Eleja","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-01","","","","undelete");
INSERT INTO rep_tbl VALUES("341","51820230703","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:00:59am","","2023-07-03 05:21:48pm","undelete");
INSERT INTO rep_tbl VALUES("342","51820230703","419935","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:00:59am","","2023-07-03 05:21:48pm","undelete");
INSERT INTO rep_tbl VALUES("343","","972953","57607188","Oladejo Mariam Abioun","Mariam","Oyaosho Folakemi","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("344","","972490","82854423","Lasisi zanib ashabi","Princess","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("345","62420230703","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","80000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:06:05am","","2023-07-03 05:17:19pm","undelete");
INSERT INTO rep_tbl VALUES("346","62420230703","111652","100129
","Loan Account","","","80000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:06:05am","","2023-07-03 05:17:19pm","undelete");
INSERT INTO rep_tbl VALUES("347","","110431","51292914","Olowokere Okuwasola ","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("348","","061284","98332606","Adegbola Adewale Mukaila","Adewale","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("349","","060355","76397696","Jimoh Adijat Abidun","Temitope","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("350","50420230703","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","35000.00","0.00","35000.00","Credit","pending","13/6/23                           
30/6/23","Admin Admin","Ajayi Adedoyin","2023-07-03","2023-07-03 10:31:47am","","2023-07-03 05:00:57pm","deleted");
INSERT INTO rep_tbl VALUES("351","50420230703","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","35000.00","0.00","","pending","13/6/23                           
30/6/23","Admin Admin","Ajayi Adedoyin","2023-07-03","2023-07-03 10:31:47am","","2023-07-03 05:00:57pm","deleted");
INSERT INTO rep_tbl VALUES("352","21920230703","061284","98332606","Adegbola Adewale Mukaila","Adewale","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","16000.00","0.00","16000.00","Credit","confirmed","17/5/23
31/5/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:35:47am","","2023-07-03 05:17:34pm","undelete");
INSERT INTO rep_tbl VALUES("353","21920230703","061284","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","16000.00","0.00","","confirmed","17/5/23
31/5/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 10:35:47am","","2023-07-03 05:17:34pm","undelete");
INSERT INTO rep_tbl VALUES("354","","399764","14754478","Tijani Temitope Aina","Tope","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("355","","756856","06417252","Adegunle Adefunke ","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-01","","","","undelete");
INSERT INTO rep_tbl VALUES("356","","017612","52980772","Lawal oluwatoyin Abose","Amazing","Oyaosho Folakemi","20000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-01","","","","undelete");
INSERT INTO rep_tbl VALUES("357","","311159","08705116","Olukoya Abiodun Kayode","Olukoya","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("358","","318572","63092861","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","60000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("362","10620230703","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","60000.00","0.00","","confirmed","8/6-2500
9/6-2500
12/6-2500
13/6-2500
 14/6-2500
16/6-2500
19/6-3000
20/6-2500
21/6-2500
26/6-5000","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 01:02:46pm","","2023-07-03 05:14:29pm","undelete");
INSERT INTO rep_tbl VALUES("363","19020230703","765814","85975441","Nzejekpe Ikebana","Ik","Alago Chidera","40000.00","40000.00","0.00","48000.00","10000.00","0.00","10000.00","Credit","confirmed","22/6
3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:07:25pm","","2023-07-03 05:19:39pm","undelete");
INSERT INTO rep_tbl VALUES("364","19020230703","765814","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","10000.00","0.00","","confirmed","22/6
3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:07:25pm","","2023-07-03 05:19:39pm","undelete");
INSERT INTO rep_tbl VALUES("365","33320230703","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:09:31pm","","2023-07-03 05:17:45pm","undelete");
INSERT INTO rep_tbl VALUES("366","33320230703","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:09:31pm","","2023-07-03 05:17:45pm","undelete");
INSERT INTO rep_tbl VALUES("367","97920230703","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:10:29pm","","2023-07-03 05:18:22pm","undelete");
INSERT INTO rep_tbl VALUES("368","97920230703","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:10:29pm","","2023-07-03 05:18:22pm","undelete");
INSERT INTO rep_tbl VALUES("369","59720230703","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","30/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:13:00pm","","2023-07-03 05:19:10pm","undelete");
INSERT INTO rep_tbl VALUES("370","59720230703","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","30/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:13:00pm","","2023-07-03 05:19:10pm","undelete");
INSERT INTO rep_tbl VALUES("371","38420230703","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","120000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:14:01pm","","2023-07-03 05:20:32pm","undelete");
INSERT INTO rep_tbl VALUES("372","38420230703","959016","100129
","Loan Account","","","120000.00","100000.00","0.00","120000.00","","10000.00","0.00","","confirmed","3/7","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:14:01pm","","2023-07-03 05:20:32pm","undelete");
INSERT INTO rep_tbl VALUES("373","63220230703","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","3/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 03:17:08pm","","2023-07-03 05:20:22pm","undelete");
INSERT INTO rep_tbl VALUES("374","63220230703","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","3/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-03","2023-07-03 03:17:08pm","","2023-07-03 05:20:22pm","undelete");
INSERT INTO rep_tbl VALUES("375","31620230703","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","22/6
27)6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:24:52pm","","2023-07-03 05:21:39pm","undelete");
INSERT INTO rep_tbl VALUES("376","31620230703","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","22/6
27)6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:24:52pm","","2023-07-03 05:21:39pm","undelete");
INSERT INTO rep_tbl VALUES("377","50920230703","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","22/6
27/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:28:25pm","","2023-07-03 05:18:59pm","undelete");
INSERT INTO rep_tbl VALUES("378","50920230703","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","22/6
27/6","Sanni Bukola","Alago Chidera","2023-07-03","2023-07-03 03:28:25pm","","2023-07-03 05:18:59pm","undelete");
INSERT INTO rep_tbl VALUES("379","80320230703","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","22000.00","0.00","22000.00","Credit","confirmed","14/6/23
3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 04:58:08pm","","2023-07-03 05:21:12pm","undelete");
INSERT INTO rep_tbl VALUES("380","80320230703","450220","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","22000.00","0.00","","confirmed","14/6/23
3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 04:58:08pm","","2023-07-03 05:21:12pm","undelete");
INSERT INTO rep_tbl VALUES("381","82820230703","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","20000.00","0.00","20000.00","Credit","confirmed","21/6/23
1/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:05:39pm","","2023-07-03 05:21:02pm","undelete");
INSERT INTO rep_tbl VALUES("382","82820230703","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","20000.00","0.00","","confirmed","21/6/23
1/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:05:39pm","","2023-07-03 05:21:02pm","undelete");
INSERT INTO rep_tbl VALUES("383","91720230703","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","36000.00","0.00","36000.00","Credit","confirmed","5/6/23
3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:09:54pm","","2023-07-03 05:20:43pm","undelete");
INSERT INTO rep_tbl VALUES("384","91720230703","801029","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","36000.00","0.00","","confirmed","5/6/23
3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:09:54pm","","2023-07-03 05:20:43pm","undelete");
INSERT INTO rep_tbl VALUES("387","69020230703","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 06:00:04pm","","2023-07-07 06:00:41am","undelete");
INSERT INTO rep_tbl VALUES("385","56220230703","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:28:03pm","","2023-07-07 06:00:51am","undelete");
INSERT INTO rep_tbl VALUES("386","56220230703","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 05:28:03pm","","2023-07-07 06:00:51am","undelete");
INSERT INTO rep_tbl VALUES("389","89120230703","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 06:00:48pm","","2023-07-07 06:00:58am","undelete");
INSERT INTO rep_tbl VALUES("390","89120230703","264038","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-03","2023-07-03 06:00:48pm","","2023-07-07 06:00:58am","undelete");
INSERT INTO rep_tbl VALUES("391","","272306","39115496","Odo sunday Akanchawa","Akanchawa","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("392","","852723","19854036","Fashina Abimbola patience","Habibat","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("393","","209507","62252040","Alabi Fausat ","Ilerioluwa","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-04","","","","undelete");
INSERT INTO rep_tbl VALUES("394","75420230704","765814","85975441","Nzejekpe Ikebana","Ik","Alago Chidera","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:06:33pm","","2023-07-07 06:01:07am","undelete");
INSERT INTO rep_tbl VALUES("395","75420230704","765814","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:06:33pm","","2023-07-07 06:01:07am","undelete");
INSERT INTO rep_tbl VALUES("396","20020230704","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:07:17pm","","2023-07-07 06:01:15am","undelete");
INSERT INTO rep_tbl VALUES("397","20020230704","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:07:17pm","","2023-07-07 06:01:15am","undelete");
INSERT INTO rep_tbl VALUES("398","92620230704","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:07:51pm","","2023-07-07 06:01:24am","undelete");
INSERT INTO rep_tbl VALUES("399","92620230704","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:07:51pm","","2023-07-07 06:01:24am","undelete");
INSERT INTO rep_tbl VALUES("400","10820230704","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","120000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:08:54pm","","2023-07-07 06:01:33am","undelete");
INSERT INTO rep_tbl VALUES("401","10820230704","959016","100129
","Loan Account","","","120000.00","100000.00","0.00","120000.00","","10000.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:08:54pm","","2023-07-07 06:01:33am","undelete");
INSERT INTO rep_tbl VALUES("402","81620230704","080281","17929432","Adeleye Idris","Idris","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:09:24pm","","2023-07-07 06:01:42am","undelete");
INSERT INTO rep_tbl VALUES("403","81620230704","080281","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-04","2023-07-04 02:09:24pm","","2023-07-07 06:01:42am","undelete");
INSERT INTO rep_tbl VALUES("404","31520230704","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:53:30pm","","2023-07-07 06:01:51am","undelete");
INSERT INTO rep_tbl VALUES("405","31520230704","559552","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:53:30pm","","2023-07-07 06:01:51am","undelete");
INSERT INTO rep_tbl VALUES("406","12220230704","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:53:58pm","","2023-07-07 06:02:00am","undelete");
INSERT INTO rep_tbl VALUES("407","12220230704","422737","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:53:58pm","","2023-07-07 06:02:00am","undelete");
INSERT INTO rep_tbl VALUES("408","29620230704","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:54:26pm","","2023-07-07 06:02:08am","undelete");
INSERT INTO rep_tbl VALUES("409","29620230704","264038","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:54:26pm","","2023-07-07 06:02:08am","undelete");
INSERT INTO rep_tbl VALUES("410","20120230704","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:54:59pm","","2023-07-07 06:02:20am","undelete");
INSERT INTO rep_tbl VALUES("411","20120230704","337123","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:54:59pm","","2023-07-07 06:02:20am","undelete");
INSERT INTO rep_tbl VALUES("412","31520230704","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","3/7/23
4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:58:46pm","","2023-07-07 06:01:51am","undelete");
INSERT INTO rep_tbl VALUES("413","31520230704","419935","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","3/7/23
4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-04","2023-07-04 04:58:46pm","","2023-07-07 06:01:51am","undelete");
INSERT INTO rep_tbl VALUES("414","55720230705","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","5/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:43:50am","","2023-07-07 06:02:30am","undelete");
INSERT INTO rep_tbl VALUES("415","55720230705","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","5/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:43:50am","","2023-07-07 06:02:30am","undelete");
INSERT INTO rep_tbl VALUES("416","75920230705","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","5/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:44:05am","","2023-07-07 06:02:40am","deleted");
INSERT INTO rep_tbl VALUES("417","75920230705","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","5/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:44:05am","","2023-07-07 06:02:40am","undelete");
INSERT INTO rep_tbl VALUES("418","13320230705","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","3500.00","0.00","3500.00","Credit","confirmed","4/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:45:00am","","2023-07-07 06:02:50am","undelete");
INSERT INTO rep_tbl VALUES("419","13320230705","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","3500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-05","2023-07-05 09:45:00am","","2023-07-07 06:02:50am","undelete");
INSERT INTO rep_tbl VALUES("420","66920230705","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:54:46pm","","2023-07-07 06:03:05am","undelete");
INSERT INTO rep_tbl VALUES("421","66920230705","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:54:46pm","","2023-07-07 06:03:05am","undelete");
INSERT INTO rep_tbl VALUES("422","78520230705","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:55:20pm","","2023-07-07 06:03:14am","undelete");
INSERT INTO rep_tbl VALUES("423","78520230705","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:55:20pm","","2023-07-07 06:03:14am","undelete");
INSERT INTO rep_tbl VALUES("424","47720230705","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:56:06pm","","2023-07-07 06:03:21am","undelete");
INSERT INTO rep_tbl VALUES("425","47720230705","785398","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:56:06pm","","2023-07-07 06:03:21am","undelete");
INSERT INTO rep_tbl VALUES("426","69820230705","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:56:37pm","","2023-07-07 06:03:31am","undelete");
INSERT INTO rep_tbl VALUES("427","69820230705","195047","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:56:37pm","","2023-07-07 06:03:31am","undelete");
INSERT INTO rep_tbl VALUES("428","26020230705","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:59:12pm","","2023-07-07 06:03:39am","undelete");
INSERT INTO rep_tbl VALUES("429","26020230705","110431","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:59:12pm","","2023-07-07 06:03:39am","undelete");
INSERT INTO rep_tbl VALUES("430","80220230705","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","120000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:59:48pm","","2023-07-07 06:03:48am","undelete");
INSERT INTO rep_tbl VALUES("431","80220230705","959016","100129
","Loan Account","","","120000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 04:59:48pm","","2023-07-07 06:03:48am","undelete");
INSERT INTO rep_tbl VALUES("432","85720230705","080281","17929432","Adeleye Idris","Idris","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 05:00:17pm","","2023-07-07 06:03:55am","undelete");
INSERT INTO rep_tbl VALUES("433","85720230705","080281","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/7","Sanni Bukola","Alago Chidera","2023-07-05","2023-07-05 05:00:17pm","","2023-07-07 06:03:55am","undelete");
INSERT INTO rep_tbl VALUES("434","","750395","83034529","Sharafa fatima Adeola","Habibat","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("435","","374982","30106147","Onakayode oluwatoyin precious","Toyin","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("436","49620230705","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:25:33pm","","2023-07-07 06:04:03am","undelete");
INSERT INTO rep_tbl VALUES("437","49620230705","422737","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:25:33pm","","2023-07-07 06:04:03am","undelete");
INSERT INTO rep_tbl VALUES("438","","212692","19106776","Olulola grace joy","Temitope","Oyaosho Folakemi","40000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("439","59720230705","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","4000.00","0.00","4000.00","Credit","confirmed","3/7323","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:26:58pm","","2023-07-07 06:04:11am","undelete");
INSERT INTO rep_tbl VALUES("440","59720230705","862111","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","4000.00","0.00","","confirmed","3/7323","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:26:58pm","","2023-07-07 06:04:11am","undelete");
INSERT INTO rep_tbl VALUES("441","","630840","23945978","Tajubello Adijat ","TAJU BELLO","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-04","","","","undelete");
INSERT INTO rep_tbl VALUES("442","","763868","06664042","Ajiboye Iyabo ","ALORE","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-04","","","","undelete");
INSERT INTO rep_tbl VALUES("443","70220230705","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","40000.00","100000.00","0.00","120000.00","4000.00","0.00","4000.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:30:13pm","","2023-07-07 06:04:20am","undelete");
INSERT INTO rep_tbl VALUES("444","70220230705","862111","100129
","Loan Account","","","40000.00","100000.00","0.00","120000.00","","4000.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:30:13pm","","2023-07-07 06:04:20am","undelete");
INSERT INTO rep_tbl VALUES("445","14720230705","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","40000.00","80000.00","0.00","96000.00","7500.00","0.00","7500.00","Credit","confirmed","3/7/23
5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:31:48pm","","2023-07-07 06:04:27am","undelete");
INSERT INTO rep_tbl VALUES("446","14720230705","400080","100129
","Loan Account","","","40000.00","80000.00","0.00","96000.00","","7500.00","0.00","","confirmed","3/7/23
5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:31:48pm","","2023-07-07 06:04:27am","undelete");
INSERT INTO rep_tbl VALUES("447","51620230705","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","40000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:33:45pm","","2023-07-07 06:04:34am","undelete");
INSERT INTO rep_tbl VALUES("448","51620230705","111652","100129
","Loan Account","","","40000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","3/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:33:45pm","","2023-07-07 06:04:34am","undelete");
INSERT INTO rep_tbl VALUES("449","57620230705","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","40000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:54:42pm","","2023-07-07 06:04:43am","undelete");
INSERT INTO rep_tbl VALUES("450","57620230705","229704","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 05:54:42pm","","2023-07-07 06:04:43am","undelete");
INSERT INTO rep_tbl VALUES("451","36820230705","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","40000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:52:51pm","","2023-07-07 06:04:53am","undelete");
INSERT INTO rep_tbl VALUES("452","36820230705","264038","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:52:51pm","","2023-07-07 06:04:53am","undelete");
INSERT INTO rep_tbl VALUES("453","78020230705","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","40000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:53:35pm","","2023-07-07 06:05:00am","undelete");
INSERT INTO rep_tbl VALUES("454","78020230705","559552","100129
","Loan Account","","","40000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:53:35pm","","2023-07-07 06:05:00am","undelete");
INSERT INTO rep_tbl VALUES("455","27620230705","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","40000.00","60000.00","0.00","72000.00","1500.00","0.00","1500.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:57:14pm","","2023-07-07 06:05:09am","undelete");
INSERT INTO rep_tbl VALUES("456","27620230705","801029","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","1500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:57:14pm","","2023-07-07 06:05:09am","undelete");
INSERT INTO rep_tbl VALUES("457","67520230705","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","40000.00","60000.00","0.00","72000.00","4500.00","0.00","4500.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:57:53pm","","2023-07-07 06:05:16am","undelete");
INSERT INTO rep_tbl VALUES("458","67520230705","801029","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","4500.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:57:53pm","","2023-07-07 06:05:16am","undelete");
INSERT INTO rep_tbl VALUES("459","93520230705","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","40000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:58:30pm","","2023-07-07 06:05:23am","undelete");
INSERT INTO rep_tbl VALUES("460","93520230705","419935","100129
","Loan Account","","","40000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 10:58:30pm","","2023-07-07 06:05:23am","undelete");
INSERT INTO rep_tbl VALUES("461","26420230705","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","40000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 11:00:22pm","","2023-07-07 06:05:30am","undelete");
INSERT INTO rep_tbl VALUES("462","26420230705","450220","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 11:00:22pm","","2023-07-07 06:05:30am","undelete");
INSERT INTO rep_tbl VALUES("463","79720230705","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","40000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 11:00:45pm","","2023-07-07 06:05:37am","undelete");
INSERT INTO rep_tbl VALUES("464","79720230705","450220","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","5/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-05","2023-07-05 11:00:45pm","","2023-07-07 06:05:37am","undelete");
INSERT INTO rep_tbl VALUES("465","72920230706","172688","10919056","Olarewaju Musa","BLESSING","Omolayo Funmilayo","40000.00","50000.00","0.00","60000.00","14000.00","0.00","14000.00","Credit","confirmed","4/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:13:16pm","","2023-07-07 06:05:45am","undelete");
INSERT INTO rep_tbl VALUES("466","72920230706","172688","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","14000.00","0.00","","confirmed","4/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:13:16pm","","2023-07-07 06:05:45am","undelete");
INSERT INTO rep_tbl VALUES("467","96220230706","172688","10919056","Olarewaju Musa","BLESSING","Omolayo Funmilayo","40000.00","50000.00","0.00","60000.00","14000.00","0.00","14000.00","Credit","pending","4/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:13:39pm","","2023-07-07 06:05:59am","deleted");
INSERT INTO rep_tbl VALUES("468","96220230706","172688","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","14000.00","0.00","","pending","4/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:13:39pm","","2023-07-07 06:05:59am","deleted");
INSERT INTO rep_tbl VALUES("469","67020230706","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","40000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","6/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:14:37pm","","2023-07-07 06:06:09am","undelete");
INSERT INTO rep_tbl VALUES("470","67020230706","763868","100129
","Loan Account","","","40000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","6/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 12:14:37pm","","2023-07-07 06:06:09am","undelete");
INSERT INTO rep_tbl VALUES("471","64920230706","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","6/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 02:32:56pm","","2023-07-07 06:06:20am","undelete");
INSERT INTO rep_tbl VALUES("472","64920230706","630840","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","6/6/23","Sanni Bukola","Omolayo Funmilayo","2023-07-06","2023-07-06 02:32:56pm","","2023-07-07 06:06:20am","undelete");
INSERT INTO rep_tbl VALUES("473","14320230706","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","5/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:22:51pm","","2023-07-07 06:06:30am","undelete");
INSERT INTO rep_tbl VALUES("474","14320230706","451099","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","5/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:22:51pm","","2023-07-07 06:06:30am","undelete");
INSERT INTO rep_tbl VALUES("475","33820230706","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","5/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:23:17pm","","2023-07-07 06:06:42am","undelete");
INSERT INTO rep_tbl VALUES("476","33820230706","920946","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","5/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:23:17pm","","2023-07-07 06:06:42am","undelete");
INSERT INTO rep_tbl VALUES("477","22920230706","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:23:56pm","","2023-07-07 06:06:50am","undelete");
INSERT INTO rep_tbl VALUES("478","22920230706","785398","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:23:56pm","","2023-07-07 06:06:50am","undelete");
INSERT INTO rep_tbl VALUES("479","12520230706","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:24:22pm","","2023-07-07 06:06:58am","undelete");
INSERT INTO rep_tbl VALUES("480","12520230706","195047","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:24:22pm","","2023-07-07 06:06:58am","undelete");
INSERT INTO rep_tbl VALUES("481","29020230706","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:24:45pm","","2023-07-07 06:07:06am","undelete");
INSERT INTO rep_tbl VALUES("482","29020230706","110431","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:24:45pm","","2023-07-07 06:07:06am","undelete");
INSERT INTO rep_tbl VALUES("483","16020230706","080281","17929432","Adeleye Idris","Idris","Alago Chidera","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:25:23pm","","2023-07-07 06:07:15am","undelete");
INSERT INTO rep_tbl VALUES("484","16020230706","080281","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/7","Sanni Bukola","Alago Chidera","2023-07-06","2023-07-06 03:25:23pm","","2023-07-07 06:07:15am","undelete");
INSERT INTO rep_tbl VALUES("485","29020230706","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-06","2023-07-06 04:56:03pm","","2023-07-07 06:07:06am","undelete");
INSERT INTO rep_tbl VALUES("486","29020230706","450220","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-06","2023-07-06 04:56:03pm","","2023-07-07 06:07:06am","undelete");
INSERT INTO rep_tbl VALUES("487","92520230706","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-06","2023-07-06 04:57:36pm","","2023-07-07 06:07:24am","undelete");
INSERT INTO rep_tbl VALUES("488","92520230706","264038","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-06","2023-07-06 04:57:36pm","","2023-07-07 06:07:24am","undelete");
INSERT INTO rep_tbl VALUES("489","","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-03","","","","undelete");
INSERT INTO rep_tbl VALUES("490","","209507","90205465","Alabi Fausat ","Ilerioluwa","Shoyebi Folashade","70000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-04","","","","undelete");
INSERT INTO rep_tbl VALUES("491","","491909","36858647","Daramola Adeniyi joseph","Yaba","","70000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-05","","","","undelete");
INSERT INTO rep_tbl VALUES("492","","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-05","","","","undelete");
INSERT INTO rep_tbl VALUES("493","","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-05","","","","undelete");
INSERT INTO rep_tbl VALUES("494","","674572","05342452","Lidipe Omolabake ","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-06","","","","undelete");
INSERT INTO rep_tbl VALUES("495","","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-06","","","","undelete");
INSERT INTO rep_tbl VALUES("496","","658264","62657001","Ezealora kk Favour ","Abaniseloluwa","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-06","","","","undelete");
INSERT INTO rep_tbl VALUES("497","92120230707","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:36:43am","","2023-07-11 04:07:39pm","undelete");
INSERT INTO rep_tbl VALUES("498","92120230707","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:36:43am","","2023-07-11 04:07:39pm","undelete");
INSERT INTO rep_tbl VALUES("499","96520230707","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:38:20am","","2023-07-11 04:07:49pm","undelete");
INSERT INTO rep_tbl VALUES("500","96520230707","111652","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:38:20am","","2023-07-11 04:07:49pm","undelete");
INSERT INTO rep_tbl VALUES("501","39020230707","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:40:38am","","2023-07-11 04:07:56pm","undelete");
INSERT INTO rep_tbl VALUES("502","39020230707","801029","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:40:38am","","2023-07-11 04:07:56pm","undelete");
INSERT INTO rep_tbl VALUES("503","65520230707","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","5/7/23
6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:41:57am","","2023-07-11 04:08:04pm","undelete");
INSERT INTO rep_tbl VALUES("504","65520230707","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","5/7/23
6/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-07","2023-07-07 08:41:57am","","2023-07-11 04:08:04pm","undelete");
INSERT INTO rep_tbl VALUES("505","54320230707","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:07:18pm","","2023-07-11 04:08:14pm","undelete");
INSERT INTO rep_tbl VALUES("506","54320230707","451099","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:07:18pm","","2023-07-11 04:08:14pm","undelete");
INSERT INTO rep_tbl VALUES("507","93720230707","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:08:10pm","","2023-07-11 04:08:24pm","undelete");
INSERT INTO rep_tbl VALUES("508","93720230707","920946","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:08:10pm","","2023-07-11 04:08:24pm","undelete");
INSERT INTO rep_tbl VALUES("509","27720230707","889051","67606621","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","30000.00","0.00","36000.00","2000.00","0.00","2000.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:08:41pm","","2023-07-11 04:08:30pm","undelete");
INSERT INTO rep_tbl VALUES("510","27720230707","889051","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","2000.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:08:41pm","","2023-07-11 04:08:30pm","undelete");
INSERT INTO rep_tbl VALUES("511","33520230707","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:09:19pm","","2023-07-11 04:08:42pm","undelete");
INSERT INTO rep_tbl VALUES("512","33520230707","959016","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:09:19pm","","2023-07-11 04:08:42pm","undelete");
INSERT INTO rep_tbl VALUES("513","98420230707","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:09:47pm","","2023-07-11 04:08:53pm","undelete");
INSERT INTO rep_tbl VALUES("514","98420230707","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:09:47pm","","2023-07-11 04:08:53pm","undelete");
INSERT INTO rep_tbl VALUES("515","97820230707","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:10:23pm","","2023-07-11 04:09:02pm","undelete");
INSERT INTO rep_tbl VALUES("516","97820230707","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:10:23pm","","2023-07-11 04:09:02pm","undelete");
INSERT INTO rep_tbl VALUES("517","80120230707","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:10:51pm","","2023-07-11 04:09:09pm","undelete");
INSERT INTO rep_tbl VALUES("518","80120230707","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:10:51pm","","2023-07-11 04:09:09pm","undelete");
INSERT INTO rep_tbl VALUES("519","73020230707","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:11:46pm","","2023-07-11 04:09:17pm","undelete");
INSERT INTO rep_tbl VALUES("520","73020230707","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7","Sanni Bukola","Alago Chidera","2023-07-07","2023-07-07 03:11:46pm","","2023-07-11 04:09:17pm","undelete");
INSERT INTO rep_tbl VALUES("521","50020230710","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","10/7/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:38:20pm","","2023-07-11 04:09:25pm","undelete");
INSERT INTO rep_tbl VALUES("522","50020230710","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","10/6/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:38:20pm","","2023-07-11 04:09:25pm","undelete");
INSERT INTO rep_tbl VALUES("523","71320230710","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","10/7/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:38:31pm","","2023-07-11 04:09:31pm","deleted");
INSERT INTO rep_tbl VALUES("524","71320230710","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","10/6/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:38:31pm","","2023-07-11 04:09:31pm","undelete");
INSERT INTO rep_tbl VALUES("525","86820230710","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","10/6/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:40:10pm","","2023-07-11 04:09:43pm","undelete");
INSERT INTO rep_tbl VALUES("526","86820230710","073345","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","10/6/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:40:10pm","","2023-07-11 04:09:43pm","undelete");
INSERT INTO rep_tbl VALUES("527","66920230710","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","pending","10/6/2023","Admin Admin","Omolayo Funmilayo","2023-07-10","2023-07-10 02:40:19pm","","2023-07-11 03:15:53pm","deleted");
INSERT INTO rep_tbl VALUES("528","66920230710","073345","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","7500.00","0.00","","pending","10/6/2023","Admin Admin","Omolayo Funmilayo","2023-07-10","2023-07-10 02:40:19pm","","2023-07-11 03:15:53pm","deleted");
INSERT INTO rep_tbl VALUES("529","75220230710","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:42:20pm","","2023-07-11 04:09:53pm","undelete");
INSERT INTO rep_tbl VALUES("530","75220230710","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:42:20pm","","2023-07-11 04:09:53pm","undelete");
INSERT INTO rep_tbl VALUES("531","46220230710","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:42:26pm","","2023-07-11 04:10:15pm","undelete");
INSERT INTO rep_tbl VALUES("532","46220230710","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:42:26pm","","2023-07-11 04:10:15pm","undelete");
INSERT INTO rep_tbl VALUES("533","56720230710","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","pending","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:45:44pm","","2023-07-11 04:10:40pm","deleted");
INSERT INTO rep_tbl VALUES("534","56720230710","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","pending","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:45:44pm","","2023-07-11 04:10:40pm","deleted");
INSERT INTO rep_tbl VALUES("535","78320230710","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","pending","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:45:54pm","","2023-07-11 04:10:55pm","deleted");
INSERT INTO rep_tbl VALUES("536","78320230710","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","pending","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:45:54pm","","2023-07-11 04:10:55pm","deleted");
INSERT INTO rep_tbl VALUES("537","71520230710","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:47:54pm","","2023-07-11 04:11:05pm","undelete");
INSERT INTO rep_tbl VALUES("538","71520230710","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","10/07/2023","Sanni Bukola","Omolayo Funmilayo","2023-07-10","2023-07-10 02:47:54pm","","2023-07-11 04:11:05pm","undelete");
INSERT INTO rep_tbl VALUES("539","51320230710","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:50:00pm","","2023-07-11 04:11:13pm","undelete");
INSERT INTO rep_tbl VALUES("540","51320230710","451099","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:50:00pm","","2023-07-11 04:11:13pm","undelete");
INSERT INTO rep_tbl VALUES("541","79020230710","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:51:03pm","","2023-07-11 04:12:26pm","undelete");
INSERT INTO rep_tbl VALUES("542","79020230710","920946","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:51:03pm","","2023-07-11 04:12:26pm","undelete");
INSERT INTO rep_tbl VALUES("543","74120230710","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:53:07pm","","2023-07-11 04:13:00pm","undelete");
INSERT INTO rep_tbl VALUES("544","74120230710","889051","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:53:07pm","","2023-07-11 04:13:00pm","undelete");
INSERT INTO rep_tbl VALUES("545","97720230710","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:54:06pm","","2023-07-11 04:13:12pm","undelete");
INSERT INTO rep_tbl VALUES("546","97720230710","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:54:06pm","","2023-07-11 04:13:12pm","undelete");
INSERT INTO rep_tbl VALUES("547","25220230710","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:56:18pm","","2023-07-11 04:13:19pm","undelete");
INSERT INTO rep_tbl VALUES("548","25220230710","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:56:18pm","","2023-07-11 04:13:19pm","undelete");
INSERT INTO rep_tbl VALUES("549","62820230710","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:57:25pm","","2023-07-11 04:13:27pm","undelete");
INSERT INTO rep_tbl VALUES("550","62820230710","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:57:25pm","","2023-07-11 04:13:27pm","undelete");
INSERT INTO rep_tbl VALUES("551","70420230710","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:58:01pm","","2023-07-11 04:13:52pm","undelete");
INSERT INTO rep_tbl VALUES("552","70420230710","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:58:01pm","","2023-07-11 04:13:52pm","undelete");
INSERT INTO rep_tbl VALUES("553","46720230710","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:59:31pm","","2023-07-11 04:13:59pm","undelete");
INSERT INTO rep_tbl VALUES("554","46720230710","959016","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:59:31pm","","2023-07-11 04:13:59pm","undelete");
INSERT INTO rep_tbl VALUES("555","80720230710","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:59:58pm","","2023-07-11 04:14:05pm","undelete");
INSERT INTO rep_tbl VALUES("556","80720230710","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7","Sanni Bukola","Alago Chidera","2023-07-10","2023-07-10 02:59:58pm","","2023-07-11 04:14:05pm","undelete");
INSERT INTO rep_tbl VALUES("557","80920230710","431332","62648874","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","40000.00","0.00","40000.00","Credit","confirmed","12/6/23
7/723","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:35:36pm","","2023-07-11 04:14:55pm","undelete");
INSERT INTO rep_tbl VALUES("558","80920230710","431332","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","40000.00","0.00","","confirmed","12/6/23
7/723","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:35:36pm","","2023-07-11 04:14:55pm","undelete");
INSERT INTO rep_tbl VALUES("559","12120230710","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:38:25pm","","2023-07-11 04:15:12pm","undelete");
INSERT INTO rep_tbl VALUES("560","12120230710","229704","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:38:25pm","","2023-07-11 04:15:12pm","undelete");
INSERT INTO rep_tbl VALUES("561","69820230710","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","10/7/24","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:43:08pm","","2023-07-11 04:15:20pm","undelete");
INSERT INTO rep_tbl VALUES("562","69820230710","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","10/7/24","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:43:08pm","","2023-07-11 04:15:20pm","undelete");
INSERT INTO rep_tbl VALUES("563","23420230710","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","3/7/23
5/7/23
7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:44:59pm","","2023-07-11 04:15:26pm","undelete");
INSERT INTO rep_tbl VALUES("564","23420230710","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","3/7/23
5/7/23
7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:44:59pm","","2023-07-11 04:15:26pm","undelete");
INSERT INTO rep_tbl VALUES("565","89620230710","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","3000.00","0.00","3000.00","Credit","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:49:17pm","","2023-07-11 04:15:33pm","undelete");
INSERT INTO rep_tbl VALUES("566","89620230710","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","3000.00","0.00","","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:49:17pm","","2023-07-11 04:15:33pm","undelete");
INSERT INTO rep_tbl VALUES("567","28820230710","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:52:48pm","","2023-07-11 04:15:41pm","undelete");
INSERT INTO rep_tbl VALUES("568","28820230710","400080","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:52:48pm","","2023-07-11 04:15:41pm","undelete");
INSERT INTO rep_tbl VALUES("569","32620230710","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:54:00pm","","2023-07-11 04:15:51pm","undelete");
INSERT INTO rep_tbl VALUES("570","32620230710","400080","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:54:00pm","","2023-07-11 04:15:51pm","undelete");
INSERT INTO rep_tbl VALUES("571","99420230710","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/723","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:56:33pm","","2023-07-11 04:16:17pm","undelete");
INSERT INTO rep_tbl VALUES("572","99420230710","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/723","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:56:33pm","","2023-07-11 04:16:17pm","undelete");
INSERT INTO rep_tbl VALUES("573","10020230710","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:59:44pm","","2023-07-11 04:16:24pm","undelete");
INSERT INTO rep_tbl VALUES("574","10020230710","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 04:59:44pm","","2023-07-11 04:16:24pm","undelete");
INSERT INTO rep_tbl VALUES("575","99220230710","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:00:53pm","","2023-07-11 04:16:30pm","undelete");
INSERT INTO rep_tbl VALUES("576","99220230710","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:00:53pm","","2023-07-11 04:16:30pm","undelete");
INSERT INTO rep_tbl VALUES("577","74420230710","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:01:45pm","","2023-07-11 04:16:35pm","undelete");
INSERT INTO rep_tbl VALUES("578","74420230710","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","7/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:01:45pm","","2023-07-11 04:16:35pm","undelete");
INSERT INTO rep_tbl VALUES("579","70220230710","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","53400.00","0.00","53400.00","Credit","confirmed","12/6/23
10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:06:39pm","","2023-07-11 04:16:41pm","undelete");
INSERT INTO rep_tbl VALUES("580","70220230710","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","53400.00","0.00","","confirmed","12/6/23
10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:06:39pm","","2023-07-11 04:16:41pm","undelete");
INSERT INTO rep_tbl VALUES("581","80120230710","061284","98332606","Adegbola Adewale Mukaila","Adewale","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:08:25pm","","2023-07-11 04:16:51pm","undelete");
INSERT INTO rep_tbl VALUES("582","80120230710","061284","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:08:25pm","","2023-07-11 04:16:51pm","undelete");
INSERT INTO rep_tbl VALUES("583","17220230710","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:09:09pm","","2023-07-11 04:17:02pm","undelete");
INSERT INTO rep_tbl VALUES("584","17220230710","555148","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:09:09pm","","2023-07-11 04:17:02pm","undelete");
INSERT INTO rep_tbl VALUES("585","58320230710","117304","85714617","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","51000.00","0.00","51000.00","Credit","confirmed","14/6/23
10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:12:45pm","","2023-07-11 04:17:17pm","undelete");
INSERT INTO rep_tbl VALUES("586","58320230710","117304","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","51000.00","0.00","","confirmed","14/6/23
10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:12:45pm","","2023-07-11 04:17:17pm","undelete");
INSERT INTO rep_tbl VALUES("587","79920230710","117304","85714617","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","57500.00","0.00","57500.00","Credit","pending","5/6/23    10/7/23","Admin Admin","Ajayi Adedoyin","2023-07-10","2023-07-10 05:14:30pm","","2023-07-11 09:57:06am","deleted");
INSERT INTO rep_tbl VALUES("588","79920230710","117304","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","57500.00","0.00","","pending","5/6/23    10/7/23","Admin Admin","Ajayi Adedoyin","2023-07-10","2023-07-10 05:14:30pm","","2023-07-11 09:57:06am","deleted");
INSERT INTO rep_tbl VALUES("589","40320230710","318572","63092861","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","57500.00","0.00","57500.00","Credit","confirmed","5/6/23         
  10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:17:03pm","","2023-07-11 04:17:40pm","undelete");
INSERT INTO rep_tbl VALUES("590","40320230710","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","57500.00","0.00","","confirmed","5/6/23         
  10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-10","2023-07-10 05:17:03pm","","2023-07-11 04:17:40pm","undelete");
INSERT INTO rep_tbl VALUES("591","","803138","80443689","Qudril Mariam Temitope","Toyin","Oyaosho Folakemi","70000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-02","","","","undelete");
INSERT INTO rep_tbl VALUES("592","","645893","07056212","Fasasi Latefat ","Omodara","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-10","","","","undelete");
INSERT INTO rep_tbl VALUES("593","94320230711","318572","63092861","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-11","2023-07-11 04:37:52pm","","2023-07-13 05:03:02pm","undelete");
INSERT INTO rep_tbl VALUES("594","94320230711","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","10/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-11","2023-07-11 04:37:52pm","","2023-07-13 05:03:02pm","undelete");
INSERT INTO rep_tbl VALUES("595","78520230711","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:05:17pm","","2023-07-13 05:03:15pm","undelete");
INSERT INTO rep_tbl VALUES("596","78520230711","451099","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:05:17pm","","2023-07-13 05:03:15pm","undelete");
INSERT INTO rep_tbl VALUES("597","26320230711","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:05:46pm","","2023-07-13 05:03:24pm","undelete");
INSERT INTO rep_tbl VALUES("598","26320230711","920946","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:05:46pm","","2023-07-13 05:03:24pm","undelete");
INSERT INTO rep_tbl VALUES("599","54120230711","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:06:58pm","","2023-07-13 05:03:37pm","undelete");
INSERT INTO rep_tbl VALUES("600","54120230711","889051","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:06:58pm","","2023-07-13 05:03:37pm","undelete");
INSERT INTO rep_tbl VALUES("601","35920230711","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:09:17pm","","2023-07-13 05:03:47pm","undelete");
INSERT INTO rep_tbl VALUES("602","35920230711","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:09:17pm","","2023-07-13 05:03:47pm","undelete");
INSERT INTO rep_tbl VALUES("603","88520230711","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:09:46pm","","2023-07-13 05:03:57pm","undelete");
INSERT INTO rep_tbl VALUES("604","88520230711","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:09:46pm","","2023-07-13 05:03:57pm","undelete");
INSERT INTO rep_tbl VALUES("605","78220230711","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:10:21pm","","2023-07-13 05:04:06pm","undelete");
INSERT INTO rep_tbl VALUES("606","78220230711","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:10:21pm","","2023-07-13 05:04:06pm","undelete");
INSERT INTO rep_tbl VALUES("607","36920230711","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:10:46pm","","2023-07-13 05:04:13pm","undelete");
INSERT INTO rep_tbl VALUES("608","36920230711","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7","Sanni Bukola","Alago Chidera","2023-07-11","2023-07-11 05:10:46pm","","2023-07-13 05:04:13pm","undelete");
INSERT INTO rep_tbl VALUES("609","","642032","21503491","Yekini Aweda ","Ilerioluwa","","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-11","","","","undelete");
INSERT INTO rep_tbl VALUES("610","","875454","77093716","Ashimolowo Nimota ","Ilerioluwa","Shoyebi Folashade","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-11","","","","undelete");
INSERT INTO rep_tbl VALUES("611","","493517","16260014","Ojekunle Yemisi Apinke","Ilerioluwa","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-11","","","","undelete");
INSERT INTO rep_tbl VALUES("612","89420230712","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","0.00","0.00","0.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:26:30pm","","2023-07-13 05:04:20pm","undelete");
INSERT INTO rep_tbl VALUES("613","89420230712","451099","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","0.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:26:30pm","","2023-07-13 05:04:20pm","undelete");
INSERT INTO rep_tbl VALUES("614","70020230712","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","0.00","0.00","0.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:27:06pm","","2023-07-13 05:04:29pm","undelete");
INSERT INTO rep_tbl VALUES("615","70020230712","920946","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","0.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:27:06pm","","2023-07-13 05:04:29pm","undelete");
INSERT INTO rep_tbl VALUES("616","33520230712","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:27:40pm","","2023-07-13 05:04:38pm","undelete");
INSERT INTO rep_tbl VALUES("617","33520230712","889051","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:27:40pm","","2023-07-13 05:04:38pm","undelete");
INSERT INTO rep_tbl VALUES("618","84520230712","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:28:26pm","","2023-07-13 05:04:47pm","undelete");
INSERT INTO rep_tbl VALUES("619","84520230712","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:28:26pm","","2023-07-13 05:04:47pm","undelete");
INSERT INTO rep_tbl VALUES("620","22720230712","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:28:54pm","","2023-07-13 05:04:55pm","undelete");
INSERT INTO rep_tbl VALUES("621","22720230712","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:28:54pm","","2023-07-13 05:04:55pm","undelete");
INSERT INTO rep_tbl VALUES("622","31020230712","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:35:46pm","","2023-07-13 05:05:05pm","undelete");
INSERT INTO rep_tbl VALUES("623","31020230712","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:35:46pm","","2023-07-13 05:05:05pm","undelete");
INSERT INTO rep_tbl VALUES("624","89420230712","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:36:33pm","","2023-07-13 05:04:20pm","undelete");
INSERT INTO rep_tbl VALUES("625","89420230712","959016","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:36:33pm","","2023-07-13 05:04:20pm","undelete");
INSERT INTO rep_tbl VALUES("626","85720230712","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:37:04pm","","2023-07-13 05:05:14pm","undelete");
INSERT INTO rep_tbl VALUES("627","85720230712","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","12/7","Sanni Bukola","Alago Chidera","2023-07-12","2023-07-12 04:37:04pm","","2023-07-13 05:05:14pm","undelete");
INSERT INTO rep_tbl VALUES("628","84120230712","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment
       12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:32:10pm","","2023-07-13 05:05:22pm","undelete");
INSERT INTO rep_tbl VALUES("629","84120230712","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment
       12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:32:10pm","","2023-07-13 05:05:22pm","undelete");
INSERT INTO rep_tbl VALUES("630","72220230712","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment
       12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:32:33pm","","2023-07-13 05:05:30pm","undelete");
INSERT INTO rep_tbl VALUES("631","72220230712","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment
       12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:32:33pm","","2023-07-13 05:05:30pm","undelete");
INSERT INTO rep_tbl VALUES("632","91420230712","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment
          12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:34:51pm","","2023-07-13 05:05:38pm","undelete");
INSERT INTO rep_tbl VALUES("633","91420230712","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment
          12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:34:51pm","","2023-07-13 05:05:38pm","undelete");
INSERT INTO rep_tbl VALUES("634","16420230712","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment
          12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:35:26pm","","2023-07-13 05:05:46pm","undelete");
INSERT INTO rep_tbl VALUES("635","16420230712","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment
          12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-12","2023-07-12 05:35:26pm","","2023-07-13 05:05:46pm","undelete");
INSERT INTO rep_tbl VALUES("636","35520230713","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment
              12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 08:50:52am","","2023-07-13 05:05:54pm","undelete");
INSERT INTO rep_tbl VALUES("637","35520230713","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment
              12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 08:50:52am","","2023-07-13 05:05:54pm","undelete");
INSERT INTO rep_tbl VALUES("638","74020230713","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:01:20am","","2023-07-13 05:06:06pm","undelete");
INSERT INTO rep_tbl VALUES("639","74020230713","552927","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:01:20am","","2023-07-13 05:06:06pm","undelete");
INSERT INTO rep_tbl VALUES("640","76220230713","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:01:59am","","2023-07-13 05:06:15pm","undelete");
INSERT INTO rep_tbl VALUES("641","76220230713","555148","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:01:59am","","2023-07-13 05:06:15pm","undelete");
INSERT INTO rep_tbl VALUES("642","34320230713","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:03:16am","","2023-07-13 05:06:24pm","undelete");
INSERT INTO rep_tbl VALUES("643","34320230713","555148","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:03:16am","","2023-07-13 05:06:24pm","undelete");
INSERT INTO rep_tbl VALUES("644","43820230713","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","6000.00","0.00","6000.00","Credit","confirmed","11/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:07:21am","","2023-07-13 05:06:32pm","undelete");
INSERT INTO rep_tbl VALUES("645","43820230713","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","6000.00","0.00","","confirmed","11/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:07:21am","","2023-07-13 05:06:32pm","undelete");
INSERT INTO rep_tbl VALUES("646","92820230713","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:11:05am","","2023-07-13 05:06:40pm","undelete");
INSERT INTO rep_tbl VALUES("647","92820230713","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:11:05am","","2023-07-13 05:06:40pm","undelete");
INSERT INTO rep_tbl VALUES("648","15420230713","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:12:54am","","2023-07-13 05:06:48pm","undelete");
INSERT INTO rep_tbl VALUES("649","15420230713","111652","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:12:54am","","2023-07-13 05:06:48pm","undelete");
INSERT INTO rep_tbl VALUES("650","28920230713","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","11/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:15:53am","","2023-07-13 05:06:56pm","undelete");
INSERT INTO rep_tbl VALUES("651","28920230713","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","11/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:15:53am","","2023-07-13 05:06:56pm","undelete");
INSERT INTO rep_tbl VALUES("652","53520230713","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","20000.00","0.00","20000.00","Credit","confirmed","6/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:19:16am","","2023-07-13 05:07:07pm","undelete");
INSERT INTO rep_tbl VALUES("653","53520230713","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","20000.00","0.00","","confirmed","6/7/23
12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:19:16am","","2023-07-13 05:07:07pm","undelete");
INSERT INTO rep_tbl VALUES("654","20520230713","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:28:14am","","2023-07-13 05:07:14pm","undelete");
INSERT INTO rep_tbl VALUES("655","20520230713","801029","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:28:14am","","2023-07-13 05:07:14pm","undelete");
INSERT INTO rep_tbl VALUES("656","37820230713","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","70000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:34:46am","","2023-07-13 05:07:22pm","undelete");
INSERT INTO rep_tbl VALUES("657","37820230713","419935","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 09:34:46am","","2023-07-13 05:07:22pm","undelete");
INSERT INTO rep_tbl VALUES("658","21220230713","172688","10919056","Olarewaju Musa","BLESSING","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","14000.00","0.00","14000.00","Credit","confirmed","Loan payment
        12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:46:22pm","","2023-07-13 05:07:30pm","undelete");
INSERT INTO rep_tbl VALUES("659","21220230713","172688","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","14000.00","0.00","","confirmed","Loan payment
        12/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:46:22pm","","2023-07-13 05:07:30pm","undelete");
INSERT INTO rep_tbl VALUES("660","14920230713","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment
    13/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:51:44pm","","2023-07-13 05:07:37pm","undelete");
INSERT INTO rep_tbl VALUES("661","14920230713","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment
    13/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:51:44pm","","2023-07-13 05:07:37pm","undelete");
INSERT INTO rep_tbl VALUES("662","37420230713","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment
           13/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:53:42pm","","2023-07-13 05:07:45pm","undelete");
INSERT INTO rep_tbl VALUES("663","37420230713","073345","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment
           13/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-13","2023-07-13 01:53:42pm","","2023-07-13 05:07:45pm","undelete");
INSERT INTO rep_tbl VALUES("664","","673526","21239880","Babarinde Florence Abiodun","Florence","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-12","","","","undelete");
INSERT INTO rep_tbl VALUES("665","92120230713","431332","62648874","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","30000.00","50000.00","0.00","60000.00","20000.00","0.00","20000.00","Credit","confirmed","11/7/23      
13/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 04:14:56pm","","2023-07-13 05:07:58pm","undelete");
INSERT INTO rep_tbl VALUES("666","92120230713","431332","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","20000.00","0.00","","confirmed","11/7/23      
13/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-13","2023-07-13 04:14:56pm","","2023-07-13 05:07:58pm","undelete");
INSERT INTO rep_tbl VALUES("667","98720230713","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:20:49pm","","2023-07-13 05:08:06pm","undelete");
INSERT INTO rep_tbl VALUES("668","98720230713","451099","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:20:49pm","","2023-07-13 05:08:06pm","undelete");
INSERT INTO rep_tbl VALUES("669","22120230713","920946","19156433","Wasilat Adebayo Adebayo Iya Agbo","Ibukun","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:21:14pm","","2023-07-13 05:08:14pm","undelete");
INSERT INTO rep_tbl VALUES("670","22120230713","920946","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:21:14pm","","2023-07-13 05:08:14pm","undelete");
INSERT INTO rep_tbl VALUES("671","64820230713","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","30000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:21:43pm","","2023-07-13 05:08:23pm","undelete");
INSERT INTO rep_tbl VALUES("672","64820230713","889051","100129
","Loan Account","","","30000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:21:43pm","","2023-07-13 05:08:23pm","undelete");
INSERT INTO rep_tbl VALUES("673","71420230713","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","13/8","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:22:06pm","","2023-07-13 05:08:33pm","undelete");
INSERT INTO rep_tbl VALUES("674","71420230713","785398","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","13/8","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:22:06pm","","2023-07-13 05:08:33pm","undelete");
INSERT INTO rep_tbl VALUES("675","58820230713","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:22:39pm","","2023-07-13 05:08:41pm","undelete");
INSERT INTO rep_tbl VALUES("676","58820230713","195047","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:22:39pm","","2023-07-13 05:08:41pm","undelete");
INSERT INTO rep_tbl VALUES("677","66620230713","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:23:01pm","","2023-07-13 05:08:50pm","undelete");
INSERT INTO rep_tbl VALUES("678","66620230713","110431","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","13/7","Sanni Bukola","Alago Chidera","2023-07-13","2023-07-13 04:23:01pm","","2023-07-13 05:08:50pm","undelete");
INSERT INTO rep_tbl VALUES("679","","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-11","","","","undelete");
INSERT INTO rep_tbl VALUES("680","","765814","32633099","Nzejekpe Ikebana ","Ik","Alago Chidera","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-13","","","","undelete");
INSERT INTO rep_tbl VALUES("681","","675672","65988410","Adufe Olabayo ","Adufe","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-06","","","","undelete");
INSERT INTO rep_tbl VALUES("682","11420230713","017612","52980772","Lawal oluwatoyin Abose","Amazing","Oyaosho Folakemi","30000.00","100000.00","0.00","120000.00","120000.00","0.00","120000.00","Credit","confirmed","25/5/23
4/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-13","2023-07-13 05:31:55pm","","2023-07-16 10:14:26pm","undelete");
INSERT INTO rep_tbl VALUES("683","11420230713","017612","100129
","Loan Account","","","30000.00","100000.00","0.00","120000.00","","120000.00","0.00","","confirmed","25/5/23
4/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-13","2023-07-13 05:31:55pm","","2023-07-16 10:14:26pm","undelete");
INSERT INTO rep_tbl VALUES("684","37320230713","673526","21239880","Babarinde Florence Abiodun","Florence","Oyaosho Folakemi","30000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","13/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-13","2023-07-13 05:39:44pm","","2023-07-16 10:14:35pm","undelete");
INSERT INTO rep_tbl VALUES("685","37320230713","673526","100129
","Loan Account","","","30000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","13/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-13","2023-07-13 05:39:44pm","","2023-07-16 10:14:35pm","undelete");
INSERT INTO rep_tbl VALUES("686","","789000","87357874","Salami Aminat Omolara","Aminat","Oyaosho Folakemi","70000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-12","","","","undelete");
INSERT INTO rep_tbl VALUES("687","","587862","49564910","Lidipe Babatunde ","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-13","","","","undelete");
INSERT INTO rep_tbl VALUES("688","","664256","00011020","Sodiz Sarah Oluwaseun","Arike","Shoyebi Folashade","70000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-14","","","","undelete");
INSERT INTO rep_tbl VALUES("689","","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-13","","","","undelete");
INSERT INTO rep_tbl VALUES("690","","664513","63357496","Oladele Bukky Funmi","Esther","Alago Chidera","70000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-13","","","","undelete");
INSERT INTO rep_tbl VALUES("691","","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-12","","","","undelete");
INSERT INTO rep_tbl VALUES("692","89520230714","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","Loan payment
           14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:18:08pm","","2023-07-16 10:14:44pm","undelete");
INSERT INTO rep_tbl VALUES("693","89520230714","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","Loan payment
           14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:18:08pm","","2023-07-16 10:14:44pm","undelete");
INSERT INTO rep_tbl VALUES("694","20420230714","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment
                  14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:18:55pm","","2023-07-16 10:14:53pm","undelete");
INSERT INTO rep_tbl VALUES("695","20420230714","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment
                  14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:18:55pm","","2023-07-16 10:14:53pm","undelete");
INSERT INTO rep_tbl VALUES("696","69320230714","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment
             14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:20:05pm","","2023-07-16 10:15:01pm","undelete");
INSERT INTO rep_tbl VALUES("697","69320230714","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment
             14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:20:05pm","","2023-07-16 10:15:01pm","undelete");
INSERT INTO rep_tbl VALUES("698","45920230714","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","13/7/23
            14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:21:49pm","","2023-07-16 10:15:10pm","undelete");
INSERT INTO rep_tbl VALUES("699","45920230714","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","13/7/23
            14/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-14","2023-07-14 04:21:49pm","","2023-07-16 10:15:10pm","undelete");
INSERT INTO rep_tbl VALUES("700","92520230714","117304","85714617","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","9000.00","0.00","9000.00","Credit","confirmed","14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-14","2023-07-14 07:46:32pm","","2023-07-16 10:15:22pm","undelete");
INSERT INTO rep_tbl VALUES("701","92520230714","117304","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","9000.00","0.00","","confirmed","14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-14","2023-07-14 07:46:32pm","","2023-07-16 10:15:22pm","undelete");
INSERT INTO rep_tbl VALUES("702","","094263","46191601","Umaru Rahimat ","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-13","","","","undelete");
INSERT INTO rep_tbl VALUES("703","","132343","17041308","Dasiliva Tosin joy","Joy","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-14","","","","undelete");
INSERT INTO rep_tbl VALUES("704","","618494","20032213","Azuru Glory Kelechi","Azuru","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-17","","","","undelete");
INSERT INTO rep_tbl VALUES("705","35020230718","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment
             18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:34:24pm","","2023-07-24 06:50:05am","undelete");
INSERT INTO rep_tbl VALUES("706","35020230718","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment
             18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:34:24pm","","2023-07-24 06:50:05am","undelete");
INSERT INTO rep_tbl VALUES("707","10620230718","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment
              18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:35:21pm","","2023-07-24 06:50:16am","undelete");
INSERT INTO rep_tbl VALUES("708","10620230718","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment
              18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:35:21pm","","2023-07-24 06:50:16am","undelete");
INSERT INTO rep_tbl VALUES("709","18620230718","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment
             18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:35:59pm","","2023-07-24 06:50:26am","undelete");
INSERT INTO rep_tbl VALUES("710","18620230718","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment
             18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:35:59pm","","2023-07-24 06:50:26am","undelete");
INSERT INTO rep_tbl VALUES("711","81520230718","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment
        18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:37:18pm","","2023-07-24 06:50:34am","undelete");
INSERT INTO rep_tbl VALUES("712","81520230718","237689","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","10000.00","0.00","","confirmed","Loan payment
        18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:37:18pm","","2023-07-24 06:50:34am","undelete");
INSERT INTO rep_tbl VALUES("713","94220230718","073345","02505063","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","11000.00","0.00","11000.00","Credit","confirmed","Loan payment
            18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:38:07pm","","2023-07-24 06:50:43am","undelete");
INSERT INTO rep_tbl VALUES("714","94220230718","073345","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","11000.00","0.00","","confirmed","Loan payment
            18/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-18","2023-07-18 05:38:07pm","","2023-07-24 06:50:43am","undelete");
INSERT INTO rep_tbl VALUES("715","15620230719","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","35000.00","0.00","35000.00","Credit","confirmed","6/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 09:49:38am","","2023-07-24 06:51:00am","undelete");
INSERT INTO rep_tbl VALUES("716","15620230719","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","35000.00","0.00","","confirmed","6/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 09:49:38am","","2023-07-24 06:51:00am","undelete");
INSERT INTO rep_tbl VALUES("717","15420230719","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","Loan payment
                19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:35:45pm","","2023-07-24 06:51:09am","undelete");
INSERT INTO rep_tbl VALUES("718","15420230719","094263","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","Loan payment
                19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:35:45pm","","2023-07-24 06:51:09am","undelete");
INSERT INTO rep_tbl VALUES("719","45420230719","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment
            19/7","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:39:10pm","","2023-07-24 06:51:17am","undelete");
INSERT INTO rep_tbl VALUES("720","45420230719","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment
            19/7","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:39:10pm","","2023-07-24 06:51:17am","undelete");
INSERT INTO rep_tbl VALUES("721","18820230719","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment
            19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:41:11pm","","2023-07-24 06:51:26am","undelete");
INSERT INTO rep_tbl VALUES("722","18820230719","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment
            19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:41:11pm","","2023-07-24 06:51:26am","undelete");
INSERT INTO rep_tbl VALUES("723","44920230719","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:42:11pm","","2023-07-24 06:51:37am","undelete");
INSERT INTO rep_tbl VALUES("724","44920230719","807462","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:42:11pm","","2023-07-24 06:51:37am","undelete");
INSERT INTO rep_tbl VALUES("725","14220230719","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","pending","19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:42:27pm","","2023-07-24 06:51:49am","deleted");
INSERT INTO rep_tbl VALUES("726","14220230719","807462","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5500.00","0.00","","pending","19/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-19","2023-07-19 04:42:27pm","","2023-07-24 06:51:49am","deleted");
INSERT INTO rep_tbl VALUES("727","","841556","09714256","Adeniyi Titilope Taiwo","Temitope","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-18","","","","undelete");
INSERT INTO rep_tbl VALUES("728","73020230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:23:20pm","","2023-07-24 06:51:58am","undelete");
INSERT INTO rep_tbl VALUES("729","73020230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:23:20pm","","2023-07-24 06:51:58am","undelete");
INSERT INTO rep_tbl VALUES("730","","441470","89541345","Ademola Aminat Iyabo","Ilorin","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-18","","","","undelete");
INSERT INTO rep_tbl VALUES("731","16120230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","2800.00","0.00","2800.00","Credit","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:24:10pm","","2023-07-24 06:52:07am","undelete");
INSERT INTO rep_tbl VALUES("732","16120230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","2800.00","0.00","","confirmed","12/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:24:10pm","","2023-07-24 06:52:07am","undelete");
INSERT INTO rep_tbl VALUES("733","67920230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3200.00","0.00","3200.00","Credit","confirmed","13/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:24:32pm","","2023-07-24 06:52:30am","undelete");
INSERT INTO rep_tbl VALUES("734","67920230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3200.00","0.00","","confirmed","13/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:24:32pm","","2023-07-24 06:52:30am","undelete");
INSERT INTO rep_tbl VALUES("735","18420230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","1500.00","0.00","1500.00","Credit","confirmed","14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:01pm","","2023-07-24 07:09:21am","undelete");
INSERT INTO rep_tbl VALUES("736","18420230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","1500.00","0.00","","confirmed","14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:01pm","","2023-07-24 07:09:21am","undelete");
INSERT INTO rep_tbl VALUES("737","13020230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","2500.00","0.00","2500.00","Credit","confirmed","17/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:29pm","","2023-07-24 06:53:15am","undelete");
INSERT INTO rep_tbl VALUES("738","13020230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","2500.00","0.00","","confirmed","17/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:29pm","","2023-07-24 06:53:15am","undelete");
INSERT INTO rep_tbl VALUES("739","60120230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:51pm","","2023-07-24 06:53:27am","undelete");
INSERT INTO rep_tbl VALUES("740","60120230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:25:51pm","","2023-07-24 06:53:27am","undelete");
INSERT INTO rep_tbl VALUES("741","28820230719","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3500.00","0.00","3500.00","Credit","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:26:11pm","","2023-07-24 07:08:28am","undelete");
INSERT INTO rep_tbl VALUES("742","28820230719","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3500.00","0.00","","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:26:11pm","","2023-07-24 07:08:28am","undelete");
INSERT INTO rep_tbl VALUES("743","35620230719","229704","22357051","Babatunde Olusegun","Coach","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","10000.00","0.00","10000.00","Credit","confirmed","13/7/23
14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:32:54pm","","2023-07-24 07:08:08am","undelete");
INSERT INTO rep_tbl VALUES("744","35620230719","229704","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","10000.00","0.00","","confirmed","13/7/23
14/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:32:54pm","","2023-07-24 07:08:08am","undelete");
INSERT INTO rep_tbl VALUES("745","67720230719","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","7000.00","0.00","7000.00","Credit","confirmed","14/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:34:45pm","","2023-07-24 07:07:49am","undelete");
INSERT INTO rep_tbl VALUES("746","67720230719","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","7000.00","0.00","","confirmed","14/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:34:45pm","","2023-07-24 07:07:49am","undelete");
INSERT INTO rep_tbl VALUES("747","14520230719","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","8000.00","0.00","8000.00","Credit","confirmed","13/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:37:56pm","","2023-07-24 07:06:58am","undelete");
INSERT INTO rep_tbl VALUES("748","14520230719","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","8000.00","0.00","","confirmed","13/7/23
18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-19","2023-07-19 05:37:56pm","","2023-07-24 07:06:58am","undelete");
INSERT INTO rep_tbl VALUES("749","12420230719","765814","32633099","Nzejekpe Ikebana","Ik","Alago Chidera","70000.00","40000.00","0.00","48000.00","8000.00","0.00","8000.00","Credit","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:44:22pm","","2023-07-24 07:06:45am","undelete");
INSERT INTO rep_tbl VALUES("750","12420230719","765814","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","8000.00","0.00","","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:44:22pm","","2023-07-24 07:06:45am","undelete");
INSERT INTO rep_tbl VALUES("751","27020230719","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","8000.00","0.00","8000.00","Credit","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:45:26pm","","2023-07-24 07:06:35am","undelete");
INSERT INTO rep_tbl VALUES("752","27020230719","889051","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","8000.00","0.00","","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:45:26pm","","2023-07-24 07:06:35am","undelete");
INSERT INTO rep_tbl VALUES("753","78620230719","664513","63357496","Oladele Bukky Funmi","Esther","Alago Chidera","70000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","17/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:46:40pm","","2023-07-24 07:06:14am","undelete");
INSERT INTO rep_tbl VALUES("754","78620230719","664513","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","17/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:46:40pm","","2023-07-24 07:06:14am","undelete");
INSERT INTO rep_tbl VALUES("755","93020230719","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:47:42pm","","2023-07-24 07:03:55am","undelete");
INSERT INTO rep_tbl VALUES("756","93020230719","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:47:42pm","","2023-07-24 07:03:55am","undelete");
INSERT INTO rep_tbl VALUES("757","10720230719","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:48:30pm","","2023-07-24 06:54:03am","undelete");
INSERT INTO rep_tbl VALUES("758","10720230719","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","14/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:48:30pm","","2023-07-24 06:54:03am","undelete");
INSERT INTO rep_tbl VALUES("759","30020230719","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","18/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:49:55pm","","2023-07-24 06:54:40am","undelete");
INSERT INTO rep_tbl VALUES("760","30020230719","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","18/7
19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:49:55pm","","2023-07-24 06:54:40am","undelete");
INSERT INTO rep_tbl VALUES("761","88920230719","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:51:57pm","","2023-07-24 06:55:18am","undelete");
INSERT INTO rep_tbl VALUES("762","88920230719","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","19/7","Sanni Bukola","Alago Chidera","2023-07-19","2023-07-19 05:51:57pm","","2023-07-24 06:55:18am","undelete");
INSERT INTO rep_tbl VALUES("763","83120230720","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment
              20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 01:22:33pm","","2023-07-24 06:55:40am","undelete");
INSERT INTO rep_tbl VALUES("764","83120230720","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","Loan payment
              20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 01:22:33pm","","2023-07-24 06:55:40am","undelete");
INSERT INTO rep_tbl VALUES("765","44420230720","765814","32633099","Nzejekpe Ikebana","Ik","Alago Chidera","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:54:50pm","","2023-07-24 06:56:35am","undelete");
INSERT INTO rep_tbl VALUES("766","44420230720","765814","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:54:50pm","","2023-07-24 06:56:35am","undelete");
INSERT INTO rep_tbl VALUES("767","22320230720","664513","63357496","Oladele Bukky Funmi","Esther","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:55:25pm","","2023-07-24 06:56:46am","undelete");
INSERT INTO rep_tbl VALUES("768","22320230720","664513","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:55:25pm","","2023-07-24 06:56:46am","undelete");
INSERT INTO rep_tbl VALUES("769","29120230720","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:56:17pm","","2023-07-24 06:56:57am","undelete");
INSERT INTO rep_tbl VALUES("770","29120230720","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 03:56:17pm","","2023-07-24 06:56:57am","undelete");
INSERT INTO rep_tbl VALUES("771","55420230720","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 04:26:25pm","","2023-07-24 06:57:07am","undelete");
INSERT INTO rep_tbl VALUES("772","55420230720","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 04:26:25pm","","2023-07-24 06:57:07am","undelete");
INSERT INTO rep_tbl VALUES("773","44320230720","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 04:28:30pm","","2023-07-24 06:58:08am","undelete");
INSERT INTO rep_tbl VALUES("774","44320230720","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/7","Sanni Bukola","Alago Chidera","2023-07-20","2023-07-20 04:28:30pm","","2023-07-24 06:58:08am","undelete");
INSERT INTO rep_tbl VALUES("775","49520230720","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment
             20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 04:28:35pm","","2023-07-24 06:58:48am","undelete");
INSERT INTO rep_tbl VALUES("776","49520230720","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment
             20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 04:28:35pm","","2023-07-24 06:58:48am","undelete");
INSERT INTO rep_tbl VALUES("1051","","504614","11173936","TEMITOPE ESTHER ","EMERALD","Ibitomi Esther","30000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-28","","","","undelete");
INSERT INTO rep_tbl VALUES("778","21420230720","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment
             20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 04:29:09pm","","2023-07-24 06:59:41am","undelete");
INSERT INTO rep_tbl VALUES("779","80920230720","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment
            20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 04:30:53pm","","2023-07-24 07:00:03am","undelete");
INSERT INTO rep_tbl VALUES("780","80920230720","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment
            20/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-20","2023-07-20 04:30:53pm","","2023-07-24 07:00:03am","undelete");
INSERT INTO rep_tbl VALUES("781","","073345","30834607","Adedeji Fatimo ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("782","","237689","43853093","Adio Mosurat ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("783","","390918","52389520","Adamu Taiwo ","Semilore","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("784","","482965","96828719","Adebayo Kudirat Tanwa","Semilore","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("785","","501188","37597821","Oladele Kehinde Oriyomi","God gift","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-20","","","","undelete");
INSERT INTO rep_tbl VALUES("786","","985389","09560615","Ubakar Kenneth Favor","God gift","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-20","","","","undelete");
INSERT INTO rep_tbl VALUES("787","","790558","57129296","Oladele Lateef Oriyomi","God gift","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-20","","","","undelete");
INSERT INTO rep_tbl VALUES("788","","805945","73745385","Lasisi Adijat Ayoade","Semilore","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("789","","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-19","","","","undelete");
INSERT INTO rep_tbl VALUES("790","","932701","03130283","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-21","","","","undelete");
INSERT INTO rep_tbl VALUES("791","","795502","08433618","Fatimo Ayandele ","Boluwatife","Shoyebi Folashade","40000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-21","","","","undelete");
INSERT INTO rep_tbl VALUES("792","","636460","22575680","Odoro Felix ","Boluwatife","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-21","","","","undelete");
INSERT INTO rep_tbl VALUES("793","","186539","25170616","Odoro Rita ","Boluwatife","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-21","","","","undelete");
INSERT INTO rep_tbl VALUES("794","12320230721","374982","30106147","Onakayode oluwatoyin precious","Toyin","Oyaosho Folakemi","70000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","14/6/23
19/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-21","2023-07-21 03:29:08pm","","2023-07-24 07:01:11am","undelete");
INSERT INTO rep_tbl VALUES("795","12320230721","374982","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","14/6/23
19/7/23","Sanni Bukola","Oyaosho Folakemi","2023-07-21","2023-07-21 03:29:08pm","","2023-07-24 07:01:11am","undelete");
INSERT INTO rep_tbl VALUES("796","","752410","80004861","Okorie gift oyinye","Good market","Oyaosho Folakemi","150000.00","150000.00","0.00","180000.00","0.00","180000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1050","","374982","38386988","Onakayode oluwatoyin precious","Toyin","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-27","","","","undelete");
INSERT INTO rep_tbl VALUES("797","29720230724","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment 
          24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:48:31pm","","2023-07-28 01:30:58am","undelete");
INSERT INTO rep_tbl VALUES("798","29720230724","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment 
          24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:48:31pm","","2023-07-28 01:30:58am","undelete");
INSERT INTO rep_tbl VALUES("799","30520230724","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment 
             24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:49:37pm","","2023-07-28 01:31:08am","undelete");
INSERT INTO rep_tbl VALUES("800","30520230724","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","2500.00","0.00","","confirmed","Loan payment 
             24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:49:37pm","","2023-07-28 01:31:08am","undelete");
INSERT INTO rep_tbl VALUES("801","63320230724","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","12000.00","0.00","12000.00","Credit","confirmed","11/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:50:53pm","","2023-07-28 01:31:18am","undelete");
INSERT INTO rep_tbl VALUES("802","63320230724","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","12000.00","0.00","","confirmed","11/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:50:53pm","","2023-07-28 01:31:18am","undelete");
INSERT INTO rep_tbl VALUES("803","13220230724","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment 
         24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:50:54pm","","2023-07-28 01:31:27am","undelete");
INSERT INTO rep_tbl VALUES("804","13220230724","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment 
         24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:50:54pm","","2023-07-28 01:31:27am","undelete");
INSERT INTO rep_tbl VALUES("805","88620230724","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:51:31pm","","2023-07-28 01:31:35am","undelete");
INSERT INTO rep_tbl VALUES("806","88620230724","157714","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:51:31pm","","2023-07-28 01:31:35am","undelete");
INSERT INTO rep_tbl VALUES("807","58120230724","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment 
         24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:52:18pm","","2023-07-28 01:31:42am","undelete");
INSERT INTO rep_tbl VALUES("808","58120230724","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment 
         24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 03:52:18pm","","2023-07-28 01:31:42am","undelete");
INSERT INTO rep_tbl VALUES("809","66320230724","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","17500.00","0.00","17500.00","Credit","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:56:11pm","","2023-07-28 01:31:51am","undelete");
INSERT INTO rep_tbl VALUES("810","66320230724","431332","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","17500.00","0.00","","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 03:56:11pm","","2023-07-28 01:31:51am","undelete");
INSERT INTO rep_tbl VALUES("811","85220230724","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","13/7/23
20/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 04:53:27pm","","2023-07-28 01:32:02am","undelete");
INSERT INTO rep_tbl VALUES("812","85220230724","555148","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","13/7/23
20/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 04:53:27pm","","2023-07-28 01:32:02am","undelete");
INSERT INTO rep_tbl VALUES("813","92520230724","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","70000.00","20000.00","0.00","24000.00","4000.00","0.00","4000.00","Credit","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 04:58:14pm","","2023-07-28 01:32:10am","undelete");
INSERT INTO rep_tbl VALUES("814","92520230724","419935","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","4000.00","0.00","","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 04:58:14pm","","2023-07-28 01:32:10am","undelete");
INSERT INTO rep_tbl VALUES("815","50820230724","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","9000.00","0.00","9000.00","Credit","confirmed","17/7/23
21/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:00:52pm","","2023-07-28 01:32:18am","undelete");
INSERT INTO rep_tbl VALUES("816","50820230724","801029","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","9000.00","0.00","","confirmed","17/7/23
21/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:00:52pm","","2023-07-28 01:32:18am","undelete");
INSERT INTO rep_tbl VALUES("817","15620230724","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","18000.00","0.00","18000.00","Credit","confirmed","11/7/23
17/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:03:45pm","","2023-07-28 01:32:27am","undelete");
INSERT INTO rep_tbl VALUES("818","15620230724","450220","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","18000.00","0.00","","confirmed","11/7/23
17/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:03:45pm","","2023-07-28 01:32:27am","undelete");
INSERT INTO rep_tbl VALUES("819","66820230724","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","15000.00","0.00","15000.00","Credit","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:15:35pm","","2023-07-28 01:32:35am","undelete");
INSERT INTO rep_tbl VALUES("820","66820230724","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","15000.00","0.00","","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:15:35pm","","2023-07-28 01:32:35am","undelete");
INSERT INTO rep_tbl VALUES("821","97820230724","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","26500.00","0.00","26500.00","Credit","confirmed","13/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:20:22pm","","2023-07-28 01:32:49am","undelete");
INSERT INTO rep_tbl VALUES("822","97820230724","552927","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","26500.00","0.00","","confirmed","13/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-24","2023-07-24 05:20:22pm","","2023-07-28 01:32:49am","undelete");
INSERT INTO rep_tbl VALUES("823","70620230724","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment 
              24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 06:01:29pm","","2023-07-28 01:32:57am","undelete");
INSERT INTO rep_tbl VALUES("824","70620230724","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment 
              24/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-24","2023-07-24 06:01:29pm","","2023-07-28 01:32:57am","undelete");
INSERT INTO rep_tbl VALUES("825","15420230725","154758","59698938","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","900.00","0.00","900.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-25","2023-07-25 03:32:23pm","","2023-07-28 01:33:15am","undelete");
INSERT INTO rep_tbl VALUES("826","15420230725","154758","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","900.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-25","2023-07-25 03:32:23pm","","2023-07-28 01:33:15am","undelete");
INSERT INTO rep_tbl VALUES("827","45420230725","451099","43543098","Raji Sekirat Mummy lekan","Ibukun","Alago Chidera","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","24/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:20:26pm","","2023-07-28 01:33:24am","undelete");
INSERT INTO rep_tbl VALUES("828","45420230725","451099","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","24/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:20:26pm","","2023-07-28 01:33:24am","undelete");
INSERT INTO rep_tbl VALUES("829","74120230725","765814","32633099","Nzejekpe Ikebana","Ik","Alago Chidera","70000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:21:18pm","","2023-07-28 01:33:32am","undelete");
INSERT INTO rep_tbl VALUES("830","74120230725","765814","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:21:18pm","","2023-07-28 01:33:32am","undelete");
INSERT INTO rep_tbl VALUES("831","14620230725","889051","34180021","Lawal Monsurat Iya ope","Esther","Alago Chidera","70000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:22:15pm","","2023-07-28 01:33:41am","undelete");
INSERT INTO rep_tbl VALUES("832","14620230725","889051","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:22:15pm","","2023-07-28 01:33:41am","undelete");
INSERT INTO rep_tbl VALUES("833","23720230725","664513","63357496","Oladele Bukky Funmi","Esther","Alago Chidera","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:22:58pm","","2023-07-28 01:33:48am","undelete");
INSERT INTO rep_tbl VALUES("834","23720230725","664513","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:22:58pm","","2023-07-28 01:33:48am","undelete");
INSERT INTO rep_tbl VALUES("835","99620230725","785398","88020128","Hassan Ajadi Suliamon","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:25:20pm","","2023-07-28 01:33:56am","undelete");
INSERT INTO rep_tbl VALUES("836","99620230725","785398","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:25:20pm","","2023-07-28 01:33:56am","undelete");
INSERT INTO rep_tbl VALUES("837","78620230725","195047","43241256","Alokolaro Afolashade Afolabi","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:26:11pm","","2023-07-28 01:34:06am","undelete");
INSERT INTO rep_tbl VALUES("838","78620230725","195047","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","24/7
25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:26:11pm","","2023-07-28 01:34:06am","undelete");
INSERT INTO rep_tbl VALUES("839","48420230725","110431","51292914","Olowokere Okuwasola","Okiki","Alago Chidera","70000.00","30000.00","0.00","36000.00","2000.00","0.00","2000.00","Credit","confirmed","25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:26:47pm","","2023-07-28 01:34:16am","undelete");
INSERT INTO rep_tbl VALUES("840","48420230725","110431","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","2000.00","0.00","","confirmed","25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:26:47pm","","2023-07-28 01:34:16am","undelete");
INSERT INTO rep_tbl VALUES("841","38720230725","959016","99895904","Akinbarni Monsurat Iya Agbo","Success","Alago Chidera","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:27:15pm","","2023-07-28 01:34:31am","undelete");
INSERT INTO rep_tbl VALUES("842","38720230725","959016","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","25/7","Sanni Bukola","Alago Chidera","2023-07-25","2023-07-25 04:27:15pm","","2023-07-28 01:34:31am","undelete");
INSERT INTO rep_tbl VALUES("843","19020230725","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:07:03pm","","2023-07-28 01:34:39am","undelete");
INSERT INTO rep_tbl VALUES("844","19020230725","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:07:03pm","","2023-07-28 01:34:39am","undelete");
INSERT INTO rep_tbl VALUES("845","45120230725","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:07:21pm","","2023-07-28 01:34:46am","undelete");
INSERT INTO rep_tbl VALUES("846","45120230725","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:07:21pm","","2023-07-28 01:34:46am","undelete");
INSERT INTO rep_tbl VALUES("847","42020230725","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:08:01pm","","2023-07-28 01:34:55am","undelete");
INSERT INTO rep_tbl VALUES("848","42020230725","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-25","2023-07-25 05:08:01pm","","2023-07-28 01:34:55am","undelete");
INSERT INTO rep_tbl VALUES("849","41720230726","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 08:57:34am","","2023-07-28 01:35:05am","undelete");
INSERT INTO rep_tbl VALUES("850","41720230726","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 08:57:34am","","2023-07-28 01:35:05am","undelete");
INSERT INTO rep_tbl VALUES("851","52020230726","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","6000.00","0.00","6000.00","Credit","confirmed","21/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 08:59:04am","","2023-07-28 01:35:16am","undelete");
INSERT INTO rep_tbl VALUES("852","52020230726","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","6000.00","0.00","","confirmed","21/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 08:59:04am","","2023-07-28 01:35:16am","undelete");
INSERT INTO rep_tbl VALUES("853","70120230726","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","20/7/23
21/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:03:22am","","2023-07-28 01:35:30am","undelete");
INSERT INTO rep_tbl VALUES("854","70120230726","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","20/7/23
21/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:03:22am","","2023-07-28 01:35:30am","undelete");
INSERT INTO rep_tbl VALUES("855","46420230726","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","21000.00","0.00","21000.00","Credit","confirmed","14/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:06:28am","","2023-07-28 01:35:46am","undelete");
INSERT INTO rep_tbl VALUES("856","46420230726","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","21000.00","0.00","","confirmed","14/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:06:28am","","2023-07-28 01:35:46am","undelete");
INSERT INTO rep_tbl VALUES("857","48520230726","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:17:28am","","2023-07-28 01:35:55am","undelete");
INSERT INTO rep_tbl VALUES("858","48520230726","157714","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:17:28am","","2023-07-28 01:35:55am","undelete");
INSERT INTO rep_tbl VALUES("859","52020230726","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:20:03am","","2023-07-28 01:35:16am","undelete");
INSERT INTO rep_tbl VALUES("860","52020230726","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:20:03am","","2023-07-28 01:35:16am","undelete");
INSERT INTO rep_tbl VALUES("861","87320230726","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:23:53am","","2023-07-28 01:36:04am","undelete");
INSERT INTO rep_tbl VALUES("862","87320230726","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:23:53am","","2023-07-28 01:36:04am","undelete");
INSERT INTO rep_tbl VALUES("863","70920230726","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:26:45am","","2023-07-28 01:36:11am","undelete");
INSERT INTO rep_tbl VALUES("864","70920230726","264038","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:26:45am","","2023-07-28 01:36:11am","undelete");
INSERT INTO rep_tbl VALUES("865","28620230726","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","6500.00","0.00","6500.00","Credit","confirmed","20/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:27:03am","","2023-07-28 01:36:20am","undelete");
INSERT INTO rep_tbl VALUES("866","28620230726","264038","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","6500.00","0.00","","confirmed","20/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:27:03am","","2023-07-28 01:36:20am","undelete");
INSERT INTO rep_tbl VALUES("867","13920230726","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","10500.00","0.00","10500.00","Credit","confirmed","14/7/23      
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:30:46am","","2023-07-28 01:36:30am","undelete");
INSERT INTO rep_tbl VALUES("868","13920230726","231633","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","10500.00","0.00","","confirmed","14/7/23      
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:30:46am","","2023-07-28 01:36:30am","undelete");
INSERT INTO rep_tbl VALUES("869","17420230726","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:37:55am","","2023-07-28 01:36:42am","undelete");
INSERT INTO rep_tbl VALUES("870","17420230726","801029","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:37:55am","","2023-07-28 01:36:42am","undelete");
INSERT INTO rep_tbl VALUES("871","59020230726","419935","48644476","Adepoju Michael Sunday","Ticket 1","Ajayi Adedoyin","70000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","24/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:41:27am","","2023-07-28 01:36:49am","undelete");
INSERT INTO rep_tbl VALUES("872","59020230726","419935","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","24/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 09:41:27am","","2023-07-28 01:36:49am","undelete");
INSERT INTO rep_tbl VALUES("873","87220230726","645893","07056212","Fasasi Latefat","Omodara","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","22500.00","0.00","22500.00","Credit","confirmed","13/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 10:45:26am","","2023-07-28 01:37:00am","undelete");
INSERT INTO rep_tbl VALUES("874","87220230726","645893","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","22500.00","0.00","","confirmed","13/7/23
25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 10:45:26am","","2023-07-28 01:37:00am","undelete");
INSERT INTO rep_tbl VALUES("875","53420230726","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","3000.00","0.00","3000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:17:54pm","","2023-07-28 01:37:08am","undelete");
INSERT INTO rep_tbl VALUES("876","53420230726","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","3000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:17:54pm","","2023-07-28 01:37:08am","undelete");
INSERT INTO rep_tbl VALUES("877","11020230726","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:18:37pm","","2023-07-28 01:37:16am","undelete");
INSERT INTO rep_tbl VALUES("878","11020230726","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:18:37pm","","2023-07-28 01:37:16am","undelete");
INSERT INTO rep_tbl VALUES("879","90220230726","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:19:25pm","","2023-07-28 01:37:33am","undelete");
INSERT INTO rep_tbl VALUES("880","90220230726","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:19:25pm","","2023-07-28 01:37:33am","undelete");
INSERT INTO rep_tbl VALUES("881","92820230726","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:20:23pm","","2023-07-28 01:37:41am","undelete");
INSERT INTO rep_tbl VALUES("882","92820230726","450220","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:20:23pm","","2023-07-28 01:37:41am","undelete");
INSERT INTO rep_tbl VALUES("883","30420230726","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","5000.00","0.00","5000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:21:44pm","","2023-07-28 01:37:49am","undelete");
INSERT INTO rep_tbl VALUES("884","30420230726","552927","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","5000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:21:44pm","","2023-07-28 01:37:49am","undelete");
INSERT INTO rep_tbl VALUES("885","67220230726","645893","07056212","Fasasi Latefat","Omodara","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:22:21pm","","2023-07-28 01:37:56am","undelete");
INSERT INTO rep_tbl VALUES("886","67220230726","645893","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:22:21pm","","2023-07-28 01:37:56am","undelete");
INSERT INTO rep_tbl VALUES("887","82220230726","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:23:09pm","","2023-07-28 01:38:05am","undelete");
INSERT INTO rep_tbl VALUES("888","82220230726","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:23:09pm","","2023-07-28 01:38:05am","undelete");
INSERT INTO rep_tbl VALUES("889","94720230726","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:23:45pm","","2023-07-28 01:38:16am","undelete");
INSERT INTO rep_tbl VALUES("890","94720230726","431332","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:23:45pm","","2023-07-28 01:38:16am","undelete");
INSERT INTO rep_tbl VALUES("891","18020230726","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:24:16pm","","2023-07-28 01:38:24am","undelete");
INSERT INTO rep_tbl VALUES("892","18020230726","231633","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:24:16pm","","2023-07-28 01:38:24am","undelete");
INSERT INTO rep_tbl VALUES("893","26420230726","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:24:43pm","","2023-07-28 01:38:34am","undelete");
INSERT INTO rep_tbl VALUES("894","26420230726","157714","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-26","2023-07-26 04:24:43pm","","2023-07-28 01:38:34am","undelete");
INSERT INTO rep_tbl VALUES("895","60420230726","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment 
              26/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:03:13pm","","2023-07-28 01:38:42am","undelete");
INSERT INTO rep_tbl VALUES("896","60420230726","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment 
              26/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:03:13pm","","2023-07-28 01:38:42am","undelete");
INSERT INTO rep_tbl VALUES("897","56420230726","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3500.00","0.00","3500.00","Credit","confirmed","Loan payment 
                   26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:06:44pm","","2023-07-28 01:38:49am","undelete");
INSERT INTO rep_tbl VALUES("898","56420230726","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3500.00","0.00","","confirmed","Loan payment 
                   26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:06:44pm","","2023-07-28 01:38:49am","undelete");
INSERT INTO rep_tbl VALUES("899","77320230726","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment 
              26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:08:38pm","","2023-07-28 01:41:30am","undelete");
INSERT INTO rep_tbl VALUES("900","77320230726","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","Loan payment 
              26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:08:38pm","","2023-07-28 01:41:30am","undelete");
INSERT INTO rep_tbl VALUES("901","46020230726","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment 
            26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:18:01pm","","2023-07-28 01:41:22am","undelete");
INSERT INTO rep_tbl VALUES("902","46020230726","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment 
            26/7","Sanni Bukola","Omolayo Funmilayo","2023-07-26","2023-07-26 05:18:01pm","","2023-07-28 01:41:22am","undelete");
INSERT INTO rep_tbl VALUES("903","95120230727","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment 
               27/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 09:30:37am","","2023-07-28 01:41:14am","deleted");
INSERT INTO rep_tbl VALUES("904","95120230727","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","Loan payment 
               27/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 09:30:37am","","2023-07-28 01:41:14am","undelete");
INSERT INTO rep_tbl VALUES("905","67720230727","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment 
       27/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:46:40pm","","2023-07-28 01:41:04am","undelete");
INSERT INTO rep_tbl VALUES("906","67720230727","094263","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","10000.00","0.00","","confirmed","Loan payment 
       27/7/23","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:46:40pm","","2023-07-28 01:41:04am","undelete");
INSERT INTO rep_tbl VALUES("907","45620230727","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:52:08pm","","2023-07-28 01:40:53am","undelete");
INSERT INTO rep_tbl VALUES("908","45620230727","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:52:08pm","","2023-07-28 01:40:53am","undelete");
INSERT INTO rep_tbl VALUES("909","33520230727","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:57:09pm","","2023-07-28 01:40:44am","deleted");
INSERT INTO rep_tbl VALUES("910","33520230727","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 03:57:09pm","","2023-07-28 01:40:44am","undelete");
INSERT INTO rep_tbl VALUES("911","34820230727","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 04:00:56pm","","2023-07-28 01:40:33am","undelete");
INSERT INTO rep_tbl VALUES("912","34820230727","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-07-27","2023-07-27 04:00:56pm","","2023-07-28 01:40:33am","undelete");
INSERT INTO rep_tbl VALUES("913","41520230727","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 04:24:00pm","","2023-07-28 01:40:20am","undelete");
INSERT INTO rep_tbl VALUES("914","41520230727","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","26/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 04:24:00pm","","2023-07-28 01:40:20am","undelete");
INSERT INTO rep_tbl VALUES("915","26420230727","232627","43256879","Shobiye Felicia","Indomie","Ajayi Adedoyin","70000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:39:01pm","","2023-07-28 01:40:10am","undelete");
INSERT INTO rep_tbl VALUES("916","26420230727","232627","100129
","Loan Account","","","70000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","27/6/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:39:01pm","","2023-07-28 01:40:10am","undelete");
INSERT INTO rep_tbl VALUES("917","74920230727","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:40:30pm","","2023-07-28 01:40:00am","undelete");
INSERT INTO rep_tbl VALUES("918","74920230727","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:40:30pm","","2023-07-28 01:40:00am","undelete");
INSERT INTO rep_tbl VALUES("919","76920230727","232627","43256879","Shobiye Felicia","Indomie","Ajayi Adedoyin","70000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:41:10pm","","2023-07-28 01:39:51am","undelete");
INSERT INTO rep_tbl VALUES("920","76920230727","232627","100129
","Loan Account","","","70000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","4/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:41:10pm","","2023-07-28 01:39:51am","undelete");
INSERT INTO rep_tbl VALUES("921","78620230727","232627","43256879","Shobiye Felicia","Indomie","Ajayi Adedoyin","70000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:41:59pm","","2023-07-28 01:39:40am","undelete");
INSERT INTO rep_tbl VALUES("922","78620230727","232627","100129
","Loan Account","","","70000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","11/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:41:59pm","","2023-07-28 01:39:40am","undelete");
INSERT INTO rep_tbl VALUES("923","36320230727","232627","43256879","Shobiye Felicia","Indomie","Ajayi Adedoyin","70000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:42:43pm","","2023-07-28 01:39:27am","undelete");
INSERT INTO rep_tbl VALUES("924","36320230727","232627","100129
","Loan Account","","","70000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","18/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:42:43pm","","2023-07-28 01:39:27am","undelete");
INSERT INTO rep_tbl VALUES("925","59120230727","232627","43256879","Shobiye Felicia","Indomie","Ajayi Adedoyin","70000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:43:09pm","","2023-07-28 01:39:16am","undelete");
INSERT INTO rep_tbl VALUES("926","59120230727","232627","100129
","Loan Account","","","70000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","25/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:43:09pm","","2023-07-28 01:39:16am","undelete");
INSERT INTO rep_tbl VALUES("927","98920230727","559552","11836923","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","10000.00","0.00","10000.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:45:05pm","","2023-07-28 01:39:02am","undelete");
INSERT INTO rep_tbl VALUES("928","98920230727","559552","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","10000.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-27","2023-07-27 05:45:05pm","","2023-07-28 01:39:02am","undelete");
INSERT INTO rep_tbl VALUES("929","","410460","66119281","Olajide Emmanuel ","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-24","","","","undelete");
INSERT INTO rep_tbl VALUES("930","","844684","40771507","Nnamdi Sabastine Samuel","Nnamdi","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-25","","","","undelete");
INSERT INTO rep_tbl VALUES("931","","154758","25397733","Abanise Titilayo ","Precious","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-25","","","","undelete");
INSERT INTO rep_tbl VALUES("932","","471681","71876520","Lateef Risikatu Olatundun","Olatundu","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-27","","","","undelete");
INSERT INTO rep_tbl VALUES("933","","372437","69482504","Yusuf Olayinka ","Wisdom","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-26","","","","undelete");
INSERT INTO rep_tbl VALUES("934","","712907","46227687","Ogunmodede Kafayat ","Wisdom","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-26","","","","undelete");
INSERT INTO rep_tbl VALUES("935","75120230728","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:03:38am","","2023-08-29 12:25:20pm","undelete");
INSERT INTO rep_tbl VALUES("936","75120230728","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:03:38am","","2023-08-29 12:25:20pm","undelete");
INSERT INTO rep_tbl VALUES("937","27120230728","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:04:49am","","2023-08-29 12:25:35pm","undelete");
INSERT INTO rep_tbl VALUES("938","27120230728","400080","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:04:49am","","2023-08-29 12:25:35pm","undelete");
INSERT INTO rep_tbl VALUES("939","21120230728","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:05:19am","","2023-08-29 12:25:43pm","undelete");
INSERT INTO rep_tbl VALUES("940","21120230728","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:05:19am","","2023-08-29 12:25:43pm","undelete");
INSERT INTO rep_tbl VALUES("941","77620230728","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:06:36am","","2023-08-29 12:25:52pm","undelete");
INSERT INTO rep_tbl VALUES("942","77620230728","450220","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:06:36am","","2023-08-29 12:25:52pm","undelete");
INSERT INTO rep_tbl VALUES("943","32120230728","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:07:09am","","2023-08-29 12:26:00pm","undelete");
INSERT INTO rep_tbl VALUES("944","32120230728","555148","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:07:09am","","2023-08-29 12:26:00pm","undelete");
INSERT INTO rep_tbl VALUES("945","55820230728","645893","07056212","Fasasi Latefat","Omodara","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:07:41am","","2023-08-29 12:26:07pm","undelete");
INSERT INTO rep_tbl VALUES("946","55820230728","645893","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:07:41am","","2023-08-29 12:26:07pm","undelete");
INSERT INTO rep_tbl VALUES("947","68620230728","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:08:17am","","2023-08-29 12:26:16pm","undelete");
INSERT INTO rep_tbl VALUES("948","68620230728","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:08:17am","","2023-08-29 12:26:16pm","undelete");
INSERT INTO rep_tbl VALUES("949","68720230728","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:08:43am","","2023-08-29 12:26:23pm","undelete");
INSERT INTO rep_tbl VALUES("950","68720230728","431332","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:08:43am","","2023-08-29 12:26:23pm","undelete");
INSERT INTO rep_tbl VALUES("951","49920230728","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:09:07am","","2023-08-29 12:26:32pm","undelete");
INSERT INTO rep_tbl VALUES("952","49920230728","231633","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:09:07am","","2023-08-29 12:26:32pm","undelete");
INSERT INTO rep_tbl VALUES("953","66220230728","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:09:53am","","2023-08-29 12:26:45pm","undelete");
INSERT INTO rep_tbl VALUES("954","66220230728","157714","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","27/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 09:09:53am","","2023-08-29 12:26:45pm","undelete");
INSERT INTO rep_tbl VALUES("955","62020230728","674572","05342452","Lidipe Omolabake","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","10/7/23
25/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:24:59am","","2023-08-29 12:26:53pm","undelete");
INSERT INTO rep_tbl VALUES("956","62020230728","674572","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","10/7/23
25/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:24:59am","","2023-08-29 12:26:53pm","undelete");
INSERT INTO rep_tbl VALUES("957","20820230728","658264","62657001","Ezealora kk Favour","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","15000.00","0.00","15000.00","Credit","confirmed","10/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:27:19am","","2023-08-29 12:27:00pm","undelete");
INSERT INTO rep_tbl VALUES("958","20820230728","658264","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","15000.00","0.00","","confirmed","10/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:27:19am","","2023-08-29 12:27:00pm","undelete");
INSERT INTO rep_tbl VALUES("959","45420230728","658264","62657001","Ezealora kk Favour","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","24/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:29:13am","","2023-08-29 12:27:51pm","undelete");
INSERT INTO rep_tbl VALUES("960","45420230728","658264","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","24/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:29:13am","","2023-08-29 12:27:51pm","undelete");
INSERT INTO rep_tbl VALUES("961","90420230728","587862","49564910","Lidipe Babatunde","Abaniseloluwa","Shoyebi Folashade","70000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","19/7/23
26/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:31:45am","","2023-08-29 12:28:03pm","undelete");
INSERT INTO rep_tbl VALUES("962","90420230728","587862","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","19/7/23
26/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:31:45am","","2023-08-29 12:28:03pm","undelete");
INSERT INTO rep_tbl VALUES("1353","46920230907","482965","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","4000.00","0.00","","confirmed","31/8/23
6/9/23","Sanni Bukola","Shoyebi Folashade","2023-09-07","2023-09-07 10:16:47am","","2023-09-12 10:44:26am","undelete");
INSERT INTO rep_tbl VALUES("1354","62420230907","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:26:18pm","","2023-09-12 10:44:20am","undelete");
INSERT INTO rep_tbl VALUES("965","22320230728","390918","52389520","Adamu Taiwo","Semilore","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","25/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:34:41am","","2023-08-29 12:28:19pm","undelete");
INSERT INTO rep_tbl VALUES("966","22320230728","390918","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","25/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:34:41am","","2023-08-29 12:28:19pm","undelete");
INSERT INTO rep_tbl VALUES("967","37820230728","805945","73745385","Lasisi Adijat Ayoade","Semilore","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","25/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:35:45am","","2023-08-29 12:28:26pm","undelete");
INSERT INTO rep_tbl VALUES("968","37820230728","805945","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","25/7/23
27/7/23","Sanni Bukola","Shoyebi Folashade","2023-07-28","2023-07-28 10:35:45am","","2023-08-29 12:28:26pm","undelete");
INSERT INTO rep_tbl VALUES("969","69820230728","080281","17929432","Adeleye Idris","Idris","Alago Chidera","70000.00","30000.00","0.00","36000.00","7500.00","0.00","7500.00","Credit","confirmed","26/7
27/7","Sanni Bukola","Alago Chidera","2023-07-28","2023-07-28 10:51:28am","","2023-08-29 12:28:32pm","undelete");
INSERT INTO rep_tbl VALUES("970","69820230728","080281","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","7500.00","0.00","","confirmed","26/7
27/7","Sanni Bukola","Alago Chidera","2023-07-28","2023-07-28 10:51:28am","","2023-08-29 12:28:32pm","undelete");
INSERT INTO rep_tbl VALUES("971","58620230728","154758","25397733","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:01:48pm","","2023-08-29 12:28:39pm","undelete");
INSERT INTO rep_tbl VALUES("972","58620230728","154758","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:01:48pm","","2023-08-29 12:28:39pm","undelete");
INSERT INTO rep_tbl VALUES("973","10220230728","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1000.00","0.00","1000.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:02:43pm","","2023-08-29 12:28:46pm","undelete");
INSERT INTO rep_tbl VALUES("974","10220230728","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1000.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:02:43pm","","2023-08-29 12:28:46pm","undelete");
INSERT INTO rep_tbl VALUES("975","57220230728","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","3000.00","0.00","3000.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:03:14pm","","2023-08-29 12:28:52pm","undelete");
INSERT INTO rep_tbl VALUES("976","57220230728","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","3000.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:03:14pm","","2023-08-29 12:28:52pm","undelete");
INSERT INTO rep_tbl VALUES("977","88020230728","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:03:40pm","","2023-08-29 12:28:59pm","undelete");
INSERT INTO rep_tbl VALUES("978","88020230728","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:03:40pm","","2023-08-29 12:28:59pm","undelete");
INSERT INTO rep_tbl VALUES("979","34820230728","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:04:10pm","","2023-08-29 12:29:06pm","undelete");
INSERT INTO rep_tbl VALUES("980","34820230728","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:04:10pm","","2023-08-29 12:29:06pm","undelete");
INSERT INTO rep_tbl VALUES("981","91020230728","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:05:06pm","","2023-08-29 12:29:13pm","undelete");
INSERT INTO rep_tbl VALUES("982","91020230728","431332","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:05:06pm","","2023-08-29 12:29:13pm","undelete");
INSERT INTO rep_tbl VALUES("983","60720230728","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:05:29pm","","2023-08-29 12:29:19pm","undelete");
INSERT INTO rep_tbl VALUES("984","60720230728","157714","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:05:29pm","","2023-08-29 12:29:19pm","undelete");
INSERT INTO rep_tbl VALUES("985","70720230728","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:06:02pm","","2023-08-29 12:29:26pm","undelete");
INSERT INTO rep_tbl VALUES("986","70720230728","231633","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-07-28","2023-07-28 05:06:02pm","","2023-08-29 12:29:26pm","undelete");
INSERT INTO rep_tbl VALUES("987","","559552","10340510","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","150000.00","150000.00","0.00","180000.00","0.00","180000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-27","","","","undelete");
INSERT INTO rep_tbl VALUES("988","73420230801","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:34:50am","","2023-08-29 12:29:33pm","undelete");
INSERT INTO rep_tbl VALUES("989","73420230801","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:34:50am","","2023-08-29 12:29:33pm","undelete");
INSERT INTO rep_tbl VALUES("990","23220230801","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment 
               31/7","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:36:35am","","2023-08-29 12:29:39pm","undelete");
INSERT INTO rep_tbl VALUES("991","23220230801","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment 
               31/7","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:36:35am","","2023-08-29 12:29:39pm","undelete");
INSERT INTO rep_tbl VALUES("992","27720230801","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment 
              31/7","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:39:31am","","2023-08-29 12:29:46pm","undelete");
INSERT INTO rep_tbl VALUES("993","27720230801","094263","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment 
              31/7","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:39:31am","","2023-08-29 12:29:46pm","undelete");
INSERT INTO rep_tbl VALUES("994","14920230801","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:41:31am","","2023-08-29 12:29:53pm","undelete");
INSERT INTO rep_tbl VALUES("995","14920230801","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:41:31am","","2023-08-29 12:29:53pm","undelete");
INSERT INTO rep_tbl VALUES("996","29820230801","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:43:36am","","2023-08-29 12:30:00pm","undelete");
INSERT INTO rep_tbl VALUES("997","29820230801","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:43:36am","","2023-08-29 12:30:00pm","undelete");
INSERT INTO rep_tbl VALUES("998","95420230801","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","11000.00","0.00","11000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:45:47am","","2023-08-29 12:30:08pm","undelete");
INSERT INTO rep_tbl VALUES("999","95420230801","807462","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","11000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:45:47am","","2023-08-29 12:30:08pm","undelete");
INSERT INTO rep_tbl VALUES("1000","54320230801","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:47:20am","","2023-08-29 12:30:14pm","undelete");
INSERT INTO rep_tbl VALUES("1001","54320230801","410460","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-01","2023-08-01 09:47:20am","","2023-08-29 12:30:14pm","undelete");
INSERT INTO rep_tbl VALUES("1002","48720230803","154758","25397733","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:45:05am","","2023-08-29 12:30:21pm","undelete");
INSERT INTO rep_tbl VALUES("1003","48720230803","154758","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:45:05am","","2023-08-29 12:30:21pm","undelete");
INSERT INTO rep_tbl VALUES("1004","98520230803","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:45:40am","","2023-08-29 12:30:27pm","undelete");
INSERT INTO rep_tbl VALUES("1005","98520230803","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:45:40am","","2023-08-29 12:30:27pm","undelete");
INSERT INTO rep_tbl VALUES("1006","56620230803","154758","25397733","Abanise Titilayo","Precious","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","7000.00","0.00","7000.00","Credit","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:47:31am","","2023-08-29 12:30:34pm","undelete");
INSERT INTO rep_tbl VALUES("1007","56620230803","154758","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","7000.00","0.00","","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:47:31am","","2023-08-29 12:30:34pm","undelete");
INSERT INTO rep_tbl VALUES("1008","58720230803","337123","89605093","Olatunji Kafayat Tenifayo","Precious","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:48:25am","","2023-08-29 12:30:41pm","undelete");
INSERT INTO rep_tbl VALUES("1009","58720230803","337123","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:48:25am","","2023-08-29 12:30:41pm","undelete");
INSERT INTO rep_tbl VALUES("1010","94520230803","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:50:08am","","2023-08-29 12:30:48pm","undelete");
INSERT INTO rep_tbl VALUES("1011","94520230803","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:50:08am","","2023-08-29 12:30:48pm","undelete");
INSERT INTO rep_tbl VALUES("1012","27720230803","422737","02099611","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:50:45am","","2023-08-29 12:30:55pm","undelete");
INSERT INTO rep_tbl VALUES("1013","27720230803","422737","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:50:45am","","2023-08-29 12:30:55pm","undelete");
INSERT INTO rep_tbl VALUES("1014","45020230803","508489","47685356","Akorede Jemila Ajoke","Gudugba","Ajayi Adedoyin","70000.00","40000.00","0.00","48000.00","3000.00","0.00","3000.00","Credit","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:53:20am","","2023-08-29 12:31:01pm","undelete");
INSERT INTO rep_tbl VALUES("1015","45020230803","508489","100129
","Loan Account","","","70000.00","40000.00","0.00","48000.00","","3000.00","0.00","","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:53:20am","","2023-08-29 12:31:01pm","undelete");
INSERT INTO rep_tbl VALUES("1016","79420230803","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","70000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:54:39am","","2023-08-29 12:31:08pm","undelete");
INSERT INTO rep_tbl VALUES("1017","79420230803","400080","100129
","Loan Account","","","70000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:54:39am","","2023-08-29 12:31:08pm","undelete");
INSERT INTO rep_tbl VALUES("1018","17720230803","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","70000.00","100000.00","0.00","120000.00","3000.00","0.00","3000.00","Credit","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:55:24am","","2023-08-29 12:31:14pm","undelete");
INSERT INTO rep_tbl VALUES("1019","17720230803","862111","100129
","Loan Account","","","70000.00","100000.00","0.00","120000.00","","3000.00","0.00","","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:55:24am","","2023-08-29 12:31:14pm","undelete");
INSERT INTO rep_tbl VALUES("1020","72220230803","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","70000.00","60000.00","0.00","72000.00","4500.00","0.00","4500.00","Credit","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:56:18am","","2023-08-29 12:31:21pm","undelete");
INSERT INTO rep_tbl VALUES("1021","72220230803","801029","100129
","Loan Account","","","70000.00","60000.00","0.00","72000.00","","4500.00","0.00","","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:56:18am","","2023-08-29 12:31:21pm","undelete");
INSERT INTO rep_tbl VALUES("1022","33720230803","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","2000.00","0.00","2000.00","Credit","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:56:52am","","2023-08-29 12:31:27pm","undelete");
INSERT INTO rep_tbl VALUES("1023","33720230803","552927","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","2000.00","0.00","","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:56:52am","","2023-08-29 12:31:27pm","undelete");
INSERT INTO rep_tbl VALUES("1024","51720230803","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:58:13am","","2023-08-29 12:31:34pm","undelete");
INSERT INTO rep_tbl VALUES("1025","51720230803","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:58:13am","","2023-08-29 12:31:34pm","undelete");
INSERT INTO rep_tbl VALUES("1026","12320230803","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:59:08am","","2023-08-29 12:31:41pm","undelete");
INSERT INTO rep_tbl VALUES("1027","12320230803","318572","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","1/8/23
2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 08:59:08am","","2023-08-29 12:31:41pm","undelete");
INSERT INTO rep_tbl VALUES("1028","84520230803","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","5000.00","0.00","5000.00","Credit","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:00:57am","","2023-08-29 12:31:47pm","undelete");
INSERT INTO rep_tbl VALUES("1029","84520230803","552927","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","5000.00","0.00","","confirmed","31/7/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:00:57am","","2023-08-29 12:31:47pm","undelete");
INSERT INTO rep_tbl VALUES("1030","70920230803","431332","59723577","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:02:07am","","2023-08-29 12:31:52pm","undelete");
INSERT INTO rep_tbl VALUES("1031","70920230803","431332","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:02:07am","","2023-08-29 12:31:52pm","undelete");
INSERT INTO rep_tbl VALUES("1032","77620230803","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","70000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:03:48am","","2023-08-29 12:31:58pm","undelete");
INSERT INTO rep_tbl VALUES("1033","77620230803","264038","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:03:48am","","2023-08-29 12:31:58pm","undelete");
INSERT INTO rep_tbl VALUES("1034","22220230803","231633","07509032","Ayinde Fatimo Omolabake","Ope","Ajayi Adedoyin","70000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:04:58am","","2023-08-29 12:32:04pm","undelete");
INSERT INTO rep_tbl VALUES("1035","22220230803","231633","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","2/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-03","2023-08-03 09:04:58am","","2023-08-29 12:32:04pm","undelete");
INSERT INTO rep_tbl VALUES("1036","73920230803","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment 
            2/7","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 11:29:39am","","2023-08-29 12:32:10pm","undelete");
INSERT INTO rep_tbl VALUES("1037","73920230803","675672","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","2500.00","0.00","","confirmed","Loan payment 
            2/7","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 11:29:39am","","2023-08-29 12:32:10pm","undelete");
INSERT INTO rep_tbl VALUES("1038","76420230803","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment 
                2/7","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 11:30:19am","","2023-08-29 12:32:15pm","undelete");
INSERT INTO rep_tbl VALUES("1039","76420230803","094263","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment 
                2/7","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 11:30:19am","","2023-08-29 12:32:15pm","undelete");
INSERT INTO rep_tbl VALUES("1040","39120230803","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","70000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:55:21pm","","2023-08-29 12:32:22pm","undelete");
INSERT INTO rep_tbl VALUES("1041","39120230803","763868","100129
","Loan Account","","","70000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:55:21pm","","2023-08-29 12:32:22pm","undelete");
INSERT INTO rep_tbl VALUES("1042","93320230803","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:56:22pm","","2023-08-29 12:32:30pm","undelete");
INSERT INTO rep_tbl VALUES("1043","93320230803","410460","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:56:22pm","","2023-08-29 12:32:30pm","undelete");
INSERT INTO rep_tbl VALUES("1044","27420230803","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","70000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:57:08pm","","2023-08-29 12:32:46pm","undelete");
INSERT INTO rep_tbl VALUES("1045","27420230803","094263","100129
","Loan Account","","","70000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:57:08pm","","2023-08-29 12:32:46pm","undelete");
INSERT INTO rep_tbl VALUES("1046","25020230803","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:57:37pm","","2023-08-29 12:32:51pm","undelete");
INSERT INTO rep_tbl VALUES("1047","25020230803","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-03","2023-08-03 02:57:37pm","","2023-08-29 12:32:51pm","undelete");
INSERT INTO rep_tbl VALUES("1048","34120230804","630840","23945978","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","70000.00","30000.00","0.00","36000.00","9500.00","0.00","9500.00","Credit","confirmed","Loan payment 
        3/7","Sanni Bukola","Omolayo Funmilayo","2023-08-04","2023-08-04 11:24:57am","","2023-08-29 12:32:57pm","undelete");
INSERT INTO rep_tbl VALUES("1049","34120230804","630840","100129
","Loan Account","","","70000.00","30000.00","0.00","36000.00","","9500.00","0.00","","confirmed","Loan payment 
        3/7","Sanni Bukola","Omolayo Funmilayo","2023-08-04","2023-08-04 11:24:57am","","2023-08-29 12:32:57pm","undelete");
INSERT INTO rep_tbl VALUES("1052","","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1053","","005778","27706810","Babatunde Bidemi Bukola","Iya koko","Oyaosho Folakemi","30000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-02","","","","undelete");
INSERT INTO rep_tbl VALUES("1054","","922803","58073951","Jimoh Bola Risikatu","Chemist","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-02","","","","undelete");
INSERT INTO rep_tbl VALUES("1055","","268816","79132516","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-02","","","","undelete");
INSERT INTO rep_tbl VALUES("1056","24520230808","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:43:50am","","2023-08-29 12:33:03pm","undelete");
INSERT INTO rep_tbl VALUES("1057","24520230808","675672","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:43:50am","","2023-08-29 12:33:03pm","undelete");
INSERT INTO rep_tbl VALUES("1058","69320230808","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:53:29am","","2023-08-29 12:33:09pm","undelete");
INSERT INTO rep_tbl VALUES("1059","69320230808","073345","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:53:29am","","2023-08-29 12:33:09pm","undelete");
INSERT INTO rep_tbl VALUES("1060","51120230808","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:57:17am","","2023-08-29 12:33:15pm","undelete");
INSERT INTO rep_tbl VALUES("1061","51120230808","094263","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:57:17am","","2023-08-29 12:33:15pm","undelete");
INSERT INTO rep_tbl VALUES("1062","58420230808","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:59:38am","","2023-08-29 12:46:14pm","undelete");
INSERT INTO rep_tbl VALUES("1063","58420230808","410460","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 08:59:38am","","2023-08-29 12:46:14pm","undelete");
INSERT INTO rep_tbl VALUES("1064","35220230808","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","30000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 09:03:28am","","2023-08-29 12:46:22pm","undelete");
INSERT INTO rep_tbl VALUES("1065","35220230808","763868","100129
","Loan Account","","","30000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 09:03:28am","","2023-08-29 12:46:22pm","undelete");
INSERT INTO rep_tbl VALUES("1066","69320230808","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 09:14:00am","","2023-08-29 12:33:09pm","undelete");
INSERT INTO rep_tbl VALUES("1067","69320230808","237689","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-08","2023-08-08 09:14:00am","","2023-08-29 12:33:09pm","undelete");
INSERT INTO rep_tbl VALUES("1068","10520230809","801029","12553123","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","30000.00","60000.00","0.00","72000.00","4500.00","0.00","4500.00","Credit","confirmed","9/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-09","2023-08-09 05:22:10pm","","2023-08-29 12:46:28pm","undelete");
INSERT INTO rep_tbl VALUES("1069","10520230809","801029","100129
","Loan Account","","","30000.00","60000.00","0.00","72000.00","","4500.00","0.00","","confirmed","9/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-09","2023-08-09 05:22:10pm","","2023-08-29 12:46:28pm","undelete");
INSERT INTO rep_tbl VALUES("1070","","801029","36462547","Ogunkanbi Ishola ","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1071","","383250","79479093","Kafayat Shobwale Iya mary","Esther","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1072","","491180","67368103","Adegunle Adefunke ","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1073","","113886","80848852","Amidu Oladeso Hammed","Mariam","Oyaosho Folakemi","60000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1074","","212692","79571717","Olulola grace joy","Temitope","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1075","","630840","93690702","Tajubello Adijat ","TAJU BELLO","Omolayo Funmilayo","30000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1076","","865242","18494497","Solalo juliana chinyere","Chinyere","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1077","","700203","58932579","Oginni Bose Ayodeji","Iya koko","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1078","","450220","40290924","Badmus Jamiu ","Oremeta","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1079","10920230811","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","Loan payment 
    8/8","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:07:11am","","2023-08-29 12:46:34pm","undelete");
INSERT INTO rep_tbl VALUES("1080","10920230811","807462","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","Loan payment 
    8/8","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:07:11am","","2023-08-29 12:46:34pm","undelete");
INSERT INTO rep_tbl VALUES("1081","35020230811","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:09:12am","","2023-08-29 12:46:40pm","undelete");
INSERT INTO rep_tbl VALUES("1082","35020230811","410460","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:09:12am","","2023-08-29 12:46:40pm","undelete");
INSERT INTO rep_tbl VALUES("1083","63020230811","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:10:44am","","2023-08-29 12:46:47pm","undelete");
INSERT INTO rep_tbl VALUES("1084","63020230811","094263","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:10:44am","","2023-08-29 12:46:47pm","undelete");
INSERT INTO rep_tbl VALUES("1085","24420230811","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","30000.00","40000.00","0.00","48000.00","8000.00","0.00","8000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:23:31am","","2023-08-29 12:46:55pm","undelete");
INSERT INTO rep_tbl VALUES("1086","24420230811","630840","100129
","Loan Account","","","30000.00","40000.00","0.00","48000.00","","8000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:23:31am","","2023-08-29 12:46:55pm","undelete");
INSERT INTO rep_tbl VALUES("1087","91620230811","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:26:15am","","2023-08-30 10:14:02am","undelete");
INSERT INTO rep_tbl VALUES("1088","91620230811","237689","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","10000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:26:15am","","2023-08-30 10:14:02am","undelete");
INSERT INTO rep_tbl VALUES("1089","84120230811","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:27:57am","","2023-08-30 10:14:20am","undelete");
INSERT INTO rep_tbl VALUES("1090","84120230811","675672","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-11","2023-08-11 09:27:57am","","2023-08-30 10:14:20am","undelete");
INSERT INTO rep_tbl VALUES("1091","47720230815","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:50:26pm","","2023-08-30 10:14:32am","undelete");
INSERT INTO rep_tbl VALUES("1092","47720230815","094263","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:50:26pm","","2023-08-30 10:14:32am","undelete");
INSERT INTO rep_tbl VALUES("1093","48920230815","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:51:24pm","","2023-08-30 10:14:44am","undelete");
INSERT INTO rep_tbl VALUES("1094","48920230815","410460","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:51:24pm","","2023-08-30 10:14:44am","undelete");
INSERT INTO rep_tbl VALUES("1095","88320230815","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","8000.00","0.00","8000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:53:20pm","","2023-08-30 10:14:55am","undelete");
INSERT INTO rep_tbl VALUES("1096","88320230815","237689","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","8000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:53:20pm","","2023-08-30 10:14:55am","undelete");
INSERT INTO rep_tbl VALUES("1097","60120230815","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:55:03pm","","2023-08-30 10:15:04am","undelete");
INSERT INTO rep_tbl VALUES("1098","60120230815","073345","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:55:03pm","","2023-08-30 10:15:04am","undelete");
INSERT INTO rep_tbl VALUES("1099","50820230815","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","30000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:56:23pm","","2023-08-30 10:15:15am","undelete");
INSERT INTO rep_tbl VALUES("1100","50820230815","807462","100129
","Loan Account","","","30000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 03:56:23pm","","2023-08-30 10:15:15am","undelete");
INSERT INTO rep_tbl VALUES("1101","37020230815","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","30000.00","40000.00","0.00","48000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 04:21:48pm","","2023-08-30 10:15:25am","undelete");
INSERT INTO rep_tbl VALUES("1102","37020230815","630840","100129
","Loan Account","","","30000.00","40000.00","0.00","48000.00","","10000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-15","2023-08-15 04:21:48pm","","2023-08-30 10:15:25am","undelete");
INSERT INTO rep_tbl VALUES("1103","31820230817","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment 
                      16/8","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:04:55pm","","2023-08-30 10:15:46am","undelete");
INSERT INTO rep_tbl VALUES("1104","31820230817","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment 
                      16/8","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:04:55pm","","2023-08-30 10:15:46am","undelete");
INSERT INTO rep_tbl VALUES("1105","90720230817","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment 
             16/8","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:06:02pm","","2023-08-30 10:15:58am","undelete");
INSERT INTO rep_tbl VALUES("1106","90720230817","630840","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","Loan payment 
             16/8","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:06:02pm","","2023-08-30 10:15:58am","undelete");
INSERT INTO rep_tbl VALUES("1107","77420230817","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:07:53pm","","2023-08-30 10:16:08am","undelete");
INSERT INTO rep_tbl VALUES("1108","77420230817","410460","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:07:53pm","","2023-08-30 10:16:08am","undelete");
INSERT INTO rep_tbl VALUES("1109","37220230817","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:09:35pm","","2023-08-30 10:16:17am","undelete");
INSERT INTO rep_tbl VALUES("1110","37220230817","094263","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-17","2023-08-17 01:09:35pm","","2023-08-30 10:16:17am","undelete");
INSERT INTO rep_tbl VALUES("1111","77920230822","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-22","2023-08-22 11:56:44am","","2023-08-30 10:16:27am","undelete");
INSERT INTO rep_tbl VALUES("1112","77920230822","094263","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-22","2023-08-22 11:56:44am","","2023-08-30 10:16:27am","undelete");
INSERT INTO rep_tbl VALUES("1113","59520230822","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-22","2023-08-22 11:57:40am","","2023-08-30 10:16:37am","undelete");
INSERT INTO rep_tbl VALUES("1114","59520230822","410460","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-22","2023-08-22 11:57:40am","","2023-08-30 10:16:37am","undelete");
INSERT INTO rep_tbl VALUES("1115","97120230823","154758","25397733","Abanise Titilayo","Precious","Ajayi Adedoyin","50000.00","70000.00","0.00","84000.00","84000.00","0.00","84000.00","Credit","confirmed","28/7/23
23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-23","2023-08-23 05:29:52pm","","2023-08-30 10:16:51am","undelete");
INSERT INTO rep_tbl VALUES("1116","97120230823","154758","100129
","Loan Account","","","50000.00","70000.00","0.00","84000.00","","84000.00","0.00","","confirmed","28/7/23
23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-23","2023-08-23 05:29:52pm","","2023-08-30 10:16:51am","undelete");
INSERT INTO rep_tbl VALUES("1117","93420230823","154758","25397733","Abanise Titilayo","Precious","Ajayi Adedoyin","50000.00","70000.00","0.00","84000.00","14000.00","0.00","14000.00","Credit","confirmed","23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-23","2023-08-23 05:31:15pm","","2023-08-30 10:17:09am","undelete");
INSERT INTO rep_tbl VALUES("1118","93420230823","154758","100129
","Loan Account","","","50000.00","70000.00","0.00","84000.00","","14000.00","0.00","","confirmed","23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-08-23","2023-08-23 05:31:15pm","","2023-08-30 10:17:09am","undelete");
INSERT INTO rep_tbl VALUES("1119","15520230825","675672","65988410","Adufe Olabayo","Adufe","Omolayo Funmilayo","50000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:01:31pm","","2023-08-30 10:17:20am","undelete");
INSERT INTO rep_tbl VALUES("1120","15520230825","675672","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:01:31pm","","2023-08-30 10:17:20am","undelete");
INSERT INTO rep_tbl VALUES("1121","17420230825","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","12000.00","0.00","12000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:03:03pm","","2023-08-30 10:17:30am","undelete");
INSERT INTO rep_tbl VALUES("1122","17420230825","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","12000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:03:03pm","","2023-08-30 10:17:30am","undelete");
INSERT INTO rep_tbl VALUES("1123","29120230825","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:04:48pm","","2023-08-30 10:17:49am","undelete");
INSERT INTO rep_tbl VALUES("1124","29120230825","410460","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:04:48pm","","2023-08-30 10:17:49am","undelete");
INSERT INTO rep_tbl VALUES("1125","54520230825","094263","46191601","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","3500.00","0.00","3500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:06:04pm","","2023-08-30 10:18:05am","undelete");
INSERT INTO rep_tbl VALUES("1126","54520230825","094263","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","3500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:06:04pm","","2023-08-30 10:18:05am","undelete");
INSERT INTO rep_tbl VALUES("1127","18420230825","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","11500.00","0.00","11500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:07:20pm","","2023-08-30 10:18:19am","undelete");
INSERT INTO rep_tbl VALUES("1128","18420230825","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","11500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:07:20pm","","2023-08-30 10:18:19am","undelete");
INSERT INTO rep_tbl VALUES("1129","27620230825","807462","10648796","Gordon Kelechi Uchendu","UCHENDU","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:08:05pm","","2023-08-30 10:18:34am","undelete");
INSERT INTO rep_tbl VALUES("1130","27620230825","807462","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-25","2023-08-25 02:08:05pm","","2023-08-30 10:18:34am","undelete");
INSERT INTO rep_tbl VALUES("1131","","469928","86543248","Samson Latifat Abiodun","Okiki","Alago Chidera","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-07-28","","","","undelete");
INSERT INTO rep_tbl VALUES("1132","","763868","34175099","Ajiboye Iyabo ","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1352","46920230907","482965","96828719","Adebayo Kudirat Tanwa","Semilore","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","4000.00","0.00","4000.00","Credit","confirmed","31/8/23
6/9/23","Sanni Bukola","Shoyebi Folashade","2023-09-07","2023-09-07 10:16:47am","","2023-09-12 10:44:26am","undelete");
INSERT INTO rep_tbl VALUES("1133","40520230829","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","7000.00","0.00","7000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:40:17pm","","2023-08-30 10:18:46am","undelete");
INSERT INTO rep_tbl VALUES("1134","40520230829","630840","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","7000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:40:17pm","","2023-08-30 10:18:46am","undelete");
INSERT INTO rep_tbl VALUES("1135","36520230829","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:43:01pm","","2023-08-30 10:18:57am","undelete");
INSERT INTO rep_tbl VALUES("1136","36520230829","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:43:01pm","","2023-08-30 10:18:57am","undelete");
INSERT INTO rep_tbl VALUES("1137","83120230829","410460","66119281","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:44:01pm","","2023-08-30 10:19:08am","undelete");
INSERT INTO rep_tbl VALUES("1138","83120230829","410460","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:44:01pm","","2023-08-30 10:19:08am","undelete");
INSERT INTO rep_tbl VALUES("1139","92820230829","763868","34175099","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:46:32pm","","2023-08-30 10:19:19am","undelete");
INSERT INTO rep_tbl VALUES("1140","92820230829","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-08-29","2023-08-29 01:46:32pm","","2023-08-30 10:19:19am","undelete");
INSERT INTO rep_tbl VALUES("1141","","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1142","","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-17","","","","undelete");
INSERT INTO rep_tbl VALUES("1143","","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-17","","","","undelete");
INSERT INTO rep_tbl VALUES("1144","","405947","19252828","Akinboni Adenike ","Oke Ayo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-17","","","","undelete");
INSERT INTO rep_tbl VALUES("1145","","229704","27228517","Babatunde Olusegun ","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-17","","","","undelete");
INSERT INTO rep_tbl VALUES("1146","","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-17","","","","undelete");
INSERT INTO rep_tbl VALUES("1147","","157714","59888985","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-18","","","","undelete");
INSERT INTO rep_tbl VALUES("1148","","094263","36501323","Umaru Rahimat ","UMARU","Omolayo Funmilayo","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-24","","","","undelete");
INSERT INTO rep_tbl VALUES("1149","","154758","44641723","Abanise Titilayo ","Precious","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-24","","","","undelete");
INSERT INTO rep_tbl VALUES("1150","","431332","43704057","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","80000.00","0.00","0.00","0.00","0.00","0.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-25","","","","undelete");
INSERT INTO rep_tbl VALUES("1151","","703115","39383208","Babarinde Florence Biodun","Florence","","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-27","","","","undelete");
INSERT INTO rep_tbl VALUES("1152","","972953","09783134","Oladejo Mariam Abioun","Mariam","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-27","","","","undelete");
INSERT INTO rep_tbl VALUES("1153","","914877","23230154","Kareem Olawale Abiodun","ALUBA","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1154","","115526","01324314","Balogun Sekinat ","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1155","37820230901","113886","80848852","Amidu Oladeso Hammed","Mariam","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","60000.00","0.00","60000.00","Credit","confirmed","28/7/23
31/8/23","Sanni Bukola","Oyaosho Folakemi","2023-09-01","2023-09-01 10:28:43am","","2023-09-01 11:03:39am","undelete");
INSERT INTO rep_tbl VALUES("1156","37820230901","113886","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","60000.00","0.00","","confirmed","28/7/23
31/8/23","Sanni Bukola","Oyaosho Folakemi","2023-09-01","2023-09-01 10:28:43am","","2023-09-01 11:03:39am","undelete");
INSERT INTO rep_tbl VALUES("1157","","309260","01040775","Adeola Adeniyi Iyanu","Mariam","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1158","","434642","07686976","Babatunde Kemi Tayo","kemi","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1159","11620230901","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:00:26pm","","2023-09-01 05:38:04pm","undelete");
INSERT INTO rep_tbl VALUES("1160","11620230901","630840","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:00:26pm","","2023-09-01 05:38:04pm","undelete");
INSERT INTO rep_tbl VALUES("1161","47220230901","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","60000.00","60000.00","0.00","72000.00","15000.00","0.00","15000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:03:18pm","","2023-09-01 05:38:31pm","undelete");
INSERT INTO rep_tbl VALUES("1162","47220230901","094263","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","15000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:03:18pm","","2023-09-01 05:38:31pm","undelete");
INSERT INTO rep_tbl VALUES("1163","49320230901","073345","30834607","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:05:46pm","","2023-09-01 05:40:14pm","undelete");
INSERT INTO rep_tbl VALUES("1164","49320230901","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:05:46pm","","2023-09-01 05:40:14pm","undelete");
INSERT INTO rep_tbl VALUES("1165","16220230901","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:06:55pm","","2023-09-01 05:40:27pm","undelete");
INSERT INTO rep_tbl VALUES("1166","16220230901","409067","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:06:55pm","","2023-09-01 05:40:27pm","undelete");
INSERT INTO rep_tbl VALUES("1167","30720230901","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:09:43pm","","2023-09-01 05:41:36pm","undelete");
INSERT INTO rep_tbl VALUES("1168","30720230901","115526","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:09:43pm","","2023-09-01 05:41:36pm","undelete");
INSERT INTO rep_tbl VALUES("1169","33520230901","763868","34175099","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:11:54pm","","2023-09-01 05:41:49pm","undelete");
INSERT INTO rep_tbl VALUES("1170","33520230901","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-01","2023-09-01 01:11:54pm","","2023-09-01 05:41:49pm","undelete");
INSERT INTO rep_tbl VALUES("1171","","642032","02573935","Yekini Aweda ","Ilerioluwa","","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1172","","723508","83872455","Famuyiwa Lola ","Arike","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1173","89620230901","268816","79132516","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","31500.00","0.00","31500.00","Credit","confirmed","3/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-01","2023-09-01 05:44:33pm","","2023-09-05 12:18:37pm","undelete");
INSERT INTO rep_tbl VALUES("1174","89620230901","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","31500.00","0.00","","confirmed","3/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-01","2023-09-01 05:44:33pm","","2023-09-05 12:18:37pm","undelete");
INSERT INTO rep_tbl VALUES("1175","","261145","81725142","Fayemi Temitope Elizabeth","Genesis","Oyaosho Folakemi","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1176","37120230904","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","27000.00","0.00","27000.00","Credit","confirmed","3/8323
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:04:04am","","2023-09-05 12:19:01pm","undelete");
INSERT INTO rep_tbl VALUES("1177","37120230904","011570","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","27000.00","0.00","","confirmed","3/8323
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:04:04am","","2023-09-05 12:19:01pm","undelete");
INSERT INTO rep_tbl VALUES("1178","38820230904","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","15000.00","0.00","15000.00","Credit","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:06:46am","","2023-09-05 12:19:19pm","undelete");
INSERT INTO rep_tbl VALUES("1179","38820230904","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","15000.00","0.00","","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:06:46am","","2023-09-05 12:19:19pm","undelete");
INSERT INTO rep_tbl VALUES("1180","63920230904","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","15000.00","0.00","15000.00","Credit","confirmed","18/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:09:43am","","2023-09-05 12:19:34pm","undelete");
INSERT INTO rep_tbl VALUES("1181","63920230904","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","15000.00","0.00","","confirmed","18/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:09:43am","","2023-09-05 12:19:34pm","undelete");
INSERT INTO rep_tbl VALUES("1182","44020230904","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","15000.00","0.00","15000.00","Credit","confirmed","14/8/23
21/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:11:56am","","2023-09-05 12:20:01pm","undelete");
INSERT INTO rep_tbl VALUES("1183","44020230904","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","15000.00","0.00","","confirmed","14/8/23
21/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:11:56am","","2023-09-05 12:20:01pm","undelete");
INSERT INTO rep_tbl VALUES("1184","35220230904","559552","10340510","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","50000.00","150000.00","0.00","180000.00","102500.00","0.00","102500.00","Credit","confirmed","31/7/23                          
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:15:44am","","2023-09-05 12:20:18pm","undelete");
INSERT INTO rep_tbl VALUES("1185","35220230904","559552","100129
","Loan Account","","","50000.00","150000.00","0.00","180000.00","","102500.00","0.00","","confirmed","31/7/23                          
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:15:44am","","2023-09-05 12:20:18pm","undelete");
INSERT INTO rep_tbl VALUES("1186","45620230904","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","50000.00","100000.00","0.00","120000.00","38000.00","0.00","38000.00","Credit","confirmed","1/8/23
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:23:43am","","2023-09-05 12:20:51pm","undelete");
INSERT INTO rep_tbl VALUES("1187","45620230904","862111","100129
","Loan Account","","","50000.00","100000.00","0.00","120000.00","","38000.00","0.00","","confirmed","1/8/23
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:23:43am","","2023-09-05 12:20:51pm","undelete");
INSERT INTO rep_tbl VALUES("1188","81620230904","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","7000.00","0.00","7000.00","Credit","confirmed","4/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:25:00am","","2023-09-05 12:21:08pm","undelete");
INSERT INTO rep_tbl VALUES("1189","81620230904","111652","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","7000.00","0.00","","confirmed","4/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:25:00am","","2023-09-05 12:21:08pm","undelete");
INSERT INTO rep_tbl VALUES("1190","19320230904","111652","34762398","Osere Amudat Yetunde","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","5000.00","0.00","5000.00","Credit","confirmed","21/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:25:26am","","2023-09-05 12:21:28pm","undelete");
INSERT INTO rep_tbl VALUES("1191","19320230904","111652","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","5000.00","0.00","","confirmed","21/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:25:26am","","2023-09-05 12:21:28pm","undelete");
INSERT INTO rep_tbl VALUES("1192","11920230904","932701","03130283","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","24/7/2023
31/8/2023","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:26:04am","","2023-09-05 12:21:42pm","undelete");
INSERT INTO rep_tbl VALUES("1193","11920230904","932701","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","24/7/2023
31/8/2023","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:26:04am","","2023-09-05 12:21:42pm","undelete");
INSERT INTO rep_tbl VALUES("1194","80820230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","17000.00","0.00","17000.00","Credit","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:28:34am","","2023-09-05 12:22:23pm","undelete");
INSERT INTO rep_tbl VALUES("1195","80820230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","17000.00","0.00","","confirmed","17/7/23
24/7/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:28:34am","","2023-09-05 12:22:23pm","undelete");
INSERT INTO rep_tbl VALUES("1196","17720230904","932701","03130283","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","0.00","0.00","Credit","confirmed","","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:29:19am","","2023-09-05 12:23:09pm","undelete");
INSERT INTO rep_tbl VALUES("1197","17720230904","932701","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","0.00","0.00","","confirmed","","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:29:19am","","2023-09-05 12:23:09pm","undelete");
INSERT INTO rep_tbl VALUES("1198","94820230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","3000.00","0.00","3000.00","Credit","confirmed","3/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:29:40am","","2023-09-05 12:23:24pm","undelete");
INSERT INTO rep_tbl VALUES("1199","94820230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","3000.00","0.00","","confirmed","3/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:29:40am","","2023-09-05 12:23:24pm","undelete");
INSERT INTO rep_tbl VALUES("1200","86820230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","3000.00","0.00","3000.00","Credit","confirmed","7/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:30:05am","","2023-09-05 12:23:39pm","undelete");
INSERT INTO rep_tbl VALUES("1201","86820230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","3000.00","0.00","","confirmed","7/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:30:05am","","2023-09-05 12:23:39pm","undelete");
INSERT INTO rep_tbl VALUES("1202","45120230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","7000.00","0.00","7000.00","Credit","confirmed","10/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:30:38am","","2023-09-05 12:23:54pm","undelete");
INSERT INTO rep_tbl VALUES("1203","45120230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","7000.00","0.00","","confirmed","10/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:30:38am","","2023-09-05 12:23:54pm","undelete");
INSERT INTO rep_tbl VALUES("1204","94420230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","5000.00","0.00","5000.00","Credit","confirmed","23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:31:10am","","2023-09-05 12:24:07pm","undelete");
INSERT INTO rep_tbl VALUES("1205","94420230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","5000.00","0.00","","confirmed","23/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:31:10am","","2023-09-05 12:24:07pm","undelete");
INSERT INTO rep_tbl VALUES("1206","27420230904","400080","00084308","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","50000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","25/8/23
29/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:31:46am","","2023-09-05 12:24:21pm","undelete");
INSERT INTO rep_tbl VALUES("1207","27420230904","400080","100129
","Loan Account","","","50000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","25/8/23
29/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:31:46am","","2023-09-05 12:24:21pm","undelete");
INSERT INTO rep_tbl VALUES("1208","13720230904","932701","03130283","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","0.00","0.00","Credit","confirmed","Loan payment","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:32:49am","","2023-09-05 12:25:58pm","undelete");
INSERT INTO rep_tbl VALUES("1209","13720230904","932701","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","0.00","0.00","","confirmed","Loan payment","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 10:32:49am","","2023-09-05 12:25:58pm","undelete");
INSERT INTO rep_tbl VALUES("1567","96520231005","355438","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:29:10pm","","2023-10-06 03:33:15pm","undelete");
INSERT INTO rep_tbl VALUES("1565","93520231005","094263","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","15000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:27:49pm","","2023-10-06 03:33:20pm","undelete");
INSERT INTO rep_tbl VALUES("1563","75620230929","559552","100129
","Loan Account","","","40000.00","150000.00","0.00","180000.00","","32500.00","0.00","","confirmed","11/9/23
29/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-29","2023-09-29 03:38:55pm","","2023-10-06 03:33:26pm","undelete");
INSERT INTO rep_tbl VALUES("1216","95820230904","431332","43704057","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","80000.00","0.00","0.00","0.00","16000.00","0.00","16000.00","Credit","confirmed","28/8/23
31/823","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:44:03am","","2023-09-05 12:26:54pm","undelete");
INSERT INTO rep_tbl VALUES("1217","95820230904","431332","100129
","Loan Account","","","80000.00","0.00","0.00","0.00","","16000.00","0.00","","confirmed","28/8/23
31/823","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:44:03am","","2023-09-05 12:26:54pm","undelete");
INSERT INTO rep_tbl VALUES("1218","55220230904","157714","59888985","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","31500.00","0.00","31500.00","Credit","confirmed","21/823
31/823","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:45:44am","","2023-09-05 12:27:07pm","undelete");
INSERT INTO rep_tbl VALUES("1219","55220230904","157714","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","31500.00","0.00","","confirmed","21/823
31/823","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:45:44am","","2023-09-05 12:27:07pm","undelete");
INSERT INTO rep_tbl VALUES("1220","41220230904","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","12000.00","0.00","12000.00","Credit","confirmed","31/723
30/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:48:24am","","2023-09-05 12:27:20pm","undelete");
INSERT INTO rep_tbl VALUES("1221","41220230904","555148","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","12000.00","0.00","","confirmed","31/723
30/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:48:24am","","2023-09-05 12:27:20pm","undelete");
INSERT INTO rep_tbl VALUES("1222","17020230904","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","20/8/23
24/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:51:01am","","2023-09-05 12:27:34pm","undelete");
INSERT INTO rep_tbl VALUES("1223","17020230904","555148","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","20/8/23
24/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:51:01am","","2023-09-05 12:27:34pm","undelete");
INSERT INTO rep_tbl VALUES("1224","70820230904","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","25000.00","0.00","25000.00","Credit","confirmed","21/8/23
1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:53:49am","","2023-09-05 12:27:47pm","undelete");
INSERT INTO rep_tbl VALUES("1225","70820230904","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","25000.00","0.00","","confirmed","21/8/23
1/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:53:49am","","2023-09-05 12:27:47pm","undelete");
INSERT INTO rep_tbl VALUES("1226","34420230904","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","26000.00","0.00","26000.00","Credit","confirmed","14/8/23
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:56:35am","","2023-09-05 12:27:59pm","undelete");
INSERT INTO rep_tbl VALUES("1227","34420230904","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","26000.00","0.00","","confirmed","14/8/23
31/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:56:35am","","2023-09-05 12:27:59pm","undelete");
INSERT INTO rep_tbl VALUES("1228","93720230904","264038","58536249","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","13500.00","0.00","13500.00","Credit","confirmed","9/8923
18/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:58:47am","","2023-09-05 12:28:13pm","undelete");
INSERT INTO rep_tbl VALUES("1229","93720230904","264038","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","13500.00","0.00","","confirmed","9/8923
18/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 10:58:47am","","2023-09-05 12:28:13pm","undelete");
INSERT INTO rep_tbl VALUES("1230","73420230904","405947","19252828","Akinboni Adenike","Oke Ayo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","13500.00","0.00","13500.00","Credit","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:01:22am","","2023-09-05 12:28:27pm","undelete");
INSERT INTO rep_tbl VALUES("1231","73420230904","405947","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","13500.00","0.00","","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:01:22am","","2023-09-05 12:28:27pm","undelete");
INSERT INTO rep_tbl VALUES("1232","30820230904","844684","40771507","Nnamdi Sabastine Samuel","Nnamdi","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","40000.00","0.00","40000.00","Credit","confirmed","31/7/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:03:08am","","2023-09-05 12:28:42pm","undelete");
INSERT INTO rep_tbl VALUES("1233","30820230904","844684","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","40000.00","0.00","","confirmed","31/7/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:03:08am","","2023-09-05 12:28:42pm","undelete");
INSERT INTO rep_tbl VALUES("1234","79920230904","154758","44641723","Abanise Titilayo","Precious","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","confirmed","28/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:04:11am","","2023-09-05 12:28:54pm","undelete");
INSERT INTO rep_tbl VALUES("1235","79920230904","154758","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","confirmed","28/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 11:04:11am","","2023-09-05 12:28:54pm","undelete");
INSERT INTO rep_tbl VALUES("1236","38820230904","763868","34175099","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 02:33:50pm","","2023-09-05 12:19:19pm","undelete");
INSERT INTO rep_tbl VALUES("1237","38820230904","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 02:33:50pm","","2023-09-05 12:19:19pm","undelete");
INSERT INTO rep_tbl VALUES("1238","54020230904","261145","81725142","Fayemi Temitope Elizabeth","Genesis","Oyaosho Folakemi","60000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","4/9/3032","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:25:34pm","","2023-09-05 12:29:08pm","undelete");
INSERT INTO rep_tbl VALUES("1239","54020230904","261145","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","4/9/3032","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:25:34pm","","2023-09-05 12:29:08pm","undelete");
INSERT INTO rep_tbl VALUES("1240","20420230904","471681","71876520","Lateef Risikatu Olatundun","Olatundu","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","48000.00","0.00","48000.00","Credit","confirmed","28/7/23
4/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:29:39pm","","2023-09-05 12:29:19pm","undelete");
INSERT INTO rep_tbl VALUES("1241","20420230904","471681","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","48000.00","0.00","","confirmed","28/7/23
4/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:29:39pm","","2023-09-05 12:29:19pm","undelete");
INSERT INTO rep_tbl VALUES("1242","68620230904","268816","79132516","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:44:25pm","","2023-09-05 12:29:32pm","undelete");
INSERT INTO rep_tbl VALUES("1243","68620230904","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:44:25pm","","2023-09-05 12:29:32pm","undelete");
INSERT INTO rep_tbl VALUES("1244","95220230904","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:45:19pm","","2023-09-05 12:29:45pm","undelete");
INSERT INTO rep_tbl VALUES("1245","95220230904","011570","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:45:19pm","","2023-09-05 12:29:45pm","undelete");
INSERT INTO rep_tbl VALUES("1246","65020230904","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:46:00pm","","2023-09-05 12:30:00pm","undelete");
INSERT INTO rep_tbl VALUES("1247","65020230904","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:46:00pm","","2023-09-05 12:30:00pm","undelete");
INSERT INTO rep_tbl VALUES("1248","15420230904","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:46:50pm","","2023-09-05 12:30:13pm","undelete");
INSERT INTO rep_tbl VALUES("1249","15420230904","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:46:50pm","","2023-09-05 12:30:13pm","undelete");
INSERT INTO rep_tbl VALUES("1250","66620230904","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:47:59pm","","2023-09-05 12:30:27pm","undelete");
INSERT INTO rep_tbl VALUES("1251","66620230904","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:47:59pm","","2023-09-05 12:30:27pm","undelete");
INSERT INTO rep_tbl VALUES("1252","76120230904","431332","43704057","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","80000.00","0.00","0.00","0.00","4000.00","0.00","4000.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:48:35pm","","2023-09-05 12:30:40pm","undelete");
INSERT INTO rep_tbl VALUES("1253","76120230904","431332","100129
","Loan Account","","","80000.00","0.00","0.00","0.00","","4000.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:48:35pm","","2023-09-05 12:30:40pm","undelete");
INSERT INTO rep_tbl VALUES("1254","63420230904","157714","59888985","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:49:15pm","","2023-09-05 12:30:54pm","undelete");
INSERT INTO rep_tbl VALUES("1255","63420230904","157714","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 03:49:15pm","","2023-09-05 12:30:54pm","undelete");
INSERT INTO rep_tbl VALUES("1256","70920230904","803138","29656504","Qudril Mariam Temitope","Toyin","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","30/8/23
4/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:49:40pm","","2023-09-05 12:31:06pm","undelete");
INSERT INTO rep_tbl VALUES("1257","70920230904","803138","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","30/8/23
4/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 03:49:40pm","","2023-09-05 12:31:06pm","undelete");
INSERT INTO rep_tbl VALUES("1258","73320230904","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 03:56:40pm","","2023-09-05 12:31:17pm","undelete");
INSERT INTO rep_tbl VALUES("1259","73320230904","115526","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 03:56:40pm","","2023-09-05 12:31:17pm","undelete");
INSERT INTO rep_tbl VALUES("1260","73020230904","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","50000.00","70000.00","0.00","84000.00","41000.00","0.00","41000.00","Credit","confirmed","3/8/23
4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:04:10pm","","2023-09-05 12:31:29pm","undelete");
INSERT INTO rep_tbl VALUES("1261","73020230904","552927","100129
","Loan Account","","","50000.00","70000.00","0.00","84000.00","","41000.00","0.00","","confirmed","3/8/23
4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:04:10pm","","2023-09-05 12:31:29pm","undelete");
INSERT INTO rep_tbl VALUES("1262","78720230904","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 04:04:44pm","","2023-09-05 12:31:40pm","undelete");
INSERT INTO rep_tbl VALUES("1263","78720230904","115526","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-04","2023-09-04 04:04:44pm","","2023-09-05 12:31:40pm","undelete");
INSERT INTO rep_tbl VALUES("1264","92420230904","229704","27228517","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","25000.00","0.00","25000.00","Credit","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:09:16pm","","2023-09-05 12:31:53pm","undelete");
INSERT INTO rep_tbl VALUES("1265","92420230904","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","25000.00","0.00","","confirmed","21/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:09:16pm","","2023-09-05 12:31:53pm","undelete");
INSERT INTO rep_tbl VALUES("1266","95020230904","803138","29656504","Qudril Mariam Temitope","Toyin","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","1500.00","0.00","1500.00","Credit","confirmed","22/5/23
21/6/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 04:14:37pm","","2023-09-05 12:32:05pm","undelete");
INSERT INTO rep_tbl VALUES("1267","95020230904","803138","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","1500.00","0.00","","confirmed","22/5/23
21/6/23","Sanni Bukola","Oyaosho Folakemi","2023-09-04","2023-09-04 04:14:37pm","","2023-09-05 12:32:05pm","undelete");
INSERT INTO rep_tbl VALUES("1268","95720230904","491180","67368103","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","40000.00","0.00","40000.00","Credit","confirmed","9/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:17:55pm","","2023-09-05 12:32:19pm","undelete");
INSERT INTO rep_tbl VALUES("1269","95720230904","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","40000.00","0.00","","confirmed","9/8/23
1/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-04","2023-09-04 04:17:55pm","","2023-09-05 12:32:19pm","undelete");
INSERT INTO rep_tbl VALUES("1270","","128919","43282482","Adisa Nofisat morenikeji","Princess","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1271","","410460","77573768","Olajide Emmanuel ","UMARU","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-01","","","","undelete");
INSERT INTO rep_tbl VALUES("1272","","362807","46820723","Adeniji Taiwo Titilope","Adeniji","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-02","","","","undelete");
INSERT INTO rep_tbl VALUES("1273","","976892","94511426","Mebel Irunkwar Kinse","Iya fufu","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-02","","","","undelete");
INSERT INTO rep_tbl VALUES("1274","","092960","24939110","Odejimi Felicia Tosin","Felicia","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1275","","752410","81101205","Okorie gift oyinye","Good market","Oyaosho Folakemi","200000.00","200000.00","0.00","240000.00","0.00","240000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1276","","700203","00283220","Oginni Bose Ayodeji","Iya koko","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1277","","144137","38893856","Osunpidan lola ","Iya kola","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1278","","491909","17043552","Daramola Adeniyi joseph","Yaba","","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1279","","186539","64537657","Odoro Rita ","Boluwatife","Shoyebi Folashade","40000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1280","","795502","33394177","Fatimo Ayandele ","Boluwatife","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1281","","113886","79494208","Amidu Oladeso Hammed","Mariam","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1282","","073345","87291825","Adedeji Fatimo ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1283","","471681","87842615","Lateef Risikatu Olatundun","Olatundu","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1284","","274284","12459835","Ã€yedun Funke ","Ayedun","Shoyebi Folashade","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1285","","478137","43820868","Ojurongbe Kemi ","Ayedun","Shoyebi Folashade","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1566","96520231005","355438","05631946","Adebayo Adeola","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:29:10pm","","2023-10-06 03:33:15pm","undelete");
INSERT INTO rep_tbl VALUES("1564","93520231005","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","40000.00","60000.00","0.00","72000.00","15000.00","0.00","15000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:27:49pm","","2023-10-06 03:33:20pm","undelete");
INSERT INTO rep_tbl VALUES("1562","75620230929","559552","10340510","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","40000.00","150000.00","0.00","180000.00","32500.00","0.00","32500.00","Credit","confirmed","11/9/23
29/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-29","2023-09-29 03:38:55pm","","2023-10-06 03:33:26pm","undelete");
INSERT INTO rep_tbl VALUES("1561","56320230929","559552","100129
","Loan Account","","","40000.00","150000.00","0.00","180000.00","","5000.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-29","2023-09-29 03:37:22pm","","2023-10-06 03:33:30pm","undelete");
INSERT INTO rep_tbl VALUES("1288","76220230905","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","4500.00","0.00","4500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:42:38pm","","2023-09-06 09:05:16am","undelete");
INSERT INTO rep_tbl VALUES("1289","76220230905","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","4500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:42:38pm","","2023-09-06 09:05:16am","undelete");
INSERT INTO rep_tbl VALUES("1290","27520230905","491180","67368103","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:43:12pm","","2023-09-06 09:05:26am","undelete");
INSERT INTO rep_tbl VALUES("1291","27520230905","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:43:12pm","","2023-09-06 09:05:26am","undelete");
INSERT INTO rep_tbl VALUES("1292","81520230905","559552","10340510","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","50000.00","150000.00","0.00","180000.00","7500.00","0.00","7500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:43:37pm","","2023-09-06 09:05:35am","undelete");
INSERT INTO rep_tbl VALUES("1293","81520230905","559552","100129
","Loan Account","","","50000.00","150000.00","0.00","180000.00","","7500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:43:37pm","","2023-09-06 09:05:35am","undelete");
INSERT INTO rep_tbl VALUES("1294","84420230905","431332","43704057","Jerry Ayomide Kuridat","Jerry","Ajayi Adedoyin","80000.00","0.00","0.00","0.00","4000.00","0.00","4000.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:06pm","","2023-09-06 09:05:43am","undelete");
INSERT INTO rep_tbl VALUES("1295","84420230905","431332","100129
","Loan Account","","","80000.00","0.00","0.00","0.00","","4000.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:06pm","","2023-09-06 09:05:43am","undelete");
INSERT INTO rep_tbl VALUES("1296","17620230905","157714","59888985","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","70000.00","70000.00","0.00","84000.00","3500.00","0.00","3500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:30pm","","2023-09-06 09:05:53am","undelete");
INSERT INTO rep_tbl VALUES("1297","17620230905","157714","100129
","Loan Account","","","70000.00","70000.00","0.00","84000.00","","3500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:30pm","","2023-09-06 09:05:53am","undelete");
INSERT INTO rep_tbl VALUES("1298","76020230905","552927","00304761","Olaitan Taiwo Adekemi","Eledie","Ajayi Adedoyin","50000.00","70000.00","0.00","84000.00","1000.00","0.00","1000.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:51pm","","2023-09-06 09:06:05am","undelete");
INSERT INTO rep_tbl VALUES("1299","76020230905","552927","100129
","Loan Account","","","50000.00","70000.00","0.00","84000.00","","1000.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:44:51pm","","2023-09-06 09:06:05am","undelete");
INSERT INTO rep_tbl VALUES("1300","52120230905","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:45:28pm","","2023-09-06 09:06:38am","undelete");
INSERT INTO rep_tbl VALUES("1301","52120230905","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:45:28pm","","2023-09-06 09:06:38am","undelete");
INSERT INTO rep_tbl VALUES("1302","18420230905","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:45:53pm","","2023-09-06 09:06:47am","undelete");
INSERT INTO rep_tbl VALUES("1303","18420230905","011570","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:45:53pm","","2023-09-06 09:06:47am","undelete");
INSERT INTO rep_tbl VALUES("1304","55020230905","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:46:21pm","","2023-09-06 09:06:56am","undelete");
INSERT INTO rep_tbl VALUES("1305","55020230905","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:46:21pm","","2023-09-06 09:06:56am","undelete");
INSERT INTO rep_tbl VALUES("1306","11620230905","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:46:46pm","","2023-09-06 09:07:06am","undelete");
INSERT INTO rep_tbl VALUES("1307","11620230905","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:46:46pm","","2023-09-06 09:07:06am","undelete");
INSERT INTO rep_tbl VALUES("1308","61620230905","844684","40771507","Nnamdi Sabastine Samuel","Nnamdi","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:47:10pm","","2023-09-06 09:07:14am","undelete");
INSERT INTO rep_tbl VALUES("1309","61620230905","844684","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","5/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-05","2023-09-05 03:47:10pm","","2023-09-06 09:07:14am","undelete");
INSERT INTO rep_tbl VALUES("1310","94520230905","922803","58073951","Jimoh Bola Risikatu","Chemist","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","3/8/23
5/8/23","Sanni Bukola","Oyaosho Folakemi","2023-09-05","2023-09-05 04:03:43pm","","2023-09-06 09:07:24am","undelete");
INSERT INTO rep_tbl VALUES("1311","94520230905","922803","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","3/8/23
5/8/23","Sanni Bukola","Oyaosho Folakemi","2023-09-05","2023-09-05 04:03:43pm","","2023-09-06 09:07:24am","undelete");
INSERT INTO rep_tbl VALUES("1312","82920230905","922803","58073951","Jimoh Bola Risikatu","Chemist","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","34500.00","0.00","34500.00","Credit","confirmed","Loan payment 
                      4/8/23
5/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-05","2023-09-05 04:12:34pm","","2023-09-06 09:07:31am","undelete");
INSERT INTO rep_tbl VALUES("1313","82920230905","922803","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","34500.00","0.00","","confirmed","Loan payment 
                      4/8/23
5/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-05","2023-09-05 04:12:34pm","","2023-09-06 09:07:31am","undelete");
INSERT INTO rep_tbl VALUES("1314","","922803","16429000","Jimoh Bola Risikatu","Chemist","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1315","","005778","39830049","Babatunde Bidemi Bukola","Iya koko","Oyaosho Folakemi","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1560","56320230929","559552","10340510","Omotilewa Omotope Florence","Four Square","Ajayi Adedoyin","40000.00","150000.00","0.00","180000.00","5000.00","0.00","5000.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-29","2023-09-29 03:37:22pm","","2023-10-06 03:33:30pm","undelete");
INSERT INTO rep_tbl VALUES("1316","74820230906","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:20:30am","","2023-09-12 10:44:34am","undelete");
INSERT INTO rep_tbl VALUES("1317","74820230906","115526","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:20:30am","","2023-09-12 10:44:34am","undelete");
INSERT INTO rep_tbl VALUES("1318","15720230906","763868","34175099","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:22:40am","","2023-09-12 10:44:40am","undelete");
INSERT INTO rep_tbl VALUES("1319","15720230906","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:22:40am","","2023-09-12 10:44:40am","undelete");
INSERT INTO rep_tbl VALUES("1320","20020230906","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","60000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:25:23am","","2023-09-12 10:44:46am","undelete");
INSERT INTO rep_tbl VALUES("1321","20020230906","094263","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:25:23am","","2023-09-12 10:44:46am","undelete");
INSERT INTO rep_tbl VALUES("1322","39420230906","237689","43853093","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:26:47am","","2023-09-12 10:44:52am","undelete");
INSERT INTO rep_tbl VALUES("1323","39420230906","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","10000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 09:26:47am","","2023-09-12 10:44:52am","undelete");
INSERT INTO rep_tbl VALUES("1324","25220230906","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 03:19:55pm","","2023-09-12 10:44:57am","undelete");
INSERT INTO rep_tbl VALUES("1325","25220230906","115526","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 03:19:55pm","","2023-09-12 10:44:57am","undelete");
INSERT INTO rep_tbl VALUES("1326","71920230906","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 03:20:41pm","","2023-09-12 10:45:03am","undelete");
INSERT INTO rep_tbl VALUES("1327","71920230906","410460","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-06","2023-09-06 03:20:41pm","","2023-09-12 10:45:03am","undelete");
INSERT INTO rep_tbl VALUES("1328","34520230906","268816","79132516","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:51:08pm","","2023-09-12 10:45:10am","undelete");
INSERT INTO rep_tbl VALUES("1329","34520230906","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:51:08pm","","2023-09-12 10:45:10am","undelete");
INSERT INTO rep_tbl VALUES("1330","10720230906","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:54:44pm","","2023-09-12 10:45:17am","undelete");
INSERT INTO rep_tbl VALUES("1331","10720230906","011570","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:54:44pm","","2023-09-12 10:45:17am","undelete");
INSERT INTO rep_tbl VALUES("1332","20120230906","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:57:41pm","","2023-09-12 10:45:29am","undelete");
INSERT INTO rep_tbl VALUES("1333","20120230906","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 03:57:41pm","","2023-09-12 10:45:29am","undelete");
INSERT INTO rep_tbl VALUES("1334","70820230906","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","50000.00","100000.00","0.00","120000.00","4000.00","0.00","4000.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:10:25pm","","2023-09-12 10:45:36am","undelete");
INSERT INTO rep_tbl VALUES("1335","70820230906","862111","100129
","Loan Account","","","50000.00","100000.00","0.00","120000.00","","4000.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:10:25pm","","2023-09-12 10:45:36am","undelete");
INSERT INTO rep_tbl VALUES("1336","21220230906","862111","53849776","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","50000.00","100000.00","0.00","120000.00","2000.00","0.00","2000.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:11:03pm","","2023-09-12 10:45:41am","undelete");
INSERT INTO rep_tbl VALUES("1337","21220230906","862111","100129
","Loan Account","","","50000.00","100000.00","0.00","120000.00","","2000.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:11:03pm","","2023-09-12 10:45:41am","undelete");
INSERT INTO rep_tbl VALUES("1338","39520230906","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","1500.00","0.00","1500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:12:31pm","","2023-09-12 10:45:46am","undelete");
INSERT INTO rep_tbl VALUES("1339","39520230906","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","1500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:12:31pm","","2023-09-12 10:45:46am","undelete");
INSERT INTO rep_tbl VALUES("1340","58820230906","491180","67368103","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:13:13pm","","2023-09-12 10:45:53am","undelete");
INSERT INTO rep_tbl VALUES("1341","58820230906","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:13:13pm","","2023-09-12 10:45:53am","undelete");
INSERT INTO rep_tbl VALUES("1342","95620230906","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:14:09pm","","2023-09-12 10:45:59am","undelete");
INSERT INTO rep_tbl VALUES("1343","95620230906","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:14:09pm","","2023-09-12 10:45:59am","undelete");
INSERT INTO rep_tbl VALUES("1344","50620230906","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:14:45pm","","2023-09-12 10:46:04am","undelete");
INSERT INTO rep_tbl VALUES("1345","50620230906","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:14:45pm","","2023-09-12 10:46:04am","undelete");
INSERT INTO rep_tbl VALUES("1346","72920230906","405947","19252828","Akinboni Adenike","Oke Ayo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:15:24pm","","2023-09-12 10:46:09am","undelete");
INSERT INTO rep_tbl VALUES("1347","72920230906","405947","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:15:24pm","","2023-09-12 10:46:09am","undelete");
INSERT INTO rep_tbl VALUES("1348","12720230906","229704","27228517","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:17:16pm","","2023-09-12 10:46:16am","undelete");
INSERT INTO rep_tbl VALUES("1349","12720230906","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","6/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-06","2023-09-06 04:17:16pm","","2023-09-12 10:46:16am","undelete");
INSERT INTO rep_tbl VALUES("1350","65920230907","482965","96828719","Adebayo Kudirat Tanwa","Semilore","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","40500.00","0.00","40500.00","Credit","confirmed","25/7/23
30/8/23","Sanni Bukola","Shoyebi Folashade","2023-09-07","2023-09-07 08:46:53am","","2023-09-12 10:46:20am","undelete");
INSERT INTO rep_tbl VALUES("1351","65920230907","482965","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","40500.00","0.00","","confirmed","25/7/23
30/8/23","Sanni Bukola","Shoyebi Folashade","2023-09-07","2023-09-07 08:46:53am","","2023-09-12 10:46:20am","undelete");
INSERT INTO rep_tbl VALUES("1355","62420230907","409067","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:26:18pm","","2023-09-12 10:44:20am","undelete");
INSERT INTO rep_tbl VALUES("1356","98820230907","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:26:57pm","","2023-09-12 10:46:27am","undelete");
INSERT INTO rep_tbl VALUES("1357","98820230907","410460","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:26:57pm","","2023-09-12 10:46:27am","undelete");
INSERT INTO rep_tbl VALUES("1358","87020230907","630840","93690702","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","12000.00","0.00","12000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:27:41pm","","2023-09-12 10:46:33am","undelete");
INSERT INTO rep_tbl VALUES("1359","87020230907","630840","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","12000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 02:27:41pm","","2023-09-12 10:46:33am","undelete");
INSERT INTO rep_tbl VALUES("1360","52620230907","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 03:59:39pm","","2023-09-12 10:46:38am","undelete");
INSERT INTO rep_tbl VALUES("1361","52620230907","115526","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 03:59:39pm","","2023-09-12 10:46:38am","undelete");
INSERT INTO rep_tbl VALUES("1362","87920230907","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 04:00:15pm","","2023-09-12 10:46:45am","undelete");
INSERT INTO rep_tbl VALUES("1363","87920230907","094263","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 04:00:15pm","","2023-09-12 10:46:45am","undelete");
INSERT INTO rep_tbl VALUES("1364","66620230907","763868","34175099","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 04:00:39pm","","2023-09-12 10:46:51am","undelete");
INSERT INTO rep_tbl VALUES("1365","66620230907","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-07","2023-09-07 04:00:39pm","","2023-09-12 10:46:51am","undelete");
INSERT INTO rep_tbl VALUES("1366","","025862","51333963","Emele Racheal ","Ilerioluwa","Shoyebi Folashade","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1367","","802093","15641139","Onuoha Salomey ","Ilerioluwa","Shoyebi Folashade","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1368","","545232","39488504","Obasa Funmilayo ","Boluwatife","Shoyebi Folashade","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1369","","288633","59736605","Kareem Funmilayo ","Ilerioluwa","Shoyebi Folashade","50000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1370","","452226","40520050","Kasali Rashidat ","Blossom","Shoyebi Folashade","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1371","","209507","04406588","Alabi Fausat ","Ilerioluwa","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1372","","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1373","","974743","40534925","Faboro Femi ","Divine","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1374","","847222","14905514","Ajibodu Babatunde Valentine","Valentine","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1438","56120230920","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:41:42am","","2023-09-22 08:42:25am","undelete");
INSERT INTO rep_tbl VALUES("1376","30920230913","491180","67368103","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","15000.00","0.00","15000.00","Credit","confirmed","13/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-13","2023-09-13 04:54:58pm","","2023-09-19 09:34:36am","undelete");
INSERT INTO rep_tbl VALUES("1377","30920230913","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","15000.00","0.00","","confirmed","13/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-13","2023-09-13 04:54:58pm","","2023-09-19 09:34:36am","undelete");
INSERT INTO rep_tbl VALUES("1378","70420230913","844684","40771507","Nnamdi Sabastine Samuel","Nnamdi","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","13/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-13","2023-09-13 05:06:44pm","","2023-09-19 09:34:48am","undelete");
INSERT INTO rep_tbl VALUES("1379","70420230913","844684","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","13/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-13","2023-09-13 05:06:44pm","","2023-09-19 09:34:48am","undelete");
INSERT INTO rep_tbl VALUES("1380","96620230914","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","7500.00","0.00","7500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 01:54:27pm","","2023-09-19 09:34:56am","undelete");
INSERT INTO rep_tbl VALUES("1381","96620230914","410460","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","7500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 01:54:27pm","","2023-09-19 09:34:56am","undelete");
INSERT INTO rep_tbl VALUES("1382","86820230914","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:00:06pm","","2023-09-19 09:38:42am","undelete");
INSERT INTO rep_tbl VALUES("1383","86820230914","094263","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:00:06pm","","2023-09-19 09:38:42am","undelete");
INSERT INTO rep_tbl VALUES("1384","64720230914","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","15500.00","0.00","15500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:02:25pm","","2023-09-19 09:39:32am","undelete");
INSERT INTO rep_tbl VALUES("1385","64720230914","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","15500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:02:25pm","","2023-09-19 09:39:32am","undelete");
INSERT INTO rep_tbl VALUES("1386","20720230914","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:57:53pm","","2023-09-19 09:39:39am","undelete");
INSERT INTO rep_tbl VALUES("1387","20720230914","115526","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-14","2023-09-14 02:57:53pm","","2023-09-19 09:39:39am","undelete");
INSERT INTO rep_tbl VALUES("1388","64820230915","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-15","2023-09-15 12:26:50pm","","2023-09-19 09:39:45am","undelete");
INSERT INTO rep_tbl VALUES("1389","64820230915","409067","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-15","2023-09-15 12:26:50pm","","2023-09-19 09:39:45am","undelete");
INSERT INTO rep_tbl VALUES("1390","41220230918","700203","58932579","Oginni Bose Ayodeji","Iya koko","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","11/8/2023     
15/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:13:54am","","2023-09-19 09:40:20am","undelete");
INSERT INTO rep_tbl VALUES("1391","41220230918","700203","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","11/8/2023     
15/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:13:54am","","2023-09-19 09:40:20am","undelete");
INSERT INTO rep_tbl VALUES("1392","97920230918","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","17500.00","0.00","17500.00","Credit","confirmed","7/9/23
15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 10:20:24am","","2023-09-19 09:40:29am","undelete");
INSERT INTO rep_tbl VALUES("1393","97920230918","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","17500.00","0.00","","confirmed","7/9/23
15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 10:20:24am","","2023-09-19 09:40:29am","undelete");
INSERT INTO rep_tbl VALUES("1394","42220230918","212692","79571717","Olulola grace joy","Temitope","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","4/8/23 
13/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:24:31am","","2023-09-19 09:40:35am","undelete");
INSERT INTO rep_tbl VALUES("1395","42220230918","212692","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","4/8/23 
13/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:24:31am","","2023-09-19 09:40:35am","undelete");
INSERT INTO rep_tbl VALUES("1396","74620230918","703115","39383208","Babarinde Florence Biodun","Florence","","50000.00","20000.00","0.00","24000.00","24000.00","0.00","24000.00","Credit","confirmed","21/8/23 
15/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:29:57am","","2023-09-19 09:40:41am","undelete");
INSERT INTO rep_tbl VALUES("1397","74620230918","703115","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","24000.00","0.00","","confirmed","21/8/23 
15/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:29:57am","","2023-09-19 09:40:41am","undelete");
INSERT INTO rep_tbl VALUES("1398","13420230918","144137","38893856","Osunpidan lola","Iya kola","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","9/8/23
12/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:36:00am","","2023-09-19 09:40:47am","undelete");
INSERT INTO rep_tbl VALUES("1399","13420230918","144137","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","9/8/23
12/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:36:00am","","2023-09-19 09:40:47am","undelete");
INSERT INTO rep_tbl VALUES("1400","96420230918","976892","94511426","Mebel Irunkwar Kinse","Iya fufu","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","9/8/23 
11/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:41:39am","","2023-09-19 09:40:53am","undelete");
INSERT INTO rep_tbl VALUES("1401","96420230918","976892","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","9/8/23 
11/9/23","Sanni Bukola","Oyaosho Folakemi","2023-09-18","2023-09-18 10:41:39am","","2023-09-19 09:40:53am","undelete");
INSERT INTO rep_tbl VALUES("1402","26220230918","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","11/9/23
18/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 03:59:49pm","","2023-09-19 09:40:59am","undelete");
INSERT INTO rep_tbl VALUES("1403","26220230918","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","11/9/23
18/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 03:59:49pm","","2023-09-19 09:40:59am","undelete");
INSERT INTO rep_tbl VALUES("1404","47820230918","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","30/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:47:48pm","","2023-09-19 09:41:05am","undelete");
INSERT INTO rep_tbl VALUES("1405","47820230918","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","30/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:47:48pm","","2023-09-19 09:41:05am","undelete");
INSERT INTO rep_tbl VALUES("1406","14320230918","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:51:41pm","","2023-09-19 09:41:12am","undelete");
INSERT INTO rep_tbl VALUES("1407","14320230918","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","4/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:51:41pm","","2023-09-19 09:41:12am","undelete");
INSERT INTO rep_tbl VALUES("1408","29420230918","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","12000.00","0.00","12000.00","Credit","confirmed","7/9/23
18/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:54:35pm","","2023-09-19 09:41:19am","undelete");
INSERT INTO rep_tbl VALUES("1409","29420230918","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","12000.00","0.00","","confirmed","7/9/23
18/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 04:54:35pm","","2023-09-19 09:41:19am","undelete");
INSERT INTO rep_tbl VALUES("1410","13020230918","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","6/9/23
15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 05:00:23pm","","2023-09-19 09:41:25am","undelete");
INSERT INTO rep_tbl VALUES("1411","13020230918","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","6/9/23
15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-18","2023-09-18 05:00:23pm","","2023-09-19 09:41:25am","undelete");
INSERT INTO rep_tbl VALUES("1412","","696058","75784638","Adeboye Diyaolu felicia","Diyaolu","Oyaosho Folakemi","50000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-08-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1413","","107666","82339859","Goriola Fumilayo ","Ire","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1414","","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-12","","","","undelete");
INSERT INTO rep_tbl VALUES("1415","","491180","90184954","Adegunle Adefunke ","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-13","","","","undelete");
INSERT INTO rep_tbl VALUES("1416","","379262","66549101","Yeku Morufat Oladunmi","Asunmo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-13","","","","undelete");
INSERT INTO rep_tbl VALUES("1417","","512702","28645869","Olomowewe Toyin ","TAJU BELLO","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1418","","063603","64023768","Ajibola Nurudeen ","Ilerioluwa","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1419","","465909","69718619","Abereijo Mutiat Motunrayo","Alahaja","Shoyebi Folashade","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1420","","717321","13794614","Oyewole Remi ","Ayedun","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1421","","075151","07244463","Adekunle Afusat Arike","Kitchen","	
Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-18","","","","undelete");
INSERT INTO rep_tbl VALUES("1422","","007107","06066794","Adediran Sarah ","Ayonio","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-18","","","","undelete");
INSERT INTO rep_tbl VALUES("1423","","355438","05631946","Adebayo Adeola ","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-18","","","","undelete");
INSERT INTO rep_tbl VALUES("1424","37920230920","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:15:09am","","2023-09-22 08:42:33am","undelete");
INSERT INTO rep_tbl VALUES("1425","37920230920","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:15:09am","","2023-09-22 08:42:33am","undelete");
INSERT INTO rep_tbl VALUES("1426","96820230920","379262","66549101","Yeku Morufat Oladunmi","Asunmo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:15:43am","","2023-09-22 08:42:40am","undelete");
INSERT INTO rep_tbl VALUES("1427","96820230920","379262","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:15:43am","","2023-09-22 08:42:40am","undelete");
INSERT INTO rep_tbl VALUES("1428","35520230920","229704","27228517","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","13000.00","0.00","13000.00","Credit","confirmed","7/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:17:28am","","2023-09-22 08:42:48am","undelete");
INSERT INTO rep_tbl VALUES("1429","35520230920","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","13000.00","0.00","","confirmed","7/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:17:28am","","2023-09-22 08:42:48am","undelete");
INSERT INTO rep_tbl VALUES("1430","42320230920","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:18:47am","","2023-09-22 08:42:54am","undelete");
INSERT INTO rep_tbl VALUES("1431","42320230920","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:18:47am","","2023-09-22 08:42:54am","undelete");
INSERT INTO rep_tbl VALUES("1432","13720230920","847222","14905514","Ajibodu Babatunde Valentine","Valentine","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","12/9/23  
      19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:22:58am","","2023-09-22 08:43:02am","undelete");
INSERT INTO rep_tbl VALUES("1433","13720230920","847222","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","12/9/23  
      19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:22:58am","","2023-09-22 08:43:02am","undelete");
INSERT INTO rep_tbl VALUES("1434","61020230920","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","9000.00","0.00","9000.00","Credit","confirmed","7/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:34:49am","","2023-09-22 08:43:09am","undelete");
INSERT INTO rep_tbl VALUES("1435","61020230920","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","9000.00","0.00","","confirmed","7/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:34:49am","","2023-09-22 08:43:09am","undelete");
INSERT INTO rep_tbl VALUES("1436","31220230920","491180","90184954","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:36:10am","","2023-09-22 08:43:15am","undelete");
INSERT INTO rep_tbl VALUES("1437","31220230920","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","18/9/23
19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:36:10am","","2023-09-22 08:43:15am","undelete");
INSERT INTO rep_tbl VALUES("1439","56120230920","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","19/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 09:41:42am","","2023-09-22 08:42:25am","undelete");
INSERT INTO rep_tbl VALUES("1440","43020230920","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:41:50pm","","2023-09-22 08:43:21am","undelete");
INSERT INTO rep_tbl VALUES("1441","43020230920","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:41:50pm","","2023-09-22 08:43:21am","undelete");
INSERT INTO rep_tbl VALUES("1442","69920230920","429234","89796411","Akinbami Banjo Felix","Oremeta","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:44:49pm","","2023-09-22 08:43:29am","undelete");
INSERT INTO rep_tbl VALUES("1443","69920230920","429234","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:44:49pm","","2023-09-22 08:43:29am","undelete");
INSERT INTO rep_tbl VALUES("1444","53020230920","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:47:25pm","","2023-09-22 08:43:35am","undelete");
INSERT INTO rep_tbl VALUES("1445","53020230920","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 04:47:25pm","","2023-09-22 08:43:35am","undelete");
INSERT INTO rep_tbl VALUES("1446","80020230920","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5500.00","0.00","5500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 04:59:21pm","","2023-09-22 08:43:42am","undelete");
INSERT INTO rep_tbl VALUES("1447","80020230920","409067","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 04:59:21pm","","2023-09-22 08:43:42am","undelete");
INSERT INTO rep_tbl VALUES("1448","51520230920","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:03:08pm","","2023-09-22 08:43:49am","undelete");
INSERT INTO rep_tbl VALUES("1449","51520230920","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","1500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:03:08pm","","2023-09-22 08:43:49am","undelete");
INSERT INTO rep_tbl VALUES("1450","19620230920","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:03:47pm","","2023-09-22 08:43:56am","undelete");
INSERT INTO rep_tbl VALUES("1451","19620230920","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:03:47pm","","2023-09-22 08:43:56am","undelete");
INSERT INTO rep_tbl VALUES("1452","95220230920","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:04:31pm","","2023-09-22 08:44:02am","undelete");
INSERT INTO rep_tbl VALUES("1453","95220230920","115526","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:04:31pm","","2023-09-22 08:44:02am","undelete");
INSERT INTO rep_tbl VALUES("1454","71720230920","229704","27228517","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:08:17pm","","2023-09-22 08:44:08am","undelete");
INSERT INTO rep_tbl VALUES("1455","71720230920","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:08:17pm","","2023-09-22 08:44:08am","undelete");
INSERT INTO rep_tbl VALUES("1456","31520230920","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","60000.00","0.00","72000.00","18000.00","0.00","18000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:08:33pm","","2023-09-22 08:44:15am","undelete");
INSERT INTO rep_tbl VALUES("1457","31520230920","094263","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","18000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:08:33pm","","2023-09-22 08:44:15am","undelete");
INSERT INTO rep_tbl VALUES("1458","14720230920","007107","06066794","Adediran Sarah","Ayonio","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:11:16pm","","2023-09-22 08:44:22am","undelete");
INSERT INTO rep_tbl VALUES("1459","14720230920","007107","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:11:16pm","","2023-09-22 08:44:22am","undelete");
INSERT INTO rep_tbl VALUES("1460","86220230920","847222","14905514","Ajibodu Babatunde Valentine","Valentine","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:12:13pm","","2023-09-22 08:44:27am","undelete");
INSERT INTO rep_tbl VALUES("1461","86220230920","847222","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:12:13pm","","2023-09-22 08:44:27am","undelete");
INSERT INTO rep_tbl VALUES("1462","35320230920","355438","05631946","Adebayo Adeola","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","38000.00","0.00","38000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:12:37pm","","2023-09-22 08:44:34am","undelete");
INSERT INTO rep_tbl VALUES("1463","35320230920","355438","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","38000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:12:37pm","","2023-09-22 08:44:34am","undelete");
INSERT INTO rep_tbl VALUES("1464","81920230920","379262","66549101","Yeku Morufat Oladunmi","Asunmo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:14:44pm","","2023-09-22 08:44:40am","undelete");
INSERT INTO rep_tbl VALUES("1465","81920230920","379262","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:14:44pm","","2023-09-22 08:44:40am","undelete");
INSERT INTO rep_tbl VALUES("1466","94320230920","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","10500.00","0.00","10500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:14:52pm","","2023-09-22 08:44:45am","undelete");
INSERT INTO rep_tbl VALUES("1467","94320230920","410460","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","10500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-20","2023-09-20 05:14:52pm","","2023-09-22 08:44:45am","undelete");
INSERT INTO rep_tbl VALUES("1468","29420230920","491180","90184954","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:15:57pm","","2023-09-22 08:44:57am","undelete");
INSERT INTO rep_tbl VALUES("1469","29420230920","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-20","2023-09-20 05:15:57pm","","2023-09-22 08:44:57am","undelete");
INSERT INTO rep_tbl VALUES("1470","22720230921","318572","09310390","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-21","2023-09-21 05:20:56pm","","2023-09-22 08:45:08am","undelete");
INSERT INTO rep_tbl VALUES("1471","22720230921","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-21","2023-09-21 05:20:56pm","","2023-09-22 08:45:08am","undelete");
INSERT INTO rep_tbl VALUES("1472","81220230921","157714","59888985","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","50000.00","70000.00","0.00","84000.00","45500.00","0.00","45500.00","Credit","confirmed","13/9/23
21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-21","2023-09-21 05:26:47pm","","2023-09-22 08:45:17am","undelete");
INSERT INTO rep_tbl VALUES("1473","81220230921","157714","100129
","Loan Account","","","50000.00","70000.00","0.00","84000.00","","45500.00","0.00","","confirmed","13/9/23
21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-21","2023-09-21 05:26:47pm","","2023-09-22 08:45:17am","undelete");
INSERT INTO rep_tbl VALUES("1474","78720230922","491180","90184954","Adegunle Adefunke","Ticket 2","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","confirmed","22/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:24:44am","","2023-09-22 08:45:32am","undelete");
INSERT INTO rep_tbl VALUES("1475","78720230922","491180","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","confirmed","22/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:24:44am","","2023-09-22 08:45:32am","undelete");
INSERT INTO rep_tbl VALUES("1476","","763868","54977603","Ajiboye Iyabo ","ALORE","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-20","","","","undelete");
INSERT INTO rep_tbl VALUES("1477","","361061","00416132","Bamigbose Yemisi Mariam","IYA IJEBU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-20","","","","undelete");
INSERT INTO rep_tbl VALUES("1478","","107666","17264636","Goriola Fumilayo ","Ire","Shoyebi Folashade","200000.00","200000.00","0.00","240000.00","0.00","240000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-20","","","","undelete");
INSERT INTO rep_tbl VALUES("1479","","928847","90150945","Abdulsirmad Alimot Bola","Akorede","Shoyebi Folashade","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1480","","182520","72182609","Ademola Agnes Adejumoke","Akorede","Shoyebi Folashade","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1481","97020230922","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:28:24am","","2023-09-22 08:45:40am","undelete");
INSERT INTO rep_tbl VALUES("1482","97020230922","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:28:24am","","2023-09-22 08:45:40am","undelete");
INSERT INTO rep_tbl VALUES("1483","","586283","01716598","Oyeniyi Latifat Folashade","Akorede","Shoyebi Folashade","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1484","","623993","02236472","Lawal Nimota Elizabeth","Pelumi","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1485","","616309","70223842","Adesanmi Funke ","Funke","Shoyebi Folashade","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1486","","152179","67251576","Olewe Iheayi ","Olewe","Omolayo Funmilayo","20000.00","150000.00","0.00","180000.00","0.00","180000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1487","95220230922","847222","14905514","Ajibodu Babatunde Valentine","Valentine","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:31:59am","","2023-09-22 08:45:46am","undelete");
INSERT INTO rep_tbl VALUES("1488","95220230922","847222","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:31:59am","","2023-09-22 08:45:46am","undelete");
INSERT INTO rep_tbl VALUES("1489","","212692","80151869","Olulola grace joy","Temitope","Oyaosho Folakemi","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1490","36020230922","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:32:34am","","2023-09-22 08:45:51am","undelete");
INSERT INTO rep_tbl VALUES("1491","36020230922","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 08:32:34am","","2023-09-22 08:45:51am","undelete");
INSERT INTO rep_tbl VALUES("1492","","700203","51277522","Oginni Bose Ayodeji","Iya koko","Oyaosho Folakemi","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1493","","157714","82591698","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","80000.00","80000.00","0.00","96000.00","0.00","96000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1494","","400809","77364183","Adewunmi Dupe Bukky","Adewunmi","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-21","","","","undelete");
INSERT INTO rep_tbl VALUES("1495","94420230922","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","14/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 10:33:39am","","2023-09-25 11:22:12am","undelete");
INSERT INTO rep_tbl VALUES("1496","94420230922","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","14/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 10:33:39am","","2023-09-25 11:22:12am","undelete");
INSERT INTO rep_tbl VALUES("1497","77220230922","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","19/9/23
20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 10:34:28am","","2023-09-25 11:22:17am","undelete");
INSERT INTO rep_tbl VALUES("1498","77220230922","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","19/9/23
20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-22","2023-09-22 10:34:28am","","2023-09-25 11:22:17am","undelete");
INSERT INTO rep_tbl VALUES("1499","77120230925","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","4000.00","0.00","4000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 09:58:25am","","2023-09-25 11:22:22am","undelete");
INSERT INTO rep_tbl VALUES("1500","77120230925","410460","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","4000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 09:58:25am","","2023-09-25 11:22:22am","undelete");
INSERT INTO rep_tbl VALUES("1501","14820230925","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 09:59:55am","","2023-09-25 11:22:28am","undelete");
INSERT INTO rep_tbl VALUES("1502","14820230925","094263","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 09:59:55am","","2023-09-25 11:22:28am","undelete");
INSERT INTO rep_tbl VALUES("1503","54920230925","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:02:51am","","2023-09-25 11:22:34am","undelete");
INSERT INTO rep_tbl VALUES("1504","54920230925","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:02:51am","","2023-09-25 11:22:34am","undelete");
INSERT INTO rep_tbl VALUES("1505","23120230925","355438","05631946","Adebayo Adeola","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:04:44am","","2023-09-25 11:22:40am","undelete");
INSERT INTO rep_tbl VALUES("1506","23120230925","355438","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:04:44am","","2023-09-25 11:22:40am","undelete");
INSERT INTO rep_tbl VALUES("1507","99120230925","007107","06066794","Adediran Sarah","Ayonio","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:05:50am","","2023-09-25 11:22:46am","undelete");
INSERT INTO rep_tbl VALUES("1508","99120230925","007107","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:05:50am","","2023-09-25 11:22:46am","undelete");
INSERT INTO rep_tbl VALUES("1509","69320230925","361061","00416132","Bamigbose Yemisi Mariam","IYA IJEBU","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:07:01am","","2023-09-25 11:22:53am","undelete");
INSERT INTO rep_tbl VALUES("1510","69320230925","361061","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:07:01am","","2023-09-25 11:22:53am","undelete");
INSERT INTO rep_tbl VALUES("1511","71020230925","763868","54977603","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:10:13am","","2023-09-25 11:22:58am","undelete");
INSERT INTO rep_tbl VALUES("1512","71020230925","763868","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-25","2023-09-25 10:10:13am","","2023-09-25 11:22:58am","undelete");
INSERT INTO rep_tbl VALUES("1513","62720230926","229704","27228517","Babatunde Olusegun","Coach","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","6500.00","0.00","6500.00","Credit","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:20:03am","","2023-09-26 09:42:36am","undelete");
INSERT INTO rep_tbl VALUES("1514","62720230926","229704","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","6500.00","0.00","","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:20:03am","","2023-09-26 09:42:36am","undelete");
INSERT INTO rep_tbl VALUES("1515","45420230926","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","14000.00","0.00","14000.00","Credit","confirmed","7/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:24:12am","","2023-09-26 09:42:42am","undelete");
INSERT INTO rep_tbl VALUES("1516","45420230926","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","14000.00","0.00","","confirmed","7/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:24:12am","","2023-09-26 09:42:42am","undelete");
INSERT INTO rep_tbl VALUES("1517","82820230926","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:28:44am","","2023-09-26 09:42:48am","undelete");
INSERT INTO rep_tbl VALUES("1518","82820230926","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","15/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:28:44am","","2023-09-26 09:42:48am","undelete");
INSERT INTO rep_tbl VALUES("1519","45220230926","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:29:18am","","2023-09-26 09:42:54am","undelete");
INSERT INTO rep_tbl VALUES("1520","45220230926","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:29:18am","","2023-09-26 09:42:54am","undelete");
INSERT INTO rep_tbl VALUES("1521","26220230926","405947","19252828","Akinboni Adenike","Oke Ayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","16500.00","0.00","16500.00","Credit","confirmed","7/9/23
21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:35:20am","","2023-09-26 09:43:00am","undelete");
INSERT INTO rep_tbl VALUES("1522","26220230926","405947","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","16500.00","0.00","","confirmed","7/9/23
21/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:35:20am","","2023-09-26 09:43:00am","undelete");
INSERT INTO rep_tbl VALUES("1523","96920230926","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:37:07am","","2023-09-26 09:43:05am","undelete");
INSERT INTO rep_tbl VALUES("1524","96920230926","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","20/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:37:07am","","2023-09-26 09:43:05am","undelete");
INSERT INTO rep_tbl VALUES("1551","52820230926","268816","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","22/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 10:01:39am","","2023-10-06 03:33:36pm","undelete");
INSERT INTO rep_tbl VALUES("1559","35820230928","405947","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","28/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-28","2023-09-28 09:09:01am","","2023-10-06 03:33:42pm","undelete");
INSERT INTO rep_tbl VALUES("1557","35520230927","555148","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","11/9/23
27/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-27","2023-09-27 03:57:01pm","","2023-10-06 03:33:47pm","undelete");
INSERT INTO rep_tbl VALUES("1531","68320230926","801029","36462547","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","1500.00","0.00","1500.00","Credit","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:55:30am","","2023-09-26 09:43:26am","undelete");
INSERT INTO rep_tbl VALUES("1532","68320230926","801029","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","1500.00","0.00","","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 08:55:30am","","2023-09-26 09:43:26am","undelete");
INSERT INTO rep_tbl VALUES("1533","42120230926","379262","66549101","Yeku Morufat Oladunmi","Asunmo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","21/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 09:05:12am","","2023-09-26 09:43:31am","undelete");
INSERT INTO rep_tbl VALUES("1534","42120230926","379262","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","21/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 09:05:12am","","2023-09-26 09:43:31am","undelete");
INSERT INTO rep_tbl VALUES("1535","","006398","77913344","Adeyeye Elizabeth ","Greatness","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-25","","","","undelete");
INSERT INTO rep_tbl VALUES("1536","82020230926","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:32:44am","","2023-09-26 09:43:36am","undelete");
INSERT INTO rep_tbl VALUES("1537","82020230926","073345","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:32:44am","","2023-09-26 09:43:36am","undelete");
INSERT INTO rep_tbl VALUES("1538","","434642","36087385","Babatunde Kemi Tayo","kemi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-25","","","","undelete");
INSERT INTO rep_tbl VALUES("1539","","979799","71650552","Shobande Alaba Babatunde","Babatunde","Ajayi Adedoyin","150000.00","150000.00","0.00","180000.00","0.00","180000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1540","75020230926","007107","06066794","Adediran Sarah","Ayonio","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:35:49am","","2023-09-26 09:43:40am","undelete");
INSERT INTO rep_tbl VALUES("1541","75020230926","007107","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:35:49am","","2023-09-26 09:43:40am","undelete");
INSERT INTO rep_tbl VALUES("1542","16520230926","355438","05631946","Adebayo Adeola","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:36:35am","","2023-09-26 09:43:45am","undelete");
INSERT INTO rep_tbl VALUES("1543","16520230926","355438","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:36:35am","","2023-09-26 09:43:45am","undelete");
INSERT INTO rep_tbl VALUES("1544","26720230926","094263","36501323","Umaru Rahimat","UMARU","Omolayo Funmilayo","50000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:37:30am","","2023-09-26 09:43:51am","undelete");
INSERT INTO rep_tbl VALUES("1545","26720230926","094263","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:37:30am","","2023-09-26 09:43:51am","undelete");
INSERT INTO rep_tbl VALUES("1546","51420230926","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","50000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:38:39am","","2023-09-26 09:43:56am","undelete");
INSERT INTO rep_tbl VALUES("1547","51420230926","410460","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-09-26","2023-09-26 09:38:39am","","2023-09-26 09:43:56am","undelete");
INSERT INTO rep_tbl VALUES("1548","46020230926","979799","71650552","Shobande Alaba Babatunde","Babatunde","Ajayi Adedoyin","150000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","26/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 09:42:02am","","2023-09-26 09:44:05am","undelete");
INSERT INTO rep_tbl VALUES("1549","46020230926","979799","100129
","Loan Account","","","150000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","26/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 09:42:02am","","2023-09-26 09:44:05am","undelete");
INSERT INTO rep_tbl VALUES("1550","52820230926","268816","03577025","Taofeex Asisat Wemimo","Odunayo","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","22/9/23
25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 10:01:39am","","2023-10-06 03:33:36pm","undelete");
INSERT INTO rep_tbl VALUES("1558","35820230928","405947","19252828","Akinboni Adenike","Oke Ayo","Ajayi Adedoyin","40000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","confirmed","28/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-28","2023-09-28 09:09:01am","","2023-10-06 03:33:42pm","undelete");
INSERT INTO rep_tbl VALUES("1556","35520230927","555148","89944106","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","40000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","11/9/23
27/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-27","2023-09-27 03:57:01pm","","2023-10-06 03:33:47pm","undelete");
INSERT INTO rep_tbl VALUES("1552","89620230926","157714","82591698","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","40000.00","80000.00","0.00","96000.00","4000.00","0.00","4000.00","Credit","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 12:07:24pm","","2023-10-06 03:33:54pm","undelete");
INSERT INTO rep_tbl VALUES("1553","89620230926","157714","100129
","Loan Account","","","40000.00","80000.00","0.00","96000.00","","4000.00","0.00","","confirmed","25/9/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 12:07:24pm","","2023-10-06 03:33:54pm","undelete");
INSERT INTO rep_tbl VALUES("1554","21920230926","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","40000.00","60000.00","0.00","72000.00","3000.00","0.00","3000.00","Credit","confirmed","28/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 12:11:26pm","","2023-10-06 03:34:00pm","undelete");
INSERT INTO rep_tbl VALUES("1555","21920230926","450220","100129
","Loan Account","","","40000.00","60000.00","0.00","72000.00","","3000.00","0.00","","confirmed","28/8/23","Sanni Bukola","Ajayi Adedoyin","2023-09-26","2023-09-26 12:11:26pm","","2023-10-06 03:34:00pm","undelete");
INSERT INTO rep_tbl VALUES("1568","97320231005","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","40000.00","50000.00","0.00","60000.00","5000.00","0.00","5000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:33:12pm","","2023-10-06 03:34:05pm","undelete");
INSERT INTO rep_tbl VALUES("1569","97320231005","073345","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","5000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:33:12pm","","2023-10-06 03:34:05pm","undelete");
INSERT INTO rep_tbl VALUES("1570","82720231005","115526","01324314","Balogun Sekinat","Adufe","Omolayo Funmilayo","40000.00","20000.00","0.00","24000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:37:10pm","","2023-10-06 03:34:19pm","undelete");
INSERT INTO rep_tbl VALUES("1571","82720231005","115526","100129
","Loan Account","","","40000.00","20000.00","0.00","24000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 12:37:10pm","","2023-10-06 03:34:19pm","undelete");
INSERT INTO rep_tbl VALUES("1572","34620231005","007107","06066794","Adediran Sarah","Ayonio","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:39:20pm","","2023-10-06 03:34:28pm","undelete");
INSERT INTO rep_tbl VALUES("1573","34620231005","007107","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:39:20pm","","2023-10-06 03:34:28pm","undelete");
INSERT INTO rep_tbl VALUES("1574","72920231005","763868","54977603","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","10500.00","0.00","10500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:40:33pm","","2023-10-06 03:34:32pm","undelete");
INSERT INTO rep_tbl VALUES("1575","72920231005","763868","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","10500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:40:33pm","","2023-10-06 03:34:32pm","undelete");
INSERT INTO rep_tbl VALUES("1576","43620231005","361061","00416132","Bamigbose Yemisi Mariam","IYA IJEBU","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","12000.00","0.00","12000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:42:34pm","","2023-10-06 03:34:39pm","undelete");
INSERT INTO rep_tbl VALUES("1577","43620231005","361061","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","12000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:42:34pm","","2023-10-06 03:34:39pm","undelete");
INSERT INTO rep_tbl VALUES("1578","84520231005","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","12000.00","0.00","12000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:45:18pm","","2023-10-06 03:34:44pm","undelete");
INSERT INTO rep_tbl VALUES("1579","84520231005","410460","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","12000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-05","2023-10-05 02:45:18pm","","2023-10-06 03:34:44pm","undelete");
INSERT INTO rep_tbl VALUES("1580","","703115","75394560","Babarinde Florence Biodun","Florence","","40000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1581","","844684","36084040","Nnamdi Sabastine Samuel","Nnamdi","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1582","","856433","20456142","Essien Peter Effiong","Enilolobo","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1583","","752410","20623166","Okorie gift oyinye","Good market","Oyaosho Folakemi","300000.00","300000.00","0.00","360000.00","0.00","360000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1584","","355438","16818855","Adebayo Adeola ","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1585","","227859","25459394","Ereji-Kesi Falilat Noghq","Falilat","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-04","","","","undelete");
INSERT INTO rep_tbl VALUES("1586","","422737","62195652","Rabiu Rukayat Funmilayo","Gudugba","Ajayi Adedoyin","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1587","","630840","26719664","Tajubello Adijat ","TAJU BELLO","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1588","","764152","65459063","Alake Stella Mercy","Greatness","Shoyebi Folashade","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1589","","736407","16603655","Salami Shakirat Tope","Greatness","Shoyebi Folashade","40000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1590","","601099","41219381","Kareem Morenike ","Akorede","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-27","","","","undelete");
INSERT INTO rep_tbl VALUES("1591","","555148","02858478","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","30000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1592","","126958","99955406","Ahmed Baba ","Nupe","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1593","","094263","80280478","Umaru Rahimat ","UMARU","Omolayo Funmilayo","80000.00","80000.00","0.00","96000.00","0.00","96000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1594","","540601","45248642","Muhammed Abdullai ","Nupe","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1595","17620231013","007107","06066794","Adediran Sarah","Ayonio","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:00:02am","","2023-10-22 05:18:03am","undelete");
INSERT INTO rep_tbl VALUES("1596","17620231013","007107","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","9000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:00:02am","","2023-10-22 05:18:03am","undelete");
INSERT INTO rep_tbl VALUES("1597","40620231013","630840","26719664","Tajubello Adijat","TAJU BELLO","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","35500.00","0.00","35500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:02:24am","","2023-10-22 05:18:11am","undelete");
INSERT INTO rep_tbl VALUES("1598","40620231013","630840","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","35500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:02:24am","","2023-10-22 05:18:11am","undelete");
INSERT INTO rep_tbl VALUES("1599","41120231013","073345","87291825","Adedeji Fatimo","TAJU BELLO","Omolayo Funmilayo","40000.00","50000.00","0.00","60000.00","7500.00","0.00","7500.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:03:23am","","2023-10-22 05:18:17am","undelete");
INSERT INTO rep_tbl VALUES("1600","41120231013","073345","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","7500.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:03:23am","","2023-10-22 05:18:17am","undelete");
INSERT INTO rep_tbl VALUES("1601","18420231013","409067","33851503","Jimoh Khadijat Ayomide","Toke","Omolayo Funmilayo","40000.00","50000.00","0.00","60000.00","10400.00","0.00","10400.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:06:05am","","2023-10-22 05:18:24am","undelete");
INSERT INTO rep_tbl VALUES("1602","18420231013","409067","100129
","Loan Account","","","40000.00","50000.00","0.00","60000.00","","10400.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:06:05am","","2023-10-22 05:18:24am","undelete");
INSERT INTO rep_tbl VALUES("1603","69820231013","094263","80280478","Umaru Rahimat","UMARU","Omolayo Funmilayo","80000.00","80000.00","0.00","96000.00","8000.00","0.00","8000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:06:47am","","2023-10-22 05:18:30am","undelete");
INSERT INTO rep_tbl VALUES("1604","69820231013","094263","100129
","Loan Account","","","80000.00","80000.00","0.00","96000.00","","8000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:06:47am","","2023-10-22 05:18:30am","undelete");
INSERT INTO rep_tbl VALUES("1605","35620231013","763868","54977603","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","40000.00","30000.00","0.00","36000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:09:37am","","2023-10-22 05:18:36am","undelete");
INSERT INTO rep_tbl VALUES("1606","35620231013","763868","100129
","Loan Account","","","40000.00","30000.00","0.00","36000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:09:37am","","2023-10-22 05:18:36am","undelete");
INSERT INTO rep_tbl VALUES("1607","74620231013","410460","77573768","Olajide Emmanuel","UMARU","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","6000.00","0.00","6000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:10:40am","","2023-10-22 05:18:42am","undelete");
INSERT INTO rep_tbl VALUES("1608","74620231013","410460","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","6000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:10:40am","","2023-10-22 05:18:42am","undelete");
INSERT INTO rep_tbl VALUES("1609","78820231013","355438","16818855","Adebayo Adeola","Ayonio","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","10000.00","0.00","10000.00","Credit","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:11:38am","","2023-10-22 05:18:48am","undelete");
INSERT INTO rep_tbl VALUES("1610","78820231013","355438","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","10000.00","0.00","","confirmed","Loan payment","Sanni Bukola","Omolayo Funmilayo","2023-10-13","2023-10-13 11:11:38am","","2023-10-22 05:18:48am","undelete");
INSERT INTO rep_tbl VALUES("1611","38820231014","979799","71650552","Shobande Alaba Babatunde","Babatunde","Ajayi Adedoyin","40000.00","150000.00","0.00","180000.00","15500.00","0.00","15500.00","Credit","confirmed","10/10/23","Sanni Bukola","Ajayi Adedoyin","2023-10-14","2023-10-14 07:45:46am","","2023-10-22 05:18:54am","undelete");
INSERT INTO rep_tbl VALUES("1612","38820231014","979799","100129
","Loan Account","","","40000.00","150000.00","0.00","180000.00","","15500.00","0.00","","confirmed","10/10/23","Sanni Bukola","Ajayi Adedoyin","2023-10-14","2023-10-14 07:45:46am","","2023-10-22 05:18:54am","undelete");
INSERT INTO rep_tbl VALUES("1613","","627413","40887788","Badejo Sukurat Nike","Badejo","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-26","","","","undelete");
INSERT INTO rep_tbl VALUES("1614","","848696","78913690","Jolayemi Kemi ","Pelumi","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-27","","","","undelete");
INSERT INTO rep_tbl VALUES("1615","","028586","41461585","Ayorinde Fatimo ","Pelumi","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-27","","","","undelete");
INSERT INTO rep_tbl VALUES("1616","","101149","52100144","Akinsanya Bosede Olaide","Ope","Ajayi Adedoyin","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-28","","","","undelete");
INSERT INTO rep_tbl VALUES("1617","","799395","26129367","Adebayo Wasiu Alabi","Alabi","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1618","","318572","01019749","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-09-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1619","","081901","90900426","Daramola Ayodele Joshua","Execl","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-03","","","","undelete");
INSERT INTO rep_tbl VALUES("1620","","657963","72918085","Yusuf Yetunde Abosede","Yetunde","Ajayi Adedoyin","30000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1621","","264038","37751180","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-05","","","","undelete");
INSERT INTO rep_tbl VALUES("1622","","278865","55905403","Kofoworola Tiamiyu ","Pelumi","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1623","","570493","08388070","Tawakalitu OLatinwo ","Gift","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1624","","204833","04950513","Ifeoluwa Olayemi ","Oluwatosin","Shoyebi Folashade","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1625","","621958","33373002","Bukky Lawal ","Pelumi","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1626","","977991","35777797","Jelili Muritala ","Ire","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1627","","071006","91332650","Fatoyinbo Balikis Temitope","Balikis","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1628","","493688","36750362","Omoniyi Tolani ","Blossom","Shoyebi Folashade","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-10-11","","","","undelete");
INSERT INTO rep_tbl VALUES("1629","","908443","63479762","Ademola Idowu Isiaka","Baba Eja","Ibitomi Esther","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1630","","547915","14945351","Obayomi Busola ","Chairman","Ibitomi Esther","50000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1631","","254253","61713018","Najeem Waheed ","Alubarika","Ibitomi Esther","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1632","","651913","30276072","Suleman Azeez Wasiu","Happiness","Ibitomi Esther","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1633","","750306","32904027","Adejumo Ranti Deborah","Favour","Ibitomi Esther","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1634","","199465","61868738","Kazeem Biliki Funke","Anu","Ibitomi Esther","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1635","","542642","31738316","Sanusi Amoke ","Okiki","Alago Chidera","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1636","","881904","40628532","Abdusalam Bukola Fatimo","Okiki","Alago Chidera","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1637","","320715","41625704","Sharafa Fatimo Adeola","Fatimo","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1638","","588403","36359515","Tawio Idayat Bunmi","Iya koko","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1639","","675293","11494856","Oyewunmi Simeon Joshua","Baba Kekere","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1640","","471681","71309942","Lateef Risikatu Olatundun","Olatundu","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1641","","144137","02831797","Osunpidan lola ","Iya koko","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1642","","336831","09148934","Akande Toyin Adenike","D Kings","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1643","","771396","55073194","Ebera Akalonu Lianus","Unchangeable","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1644","","901357","95172917","Abiodun Buhari Kabiru","Buhari","Ibitomi Esther","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1645","","161892","07777340","Akeye Folakemi Oluwatosin","Okiki","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1646","","428350","64770160","Fashina Bimbola Patience","Bukola","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-10","","","","undelete");
INSERT INTO rep_tbl VALUES("1647","","327758","18194335","Oladeji Saidat ","Okiki","Alago Chidera","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1648","","523045","08804887","Ojo Toyin Elizabeth","Eli","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1649","","932701","06564198","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1650","","073345","91566060","Adedeji Fatimo ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1651","","999409","77543786","Lasisi Zanib Asabi","Lasisi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-09","","","","undelete");
INSERT INTO rep_tbl VALUES("1652","","986770","67019034","Sabiu Saki Ayinke","Okiki","Alago Chidera","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1653","","157714","18285834","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","80000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1654","","410460","56323381","Olajide Emmanuel ","UMARU","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1655","","117304","76324164","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1656","","400809","18073433","Adewunmi Dupe Bukky","Adewunmi","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1657","","237689","99347303","Adio Mosurat ","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1658","","763868","79130382","Ajiboye Iyabo ","ALORE","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1659","","316065","81464044","Ajayi Kemi ","Divine","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1660","","682368","46831798","Lukmon Awawu Abiodun","Temitope","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1661","","075151","92725125","Adekunle Afusat Arike","Kitchen","Ajayi Adedoyin","30000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1662","","290486","55701840","Ojo Omoboriowo ","Kitchen","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1663","","405947","06586090","Akinboni Adenike ","Oke Ayo","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1664","","229704","33083135","Babatunde Olusegun ","Coach","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1665","","001122","98757189","Oloyede Anuoluwapo Ife","Bidemi","Oyaosho Folakemi","30000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1666","","729097","73583787","Owolabi Olanike Iyabode","Bidemi","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1667","","359147","27241325","Babatunde Bidemi Bukola","Bidemi","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1668","","434642","64024523","Babatunde Kemi Tayo","kemi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1669","","724109","94056071","Obatoye Beatrice Oluwatoyin","Tosin","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1670","","480129","89522138","Obatoye Samuel Babatunde","Tosin","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1671","","837860","76786169","Dasilva Tosin Joy","Tosin","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1672","","627413","62128015","Badejo Sukurat Nike","Badejo","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1673","","138614","65193461","Olewe Blessing Amaka","Amaka","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1674","","311159","54010593","Olukoya Abiodun Kayode","Olukoya","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1675","","580013","21374410","Emmanuel Rita Tega","Rita","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1676","","151247","42991147","Ajibode Muinat Ajoke","Gold","Oyaosho Folakemi","50000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1677","","463541","02157928","Adeyeye Pelumi Idowu","Gold","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1678","85520231115","450220","40290924","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","34000.00","0.00","34000.00","Credit","confirmed","13/11/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:15:51pm","","2023-12-02 07:58:53am","undelete");
INSERT INTO rep_tbl VALUES("1679","85520231115","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","34000.00","0.00","","confirmed","13/11/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:15:51pm","","2023-12-02 07:58:53am","undelete");
INSERT INTO rep_tbl VALUES("1680","73920231115","450220","16081523","Badmus Jamiu","Oremeta","Ajayi Adedoyin","50000.00","60000.00","0.00","72000.00","11000.00","0.00","11000.00","Credit","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:19:21pm","","2023-12-02 07:59:00am","undelete");
INSERT INTO rep_tbl VALUES("1681","73920231115","450220","100129
","Loan Account","","","50000.00","60000.00","0.00","72000.00","","11000.00","0.00","","confirmed","28/7/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:19:21pm","","2023-12-02 07:59:00am","undelete");
INSERT INTO rep_tbl VALUES("1682","43320231115","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","38000.00","0.00","38000.00","Credit","confirmed","26/9/23
25/10/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:24:42pm","","2023-12-02 07:59:07am","undelete");
INSERT INTO rep_tbl VALUES("1683","43320231115","011570","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","38000.00","0.00","","confirmed","26/9/23
25/10/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:24:42pm","","2023-12-02 07:59:07am","undelete");
INSERT INTO rep_tbl VALUES("1684","31520231115","101149","52100144","Akinsanya Bosede Olaide","Ope","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","33000.00","0.00","33000.00","Credit","confirmed","17/10/23
15/11/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:34:10pm","","2023-12-02 07:59:14am","undelete");
INSERT INTO rep_tbl VALUES("1685","31520231115","101149","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","33000.00","0.00","","confirmed","17/10/23
15/11/23","Sanni Bukola","Ajayi Adedoyin","2023-11-15","2023-11-15 12:34:10pm","","2023-12-02 07:59:14am","undelete");
INSERT INTO rep_tbl VALUES("1686","40120231201","117304","76324164","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","35000.00","0.00","35000.00","Credit","confirmed","14/11/23
1/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-01","2023-12-01 04:17:11pm","","2023-12-02 07:59:21am","undelete");
INSERT INTO rep_tbl VALUES("1687","40120231201","117304","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","35000.00","0.00","","confirmed","14/11/23
1/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-01","2023-12-01 04:17:11pm","","2023-12-02 07:59:21am","undelete");
INSERT INTO rep_tbl VALUES("1688","","441806","15195816","Anthony Mary Olufunke","Mary","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1689","","016536","57262736","Saheed Temitope Ruka","Ruka","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-07","","","","undelete");
INSERT INTO rep_tbl VALUES("1748","67320231205","126958","62439535","Ahmed Baba","Nupe","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","24000.00","0.00","24000.00","Credit","confirmed","16/11/23
4/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:49:34pm","","2023-12-06 08:00:28am","undelete");
INSERT INTO rep_tbl VALUES("1691","","467936","12496203","Onifade Kehinde Mary","Alahaja","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1692","","672985","89815169","Adedoyin Tope Funmilayo","Johnson","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1693","","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1694","","469928","86169210","Samson Latifat Abiodun","Okiki","Alago Chidera","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1695","","974743","60781269","Faboro Femi ","Divine","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1696","","779531","49112398","Ogunleye Sahid Ajasa","Saido","Shoyebi Folashade","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1697","","616309","61886101","Adesanmi Funke ","Funke","Shoyebi Folashade","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1698","","752410","48947065","Okorie gift oyinye","Good market","Oyaosho Folakemi","200000.00","200000.00","0.00","240000.00","0.00","240000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1699","","801029","47637591","Ogunkanbi Ishola ","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1700","","587862","60172708","Lidipe Babatunde ","Abaniseloluwa","Shoyebi Folashade","100000.00","100000.00","0.00","120000.00","0.00","120000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-14","","","","undelete");
INSERT INTO rep_tbl VALUES("1701","","547915","58811352","Obayomi Busola ","Chairman","Ibitomi Esther","80000.00","80000.00","0.00","96000.00","0.00","96000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1702","","126958","62439535","Ahmed Baba ","Nupe","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1703","","555148","03327212","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1704","","674427","20572329","Shogbola Oluwakemi Sarah","D Kings","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1705","","011570","46395161","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-15","","","","undelete");
INSERT INTO rep_tbl VALUES("1706","","657963","05181766","Yusuf Yetunde Abosede","Yetunde","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-16","","","","undelete");
INSERT INTO rep_tbl VALUES("1707","","349773","92466108","Ugoala Collins Chukwudi","Benzima","Ibitomi Esther","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1708","","696058","74274331","Adedayo Diyaolu felicia","Diyaolu","Oyaosho Folakemi","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1709","","450220","05390095","Badmus Jamiu ","Oremeta","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1710","","442064","83239648","Akande Funmilayo Grace","Funmilayo","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1711","","214077","39930215","Okpara Joshua Chigozie","Away","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-29","","","","undelete");
INSERT INTO rep_tbl VALUES("1712","","606280","32282169","Onyeka James Mmelu","Onyeka","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-24","","","","undelete");
INSERT INTO rep_tbl VALUES("1713","","201220","41696359","Okosun Abiola Seun","Anuoluwapo","Ibitomi Esther","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-24","","","","undelete");
INSERT INTO rep_tbl VALUES("1714","","223667","10355971","Okanlawon Muinat Adeyinka","Adeyinka","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-24","","","","undelete");
INSERT INTO rep_tbl VALUES("1715","","128919","51241924","Adisa Nofisat morenikeji","Princess","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-23","","","","undelete");
INSERT INTO rep_tbl VALUES("1716","","400080","45207427","Rasaq Fatimo ","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-23","","","","undelete");
INSERT INTO rep_tbl VALUES("1717","","354654","70047551","Adeniyi Basirat ","Basirat","Ibitomi Esther","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-23","","","","undelete");
INSERT INTO rep_tbl VALUES("1718","","862111","76568450","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","80000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1719","","327835","96836097","Olanrawaju Tajudeen Olamilekan","Eli","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1720","","972953","58304695","Oladejo Mariam Abioun","Mariam","Oyaosho Folakemi","70000.00","70000.00","0.00","84000.00","0.00","84000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1721","","580013","34917975","Emmanuel Rita Tega","Rita","Oyaosho Folakemi","50000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1722","","359147","69446959","Babatunde Bidemi Bukola","Bidemi","Oyaosho Folakemi","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1723","","724109","18144621","Obatoye Beatrice Oluwatoyin","Tosin","Oyaosho Folakemi","20000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1724","","480129","89113029","Obatoye Samuel Babatunde","Tosin","Oyaosho Folakemi","60000.00","50000.00","0.00","60000.00","0.00","60000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1725","","837860","50025694","Dasilva Tosin Joy","Tosin","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1726","","410460","75536084","Olajide Emmanuel ","UMARU","Omolayo Funmilayo","60000.00","60000.00","0.00","72000.00","0.00","72000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1727","","101149","46369315","Akinsanya Bosede Olaide","Ope","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","0.00","36000.00","0.00","","Confirmed","Loan Disbursed","","","2023-11-22","","","","undelete");
INSERT INTO rep_tbl VALUES("1728","84020231205","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","50000.00","0.00","50000.00","Credit","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:31:34am","","2023-12-06 08:00:34am","undelete");
INSERT INTO rep_tbl VALUES("1729","84020231205","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","50000.00","0.00","","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:31:34am","","2023-12-06 08:00:34am","undelete");
INSERT INTO rep_tbl VALUES("1730","26420231205","318572","01178616","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","27500.00","0.00","27500.00","Credit","confirmed","20/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:35:19am","","2023-12-06 08:00:41am","undelete");
INSERT INTO rep_tbl VALUES("1731","26420231205","318572","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","27500.00","0.00","","confirmed","20/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:35:19am","","2023-12-06 08:00:41am","undelete");
INSERT INTO rep_tbl VALUES("1732","92620231205","318572","01019749","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","48000.00","0.00","48000.00","Credit","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:36:06am","","2023-12-06 08:00:48am","undelete");
INSERT INTO rep_tbl VALUES("1733","92620231205","318572","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","48000.00","0.00","","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:36:06am","","2023-12-06 08:00:48am","undelete");
INSERT INTO rep_tbl VALUES("1734","26720231205","011570","46395161","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","40500.00","0.00","40500.00","Credit","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:38:58am","","2023-12-06 08:00:53am","undelete");
INSERT INTO rep_tbl VALUES("1735","26720231205","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","40500.00","0.00","","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:38:58am","","2023-12-06 08:00:53am","undelete");
INSERT INTO rep_tbl VALUES("1736","69120231205","011570","74492221","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:40:11am","","2023-12-06 08:00:59am","undelete");
INSERT INTO rep_tbl VALUES("1737","69120231205","011570","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:40:11am","","2023-12-06 08:00:59am","undelete");
INSERT INTO rep_tbl VALUES("1738","94320231205","161594","06957239","Fapodunda Yetunde Olanike","Comfort","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","3000.00","0.00","3000.00","Credit","confirmed","21/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:41:05am","","2023-12-06 08:01:05am","undelete");
INSERT INTO rep_tbl VALUES("1739","94320231205","161594","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","3000.00","0.00","","confirmed","21/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:41:05am","","2023-12-06 08:01:05am","undelete");
INSERT INTO rep_tbl VALUES("1740","10820231205","011570","80908011","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","50000.00","40000.00","0.00","48000.00","2000.00","0.00","2000.00","Credit","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:48:37am","","2023-12-06 08:01:11am","undelete");
INSERT INTO rep_tbl VALUES("1741","10820231205","011570","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","2000.00","0.00","","confirmed","30/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:48:37am","","2023-12-06 08:01:11am","undelete");
INSERT INTO rep_tbl VALUES("1742","53620231205","799395","26129367","Adebayo Wasiu Alabi","Alabi","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","13/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:51:36am","","2023-12-06 08:01:16am","undelete");
INSERT INTO rep_tbl VALUES("1743","53620231205","799395","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","13/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:51:36am","","2023-12-06 08:01:16am","undelete");
INSERT INTO rep_tbl VALUES("1744","32520231205","157714","30275084","Adeleke Tunmise Temitope","Morenike","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","36000.00","0.00","36000.00","Credit","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:59:24am","","2023-12-06 08:01:22am","undelete");
INSERT INTO rep_tbl VALUES("1745","32520231205","157714","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","36000.00","0.00","","confirmed","30/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 10:59:24am","","2023-12-06 08:01:22am","undelete");
INSERT INTO rep_tbl VALUES("1746","17520231205","862111","76568450","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","80000.00","60000.00","0.00","72000.00","7000.00","0.00","7000.00","Credit","confirmed","27/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 11:03:45am","","2023-12-06 08:01:27am","undelete");
INSERT INTO rep_tbl VALUES("1747","17520231205","862111","100129
","Loan Account","","","80000.00","60000.00","0.00","72000.00","","7000.00","0.00","","confirmed","27/11/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 11:03:45am","","2023-12-06 08:01:27am","undelete");
INSERT INTO rep_tbl VALUES("1749","67320231205","126958","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","24000.00","0.00","","confirmed","16/11/23
4/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:49:34pm","","2023-12-06 08:00:28am","undelete");
INSERT INTO rep_tbl VALUES("1750","72220231205","011570","46395161","Daodu Abosede Comfort","Comfort","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","3000.00","0.00","3000.00","Credit","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:51:10pm","","2023-12-06 08:01:32am","undelete");
INSERT INTO rep_tbl VALUES("1751","72220231205","011570","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","3000.00","0.00","","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:51:10pm","","2023-12-06 08:01:32am","undelete");
INSERT INTO rep_tbl VALUES("1752","70620231205","801029","47637591","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","30000.00","0.00","30000.00","Credit","confirmed","20/11/23
4/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:53:53pm","","2023-12-06 08:01:38am","undelete");
INSERT INTO rep_tbl VALUES("1753","70620231205","801029","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","30000.00","0.00","","confirmed","20/11/23
4/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:53:53pm","","2023-12-06 08:01:38am","undelete");
INSERT INTO rep_tbl VALUES("1754","22020231205","264038","37751180","Adedugba Taiwo Aderonke","Ope","Ajayi Adedoyin","50000.00","30000.00","0.00","36000.00","31500.00","0.00","31500.00","Credit","confirmed","17/10/23
28/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:55:42pm","","2023-12-06 08:01:49am","undelete");
INSERT INTO rep_tbl VALUES("1755","22020231205","264038","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","31500.00","0.00","","confirmed","17/10/23
28/10/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:55:42pm","","2023-12-06 08:01:49am","undelete");
INSERT INTO rep_tbl VALUES("1756","28720231205","101149","46369315","Akinsanya Bosede Olaide","Ope","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","10500.00","0.00","10500.00","Credit","confirmed","27/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:58:37pm","","2023-12-06 08:01:55am","undelete");
INSERT INTO rep_tbl VALUES("1757","28720231205","101149","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","10500.00","0.00","","confirmed","27/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 01:58:37pm","","2023-12-06 08:01:55am","undelete");
INSERT INTO rep_tbl VALUES("1758","36020231205","672985","89815169","Adedoyin Tope Funmilayo","Johnson","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","18000.00","0.00","18000.00","Credit","confirmed","20/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:00:27pm","","2023-12-06 08:02:00am","undelete");
INSERT INTO rep_tbl VALUES("1759","36020231205","672985","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","18000.00","0.00","","confirmed","20/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:00:27pm","","2023-12-06 08:02:00am","undelete");
INSERT INTO rep_tbl VALUES("1760","24020231205","223667","10355971","Okanlawon Muinat Adeyinka","Adeyinka","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","4500.00","0.00","4500.00","Credit","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:04:09pm","","2023-12-06 08:02:06am","undelete");
INSERT INTO rep_tbl VALUES("1761","24020231205","223667","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4500.00","0.00","","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:04:09pm","","2023-12-06 08:02:06am","undelete");
INSERT INTO rep_tbl VALUES("1762","24720231205","862111","76568450","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","80000.00","60000.00","0.00","72000.00","11500.00","0.00","11500.00","Credit","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:06:27pm","","2023-12-06 08:02:12am","undelete");
INSERT INTO rep_tbl VALUES("1763","24720231205","862111","100129
","Loan Account","","","80000.00","60000.00","0.00","72000.00","","11500.00","0.00","","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:06:27pm","","2023-12-06 08:02:12am","undelete");
INSERT INTO rep_tbl VALUES("1764","91520231205","657963","05181766","Yusuf Yetunde Abosede","Yetunde","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","13500.00","0.00","13500.00","Credit","confirmed","23/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:09:32pm","","2023-12-06 08:02:17am","undelete");
INSERT INTO rep_tbl VALUES("1765","91520231205","657963","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","13500.00","0.00","","confirmed","23/11/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:09:32pm","","2023-12-06 08:02:17am","undelete");
INSERT INTO rep_tbl VALUES("1766","71020231205","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","15000.00","0.00","15000.00","Credit","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:13:26pm","","2023-12-06 08:02:51am","undelete");
INSERT INTO rep_tbl VALUES("1767","71020231205","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","15000.00","0.00","","confirmed","1/12/23
5/12/23","Sanni Bukola","Ajayi Adedoyin","2023-12-05","2023-12-05 02:13:26pm","","2023-12-06 08:02:51am","undelete");
INSERT INTO rep_tbl VALUES("1768","26620231206","763868","06664042","Ajiboye Iyabo","ALORE","Omolayo Funmilayo","50000.00","20000.00","0.00","24000.00","36000.00","0.00","36000.00","Credit","pending","6/11/23
6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:14:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1769","26620231206","763868","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","36000.00","0.00","","pending","6/11/23
6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:14:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1770","55120231206","237689","50275074","Adio Mosurat","TAJU BELLO","Omolayo Funmilayo","50000.00","50000.00","0.00","60000.00","40000.00","0.00","40000.00","Credit","pending","10/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:18:38am","","","undelete");
INSERT INTO rep_tbl VALUES("1771","55120231206","237689","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","40000.00","0.00","","pending","10/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:18:38am","","","undelete");
INSERT INTO rep_tbl VALUES("1772","18620231206","606280","32282169","Onyeka James Mmelu","Onyeka","Omolayo Funmilayo","30000.00","30000.00","0.00","36000.00","10500.00","0.00","10500.00","Credit","pending","27/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:21:49am","","","undelete");
INSERT INTO rep_tbl VALUES("1773","18620231206","606280","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","10500.00","0.00","","pending","27/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:21:49am","","","undelete");
INSERT INTO rep_tbl VALUES("1774","14120231206","214077","39930215","Okpara Joshua Chigozie","Away","Omolayo Funmilayo","40000.00","40000.00","0.00","48000.00","10000.00","0.00","10000.00","Credit","pending","29/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:22:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1775","14120231206","214077","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","10000.00","0.00","","pending","29/11/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:22:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1776","25120231206","450220","05390095","Badmus Jamiu","Oremeta","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","4000.00","0.00","4000.00","Credit","pending","4/12/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:24:07am","","","undelete");
INSERT INTO rep_tbl VALUES("1777","25120231206","450220","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","4000.00","0.00","","pending","4/12/23
5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:24:07am","","","undelete");
INSERT INTO rep_tbl VALUES("1778","41120231206","555148","03327212","Akerele Yemi Dolapo","Dolapo","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","pending","5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:24:51am","","","undelete");
INSERT INTO rep_tbl VALUES("1779","41120231206","555148","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","pending","5/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 10:24:51am","","","undelete");
INSERT INTO rep_tbl VALUES("1780","29820231206","450220","05390095","Badmus Jamiu","Oremeta","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","2000.00","0.00","2000.00","Credit","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:06:27pm","","","undelete");
INSERT INTO rep_tbl VALUES("1781","29820231206","450220","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","2000.00","0.00","","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:06:27pm","","","undelete");
INSERT INTO rep_tbl VALUES("1782","26820231206","229704","33083135","Babatunde Olusegun","Coach","Ajayi Adedoyin","30000.00","30000.00","0.00","36000.00","1500.00","0.00","1500.00","Credit","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:07:18pm","","","undelete");
INSERT INTO rep_tbl VALUES("1783","26820231206","229704","100129
","Loan Account","","","30000.00","30000.00","0.00","36000.00","","1500.00","0.00","","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:07:18pm","","","undelete");
INSERT INTO rep_tbl VALUES("1784","64520231206","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:08:31pm","","","undelete");
INSERT INTO rep_tbl VALUES("1785","64520231206","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:08:31pm","","","undelete");
INSERT INTO rep_tbl VALUES("1786","95820231206","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","5000.00","0.00","5000.00","Credit","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:11:22pm","","","undelete");
INSERT INTO rep_tbl VALUES("1787","95820231206","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","5000.00","0.00","","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:11:22pm","","","undelete");
INSERT INTO rep_tbl VALUES("1788","48020231206","117304","76324164","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","2500.00","0.00","2500.00","Credit","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:11:50pm","","","undelete");
INSERT INTO rep_tbl VALUES("1789","48020231206","117304","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","2500.00","0.00","","pending","6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:11:50pm","","","undelete");
INSERT INTO rep_tbl VALUES("1790","93520231206","801029","47637591","Ogunkanbi Ishola","Ticket 1","Ajayi Adedoyin","60000.00","60000.00","0.00","72000.00","6000.00","0.00","6000.00","Credit","pending","5/12/23
6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:14:43pm","","","undelete");
INSERT INTO rep_tbl VALUES("1791","93520231206","801029","100129
","Loan Account","","","60000.00","60000.00","0.00","72000.00","","6000.00","0.00","","pending","5/12/23
6/12/23","","Ajayi Adedoyin","2023-12-06","2023-12-06 03:14:43pm","","","undelete");
INSERT INTO rep_tbl VALUES("1792","14420231207","724109","18144621","Obatoye Beatrice Oluwatoyin","Tosin","Oyaosho Folakemi","20000.00","50000.00","0.00","60000.00","27500.00","0.00","27500.00","Credit","pending","28/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:27:59pm","","","undelete");
INSERT INTO rep_tbl VALUES("1793","14420231207","724109","100129
","Loan Account","","","20000.00","50000.00","0.00","60000.00","","27500.00","0.00","","pending","28/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:27:59pm","","","undelete");
INSERT INTO rep_tbl VALUES("1794","41320231207","480129","89113029","Obatoye Samuel Babatunde","Tosin","Oyaosho Folakemi","60000.00","50000.00","0.00","60000.00","17500.00","0.00","17500.00","Credit","pending","23/11/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:29:26pm","","","undelete");
INSERT INTO rep_tbl VALUES("1795","41320231207","480129","100129
","Loan Account","","","60000.00","50000.00","0.00","60000.00","","17500.00","0.00","","pending","23/11/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:29:26pm","","","undelete");
INSERT INTO rep_tbl VALUES("1796","91520231207","700203","51277522","Oginni Bose Ayodeji","Iya koko","Oyaosho Folakemi","50000.00","20000.00","0.00","24000.00","4500.00","0.00","4500.00","Credit","pending","4/12/23
7/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:32:30pm","","","undelete");
INSERT INTO rep_tbl VALUES("1797","91520231207","700203","100129
","Loan Account","","","50000.00","20000.00","0.00","24000.00","","4500.00","0.00","","pending","4/12/23
7/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:32:30pm","","","undelete");
INSERT INTO rep_tbl VALUES("1798","63720231207","837860","50025694","Dasilva Tosin Joy","Tosin","Oyaosho Folakemi","20000.00","30000.00","0.00","36000.00","9000.00","0.00","9000.00","Credit","pending","29/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:33:51pm","","","undelete");
INSERT INTO rep_tbl VALUES("1799","63720231207","837860","100129
","Loan Account","","","20000.00","30000.00","0.00","36000.00","","9000.00","0.00","","pending","29/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:33:51pm","","","undelete");
INSERT INTO rep_tbl VALUES("1800","10920231207","972490","82854423","Lasisi zanib ashabi","Princess","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","32000.00","0.00","32000.00","Credit","pending","13/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:35:24pm","","","undelete");
INSERT INTO rep_tbl VALUES("1801","10920231207","972490","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","32000.00","0.00","","pending","13/11/23
6/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:35:24pm","","","undelete");
INSERT INTO rep_tbl VALUES("1802","20820231207","374982","30106147","Onakayode oluwatoyin precious","Toyin","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","84000.00","0.00","84000.00","Credit","pending","3/10/23
30/11/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:36:48pm","","","undelete");
INSERT INTO rep_tbl VALUES("1803","20820231207","374982","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","84000.00","0.00","","pending","3/10/23
30/11/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:36:48pm","","","undelete");
INSERT INTO rep_tbl VALUES("1804","37920231207","154758","44641723","Abanise Titilayo","Precious","Ajayi Adedoyin","50000.00","100000.00","0.00","120000.00","90500.00","0.00","90500.00","Credit","pending","5/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:41:35pm","","","undelete");
INSERT INTO rep_tbl VALUES("1805","37920231207","154758","100129
","Loan Account","","","50000.00","100000.00","0.00","120000.00","","90500.00","0.00","","pending","5/12/23","","Ajayi Adedoyin","2023-12-07","2023-12-07 12:41:35pm","","","undelete");
INSERT INTO rep_tbl VALUES("1806","63120231214","016536","57262736","Saheed Temitope Ruka","Ruka","Oyaosho Folakemi","50000.00","30000.00","0.00","36000.00","27000.00","0.00","27000.00","Credit","pending","9/11/23
5/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:31:38pm","","","undelete");
INSERT INTO rep_tbl VALUES("1807","63120231214","016536","100129
","Loan Account","","","50000.00","30000.00","0.00","36000.00","","27000.00","0.00","","pending","9/11/23
5/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:31:38pm","","","undelete");
INSERT INTO rep_tbl VALUES("1808","53520231214","752410","48947065","Okorie gift oyinye","Good market","Oyaosho Folakemi","200000.00","200000.00","0.00","240000.00","170000.00","0.00","170000.00","Credit","pending","14/11/23
6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:34:09pm","","","undelete");
INSERT INTO rep_tbl VALUES("1809","53520231214","752410","100129
","Loan Account","","","200000.00","200000.00","0.00","240000.00","","170000.00","0.00","","pending","14/11/23
6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:34:09pm","","","undelete");
INSERT INTO rep_tbl VALUES("1810","68920231214","932701","06564198","Salau Kabiru Abefe","K.b","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","26000.00","0.00","26000.00","Credit","pending","13/11/23
4/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:34:57pm","","","undelete");
INSERT INTO rep_tbl VALUES("1811","68920231214","932701","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","26000.00","0.00","","pending","13/11/23
4/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:34:57pm","","","undelete");
INSERT INTO rep_tbl VALUES("1812","42720231214","303142","76692642","Raheem modinat Abose","Eleja","Oyaosho Folakemi","50000.00","40000.00","0.00","48000.00","29500.00","0.00","29500.00","Credit","pending","20/11/23
6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:36:11pm","","","undelete");
INSERT INTO rep_tbl VALUES("1813","42720231214","303142","100129
","Loan Account","","","50000.00","40000.00","0.00","48000.00","","29500.00","0.00","","pending","20/11/23
6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:36:11pm","","","undelete");
INSERT INTO rep_tbl VALUES("1814","92120231214","434642","64024523","Babatunde Kemi Tayo","kemi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","48000.00","0.00","48000.00","Credit","pending","6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:37:31pm","","","undelete");
INSERT INTO rep_tbl VALUES("1815","92120231214","434642","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","48000.00","0.00","","pending","6/12/23","","Oyaosho Folakemi","2023-12-14","2023-12-14 01:37:31pm","","","undelete");
INSERT INTO rep_tbl VALUES("1816","84320231214","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","30000.00","0.00","30000.00","Credit","pending","7/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:45:07pm","","","undelete");
INSERT INTO rep_tbl VALUES("1817","84320231214","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","30000.00","0.00","","pending","7/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:45:07pm","","","undelete");
INSERT INTO rep_tbl VALUES("1818","55820231214","117304","76324164","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","50000.00","50000.00","0.00","60000.00","15000.00","0.00","15000.00","Credit","pending","7/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:46:13pm","","","undelete");
INSERT INTO rep_tbl VALUES("1819","55820231214","117304","100129
","Loan Account","","","50000.00","50000.00","0.00","60000.00","","15000.00","0.00","","pending","7/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:46:13pm","","","undelete");
INSERT INTO rep_tbl VALUES("1820","45820231214","400080","45207427","Rasaq Fatimo","Gudugba","Ajayi Adedoyin","40000.00","40000.00","0.00","48000.00","22000.00","0.00","22000.00","Credit","pending","29/11/23
                          14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:51:13pm","","","undelete");
INSERT INTO rep_tbl VALUES("1821","45820231214","400080","100129
","Loan Account","","","40000.00","40000.00","0.00","48000.00","","22000.00","0.00","","pending","29/11/23
                          14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:51:13pm","","","undelete");
INSERT INTO rep_tbl VALUES("1822","77320231214","862111","76568450","Rabiu Abosede Tawakalitu","Gudugba","Ajayi Adedoyin","80000.00","60000.00","0.00","72000.00","20000.00","0.00","20000.00","Credit","pending","6/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:52:36pm","","","undelete");
INSERT INTO rep_tbl VALUES("1823","77320231214","862111","100129
","Loan Account","","","80000.00","60000.00","0.00","72000.00","","20000.00","0.00","","pending","6/12/23
14/12/23","","Ajayi Adedoyin","2023-12-14","2023-12-14 01:52:36pm","","","undelete");
INSERT INTO rep_tbl VALUES("1824","","154758","87447813","Abanise Titilayo ","Precious","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2023-12-25","","","","undelete");
INSERT INTO rep_tbl VALUES("1825","","255959","79190580","Owolabi Olanike Iyabode","Bidemi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-12-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1826","","255959","79190580","Owolabi Olanike Iyabode","Bidemi","Oyaosho Folakemi","40000.00","40000.00","0.00","48000.00","0.00","48000.00","0.00","","Confirmed","Loan Disbursed","","","2023-12-06","","","","undelete");
INSERT INTO rep_tbl VALUES("1827","38020231226","154758","87447813","Abanise Titilayo","Precious","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","2000.00","0.00","2000.00","Credit","pending","loan repayment 26/12/2023","","Admin Admin","2023-12-26","2023-12-26 10:26:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1828","38020231226","154758","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","2000.00","0.00","","pending","loan repayment 26/12/2023","","Admin Admin","2023-12-26","2023-12-26 10:26:53am","","","undelete");
INSERT INTO rep_tbl VALUES("1829","12620231227","318572","70604722","Odeyale Olalekan Afiz","Isholiki","Ajayi Adedoyin","100000.00","100000.00","0.00","120000.00","4000.00","0.00","4000.00","Credit","pending","","","Admin Admin","2023-12-27","2023-12-27 07:40:42am","","","undelete");
INSERT INTO rep_tbl VALUES("1830","12620231227","318572","100129
","Loan Account","","","100000.00","100000.00","0.00","120000.00","","4000.00","0.00","","pending","","","Admin Admin","2023-12-27","2023-12-27 07:40:42am","","","undelete");
INSERT INTO rep_tbl VALUES("1831","","117304","45978114","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","0.00","24000.00","0.00","","Confirmed","Loan Disbursed","","","2024-01-08","","","","undelete");
INSERT INTO rep_tbl VALUES("1832","41620240108","117304","45978114","Balogun Adenike Toyosi","Isholiki","Ajayi Adedoyin","20000.00","20000.00","0.00","24000.00","1000.00","0.00","1000.00","Credit","confirmed","loan repayment","Admin Admin","Admin Admin","2024-01-08","2024-01-08 05:44:12pm","","2024-01-08 05:46:38pm","undelete");
INSERT INTO rep_tbl VALUES("1833","41620240108","117304","100129
","Loan Account","","","20000.00","20000.00","0.00","24000.00","","1000.00","0.00","","confirmed","loan repayment","Admin Admin","Admin Admin","2024-01-08","2024-01-08 05:44:12pm","","2024-01-08 05:46:38pm","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO staff_tbl VALUES("11","191970","Admin","Admin","Admin","08065138173","Male","2022-07-21","Single","HND AGRIC EXTENSION","Akwa Ibom","Driver Licence","99237320779","22253260060","Josh.jpeg","joshua_atansuyi@yahoo.com","Joshua123","Admin","Ayomide","Ogun","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN ADE","Aladura B/Stop, Matogun Road, Ogun State.","08027580601","brother","","","2021-03-20","2024-01-08","Admin Admin","undelete","Active");
INSERT INTO staff_tbl VALUES("45","580460","Alago","Chidera","Virginia","09067063576","Female","2000-06-13","Single","O level","Akwa Ibom","National Identity Number","","","IMG-20230608-WA0031 (1).jpg","alagovirgnia8@gmail.com","2000","Credit Officer","IJU","Akwa Ibom","16, Adesanya Street Off Oke Ayo Road Iju Ishaga","Nigeria","Alago Chinecheren","16, Adesanya Street Off Oke Ayo Road Iju Ishaga","08126704660","Sister","Not Available","Ajayi Adedoyin","2023-06-08","2023-06-08","Ajayi Adedoyin","undelete","Active");
INSERT INTO staff_tbl VALUES("44","303256","Oyaosho","Folakemi","Esther","08105263246","Female","1989-12-19","Married","NCE","Akwa Ibom","National Identity Number","","","1686237292933.jpg","oyaoshoesther@gmail.com","4195","Credit Officer","IJU","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","Akorede mobolaji","8, Ahalaja Olomi Street Olagun Bus Stop ijoko","09077192937","Son","Not Available","Ajayi Adedoyin","2023-06-08","","Ajayi Adedoyin","undelete","Active");
INSERT INTO staff_tbl VALUES("43","243592","Ajayi","Adedoyin","Oluwatosin","08068404205","Female","1986-03-02","Married","ND","Akwa Ibom","National Identity Number","","22143648235","IMG_20230603_102422_11zon.jpg","adedoyinajayi69@gmail.com","4545","Admin","IJU","Akwa Ibom","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State.","Nigeria","Ajayi Oluwasemilore","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State","07034187299","Daughter","Not Available","Atansuyi Emmanuel","2023-06-03","2023-06-09","Ajayi Adedoyin","undelete","Active");
INSERT INTO staff_tbl VALUES("46","952614","Sanni","Bukola","Hajarat","08182796575","Female","1984-01-06","Married","BSC","Akwa Ibom","National Identity Number","","22258587506","IMG_20230609_092530 (1).jpg","empowerment@gmail.com","5050","Admin","IJU","Akwa Ibom","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State.","Nigeria","Michael","10, Alhaji Adenekan Street Off Taju-Bello","08169499600","Son","Not Available","Ajayi Adedoyin","2023-06-09","2023-06-24","Sanni Bukola","undelete","Active");
INSERT INTO staff_tbl VALUES("47","818738","Shoyebi","Folashade","Omowunmi","08062163760","Female","1977-08-24","Married","BSC","Akwa Ibom","National Identity Number","98851328115","22589924258","IMG_20230608_163238.jpg","demiral@gmail.com","1804","Credit Officer","IJU","Akwa Ibom","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State.","Nigeria","Shoyebi Mayowa","No 5 Sijuade Street Off Oke Aro Road Enilolobo Bus/Stop.","08062163760","Son","Not Available","Ajayi Adedoyin","2023-06-14","","Ajayi Adedoyin","undelete","Active");
INSERT INTO staff_tbl VALUES("48","964030","Omolayo","Funmilayo","Racheal","08164437699","Female","1989-07-27","Married","BSC","Akwa Ibom","National Identity Number","11111","11111","IMG_20230619_092854.jpg","omolayofunmilayo55@gmail.com","8912","Credit Officer","IJU","Akwa Ibom","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State.","Nigeria","Omolayo Temitope","7 Olukotun Street Yewande","08032530504","Husband","Not Available","Ajayi Adedoyin","2023-06-19","","Ajayi Adedoyin","undelete","Active");
INSERT INTO staff_tbl VALUES("49","657458","Ibitomi","Esther","Folashade","09159186537","Female","1999-04-09","Single","HND","Akwa Ibom","National Identity Number","7559159366","22456974665","IMG_20230703_090452.jpg","estheribitomi@gmail.com","1999","Credit Officer","IJU","Akwa Ibom","5, Kehinde Shogunro Street Off Balogun Iju Ishaga Lagos State.","Nigeria","Ibitomi Isaiah","8, Old Path Street Water Bus Stop","07081164081","Brother","Not Available","Ajayi Adedoyin","2023-07-03","2024-01-08","Admin Admin","undelete","Active");



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
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO sublink_tbl VALUES("52","Post Entry","16","Active","memsavingsdep.php","Atansuyi EMMANUEL","2022-11-25","2022-11-25 09:00:22am","","");
INSERT INTO sublink_tbl VALUES("51","Member Posting","16","Inactive","postentries.php","Atansuyi emmanuel","2022-11-17","2022-11-17 02:45:54pm","","");
INSERT INTO sublink_tbl VALUES("49","Posting Confirmation","16","Active","confirmmemsaving.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:34:08am","","");
INSERT INTO sublink_tbl VALUES("48","Daily Savings Deposit","16","Inactive","dailysaving-deposit.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:26:47am","","");
INSERT INTO sublink_tbl VALUES("44","Confirm Entry","15","Active","confirmrepayment2.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:40:17pm","","");
INSERT INTO sublink_tbl VALUES("50","History","16","Active","memsavingshistory.php","Atansuyi emmanuel","2022-11-17","2022-11-17 01:23:14pm","","");
INSERT INTO sublink_tbl VALUES("47","View Jurisdiction","12","Active","viewjurisdiction.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:28:48am","","");
INSERT INTO sublink_tbl VALUES("46","Add Sub Link","12","Inactive","add-sublink.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:25:19am","","");
INSERT INTO sublink_tbl VALUES("45","View Reports","17","Active","reports.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:41:09pm","","");
INSERT INTO sublink_tbl VALUES("43","Loan Repayment","15","Active","loanrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:50pm","","");
INSERT INTO sublink_tbl VALUES("41","Loan History","15","Active","loanhistory.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:39pm","","");
INSERT INTO sublink_tbl VALUES("42","Initial Deposit","16","InActive","initialdeposit.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:19pm","","");
INSERT INTO sublink_tbl VALUES("40","Loan Application Status","15","Active","loan-application-status.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:09pm","","");
INSERT INTO sublink_tbl VALUES("39","Apply for Loan","15","Active","loangroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:37:22pm","","");
INSERT INTO sublink_tbl VALUES("38","View member (Group)","14","Active","member-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:51pm","","");
INSERT INTO sublink_tbl VALUES("37","Add Member","14","Active","account-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:16pm","","");
INSERT INTO sublink_tbl VALUES("36","Approve Staff","13","Active","view-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:35pm","","");
INSERT INTO sublink_tbl VALUES("35","Add Staff","13","Active","add-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:03pm","","");
INSERT INTO sublink_tbl VALUES("34","View Group","12","Active","viewgroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:34:17pm","","");
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
INSERT INTO sublink_tbl VALUES("65","All Loan History","15","Active","allloanhistory.php","Admin Admin","2023-07-11","2023-07-11 02:30:04pm","","");
INSERT INTO sublink_tbl VALUES("66","Total Reg. Member","14","Active","totalregmem.php","Admin Admin","2023-07-21","2023-07-21 08:29:59am","","");
INSERT INTO sublink_tbl VALUES("67","Inactive Member","14","Active","inactivemember.php","Admin Admin","2023-07-21","2023-07-21 08:30:54am","","");
INSERT INTO sublink_tbl VALUES("68","Loan History (Admin)","15","Active","loan_history_admin.php","Admin Admin","2023-12-05","2023-12-05 10:41:55am","","");
INSERT INTO sublink_tbl VALUES("69","Apply for Loan(Admin)","15","Active","loangroup2.php","Admin Admin","2024-01-08","2024-01-08 04:01:42pm","","");



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


