

CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `creation_date` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

INSERT INTO bank VALUES("68","581588","ATANSUYI JOSHUA B.","UNITED BANK FOR AFRICA PLC","0141843112","2023-03-20 22:26:50","Atansuyi emmanuel");
INSERT INTO bank VALUES("69","528192","AKINFEMI FEMI","UNITY BANK","2534875767","2023-04-03 17:51:19","Atansuyi emmanuel");
INSERT INTO bank VALUES("70","034312","","","","2023-04-05 17:01:23","");



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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO dailysaving VALUES("7","475071","MRS","ADEWALE","NA","08045454545","Female","ABOSEDE","2022-11-22","2022-12-01","ADEPOJU ABOSEDE","ADEPOJU ABOSEDE","undelete");
INSERT INTO dailysaving VALUES("6","254736","ARIYO","IYABO","NA","08222222222","Female","ABOSEDE","2022-11-15","2022-12-18","ADEPOJU ABOSEDE","Atansuyi emmanuel","undelete");
INSERT INTO dailysaving VALUES("8","066564","IBIKUNLE","AMINAT","NA","09136728010","Female","OYELADUN","2022-12-08","","OYEWO OYELADUN","","undelete");



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
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

INSERT INTO data_entry_tbl VALUES("305","1490352520230123","475071","MRS ADEWALE NA","ABOSEDE","1000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-23","2023-01-23 09:29:50 am");
INSERT INTO data_entry_tbl VALUES("304","1826355520230115","475071","MRS ADEWALE NA","ABOSEDE","1000.00","dep","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-15","2023-01-15 01:40:56 am");
INSERT INTO data_entry_tbl VALUES("303","1665079320230111","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","N/A","CD","Credit","Cash","Processing","delete","moved","Atansuyi emmanuel","","2023-01-11","2023-01-11 10:07:45 am");
INSERT INTO data_entry_tbl VALUES("302","1331716420230111","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash dep.","N/A","CD","Credit","Cash","Processing","delete","moved","Atansuyi emmanuel","","2023-01-11","2023-01-11 09:00:38 am");
INSERT INTO data_entry_tbl VALUES("301","1659079220230104","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","cash dep.","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-04","2023-01-04 01:07:18 pm");
INSERT INTO data_entry_tbl VALUES("300","1627871520230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","rev. of cash wtd.","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:02:42 pm");
INSERT INTO data_entry_tbl VALUES("299","1721256820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","2500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 09:59:34 pm");
INSERT INTO data_entry_tbl VALUES("298","1280637020230102","475071","MRS ADEWALE NA","ABOSEDE","500.00","cash wtd","N/A","CW","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 07:46:38 pm");
INSERT INTO data_entry_tbl VALUES("297","1117660520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","reversal entry of m. charges- 066564","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:05:13 pm");
INSERT INTO data_entry_tbl VALUES("295","1778247120230102","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:36:13 am");
INSERT INTO data_entry_tbl VALUES("296","1356511820230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:02:13 pm");
INSERT INTO data_entry_tbl VALUES("294","1782854020230102","475071","MRS ADEWALE NA","ABOSEDE","2000.00","cash deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:35:51 am");
INSERT INTO data_entry_tbl VALUES("293","1043596520230102","066564","IBIKUNLE AMINAT NA","OYELADUN","200.00","monthly charges","N/A","XD","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:31:17 am");
INSERT INTO data_entry_tbl VALUES("292","1999592320230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash deposit","N/A","XC","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:29:53 am");
INSERT INTO data_entry_tbl VALUES("291","1153805220230102","066564","IBIKUNLE AMINAT NA","OYELADUN","300.00","cash withdrawal","N/A","CW","Debit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:28:24 am");
INSERT INTO data_entry_tbl VALUES("290","1966341620230102","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:26:50 am");
INSERT INTO data_entry_tbl VALUES("306","1846041220230225","066564","IBIKUNLE AMINAT NA","OYELADUN","1000.00","ds deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:38 pm");
INSERT INTO data_entry_tbl VALUES("307","1938334820230225","066564","IBIKUNLE AMINAT NA","OYELADUN","500.00","deposit","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-02-25","2023-02-25 06:09:56 pm");
INSERT INTO data_entry_tbl VALUES("308","1912494620230325","475071","MRS ADEWALE NA","ABOSEDE","1000.00","loan repayment","N/A","CD","Credit","Cash","Confirmed","undelete","moved","Atansuyi emmanuel","Atansuyi emmanuel","2023-03-25","2023-03-25 08:24:44 pm");



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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO general_ledger_tbl VALUES("1","100275","Daily Savings Income","income","Active","undelete","2022-11-23","Atansuyi EMMANUEL");
INSERT INTO general_ledger_tbl VALUES("2","100615","Loan Income","liability","Active","undelete","2022-11-23","Atansuyi EMMANUEL");
INSERT INTO general_ledger_tbl VALUES("14","100999","Daily Savings Deposit","liability","Active","undelete","2022-12-27","Atansuyi emmanuel");



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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;




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
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

INSERT INTO income_tbl VALUES("127","1331716420230111","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","500.00","0.00","Confirmed","delete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-11","2023-01-11 09:00:38 am");
INSERT INTO income_tbl VALUES("128","1665079320230111","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","200.00","0.00","Confirmed","delete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-11","2023-01-11 10:07:45 am");
INSERT INTO income_tbl VALUES("129","1826355520230115","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","1000.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-15","2023-01-15 01:40:56 am");
INSERT INTO income_tbl VALUES("126","1659079220230104","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","200.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-04","2023-01-04 01:07:18 pm");
INSERT INTO income_tbl VALUES("125","1627871520230102","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","500.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:02:42 pm");
INSERT INTO income_tbl VALUES("124","1721256820230102","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","2500.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 09:59:34 pm");
INSERT INTO income_tbl VALUES("123","1280637020230102","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","0.00","500.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 07:46:38 pm");
INSERT INTO income_tbl VALUES("122","1117660520230102","100275","Daily Savings Income","066564","IBIKUNLE AMINAT NA","200.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:05:13 pm");
INSERT INTO income_tbl VALUES("121","1356511820230102","100275","Daily Savings Income","066564","IBIKUNLE AMINAT NA","0.00","200.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 12:02:13 pm");
INSERT INTO income_tbl VALUES("120","1778247120230102","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","500.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:36:13 am");
INSERT INTO income_tbl VALUES("119","1782854020230102","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","2000.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 11:35:51 am");
INSERT INTO income_tbl VALUES("118","1043596520230102","100275","Daily Savings Income","066564","IBIKUNLE AMINAT NA","0.00","200.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:31:17 am");
INSERT INTO income_tbl VALUES("117","1999592320230102","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","300.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:29:53 am");
INSERT INTO income_tbl VALUES("116","1153805220230102","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","0.00","300.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:28:24 am");
INSERT INTO income_tbl VALUES("115","1966341620230102","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","1000.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi emmanuel","2023-01-02","2023-01-02 10:26:50 am");
INSERT INTO income_tbl VALUES("130","1490352520230123","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","1000.00","0.00","Confirmed","undelete","Atansuyi Emmanuel","Atansuyi Emmanuel","2023-01-23","2023-01-23 09:29:50 am");
INSERT INTO income_tbl VALUES("131","1846041220230225","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","1000.00","0.00","Confirmed","undelete","Atansuyi emmanuel","","2023-02-25","2023-02-25 06:09:38 pm");
INSERT INTO income_tbl VALUES("132","1938334820230225","100999","Daily Savings Deposit","066564","IBIKUNLE AMINAT NA","500.00","0.00","Confirmed","undelete","Atansuyi emmanuel","","2023-02-25","2023-02-25 06:09:56 pm");
INSERT INTO income_tbl VALUES("133","1912494620230325","100999","Daily Savings Deposit","475071","MRS ADEWALE NA","1000.00","0.00","Confirmed","undelete","Atansuyi emmanuel","","2023-03-25","2023-03-25 08:24:44 pm");



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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO jurisdiction VALUES("11","Nigeria","OGUN","IFO","OKE ARO","Active","Atansuyi emmanuel","2023-03-20","","","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO link_tbl VALUES("13","Staff","Active","bx bxs-user","Atansuyi emmanuel","2022-08-02","2022-08-02 12:57:49pm","","");
INSERT INTO link_tbl VALUES("14","Member","Active","bx bxs-user-plus","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:27pm","","");
INSERT INTO link_tbl VALUES("15","Loans","Active","bx bx-money","Atansuyi emmanuel","2022-08-02","2022-08-02 12:58:51pm","","");
INSERT INTO link_tbl VALUES("16","Daily Savings","Active","fas fa-fax","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:19pm","","");
INSERT INTO link_tbl VALUES("17","Reports","Active","fas fa-receipt","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:46pm","","");
INSERT INTO link_tbl VALUES("12","Setup","Active","fas fa-tools","Atansuyi emmanuel","2022-08-02","2022-08-02 12:51:18pm","","");



CREATE TABLE `link_useraccess` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `sublink_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_permission` varchar(5) NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=910 DEFAULT CHARSET=latin1;

INSERT INTO link_useraccess VALUES("808","12","54","11","True","2023-03-06");
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
INSERT INTO link_useraccess VALUES("807","12","53","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("806","12","32","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("805","12","33","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("804","12","34","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("803","13","35","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("802","13","36","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("801","14","37","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("800","14","38","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("799","15","39","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("798","15","40","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("797","15","41","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("796","15","43","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("795","17","45","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("794","12","47","11","True","2023-03-06");
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
INSERT INTO link_useraccess VALUES("793","16","50","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("792","15","44","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("791","16","49","11","True","2023-03-06");
INSERT INTO link_useraccess VALUES("790","16","52","11","True","2023-03-06");
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
INSERT INTO link_useraccess VALUES("809","15","55","11","True","2023-03-06");
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
INSERT INTO link_useraccess VALUES("890","16","52","39","False","2023-04-05");
INSERT INTO link_useraccess VALUES("891","16","49","39","False","2023-04-05");
INSERT INTO link_useraccess VALUES("892","15","44","39","False","2023-04-05");
INSERT INTO link_useraccess VALUES("893","16","50","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("894","12","47","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("895","17","45","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("896","15","43","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("897","15","41","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("898","15","40","39","False","2023-04-05");
INSERT INTO link_useraccess VALUES("899","15","39","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("900","14","38","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("901","14","37","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("902","13","36","39","False","2023-04-05");
INSERT INTO link_useraccess VALUES("903","13","35","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("904","12","34","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("905","12","33","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("906","12","32","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("907","12","53","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("908","12","54","39","True","2023-04-05");
INSERT INTO link_useraccess VALUES("909","15","55","39","True","2023-04-05");



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
  `applied_amount` double(10,2) NOT NULL,
  `approved_amount` double(10,2) DEFAULT NULL,
  `total_payable` double(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;




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
  `qualification` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `upd` date DEFAULT NULL,
  `created_by` varchar(150) DEFAULT NULL,
  `updated_by` varchar(150) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;




CREATE TABLE `repayment_tbl` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `applied_amount` double(10,2) DEFAULT '0.00',
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;




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
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO staff_tbl VALUES("11","191970","Atansuyi","emmanuel","Oluwaseun","08065138173","Male","2022-07-21","Single","HND AGRIC EXTENSION","Akwa Ibom","Driver Licence","99237320779","22253260060","UZOMA MIRACLE.jpeg","adura@yahoo.com","Joshua#123","Super Admin","Ayomide","Ogun","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN ADE","Aladura B/Stop, Matogun Road, Ogun State.","08027580601","brother","","","2021-03-20","2022-09-08","Atansuyi emmanuel","undelete","");
INSERT INTO staff_tbl VALUES("39","034312","AKINSANYA","TITILOPE","GANIYAT","09092992929","Male","1999-09-23","Single","BSC ARTS &amp; LANGUAGE","Akwa Ibom","Driver Licence","19233342232","22253260060","2.png","titilope@gmail.com","Titilope","Credit Officer","OKE ARO","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","AKINSANYA NIKE","24, Oke-Aro road, ifo, ogun state.","08028838383","MOTHER","Available","Atansuyi emmanuel","2023-04-05","","","undelete","Inactive");
INSERT INTO staff_tbl VALUES("38","528192","AKINFEMI","OLATUNDE","IFE","09023878888","Male","2022-11-27","Single","HND COMPUTER SCIENCE","Akwa Ibom","National Identity Number","98989898989","22253260060","utility bill ogungbemi.jpeg","akinfemi@gmail.com","Akinfemi123","Admin","OKE ARO","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","ADEGOKE ISHOLA","SAME AS ABOVE","09092773737","MOTHER","Available","Atansuyi emmanuel","2023-04-03","2023-04-03","Atansuyi emmanuel","undelete","Inactive");



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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO sublink_tbl VALUES("52","Daily Savings Posting","16","Active","dailysaving-mcharges.php","Atansuyi EMMANUEL","2022-11-25","2022-11-25 09:00:22am","","");
INSERT INTO sublink_tbl VALUES("51","Daily Savings Posting","16","Inactive","postentries.php","Atansuyi emmanuel","2022-11-17","2022-11-17 02:45:54pm","","");
INSERT INTO sublink_tbl VALUES("49","Daily Savings Confirmation","16","Active","confirmdailysaving.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:34:08am","","");
INSERT INTO sublink_tbl VALUES("48","Daily Savings Deposit","16","Inactive","dailysaving-deposit.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:26:47am","","");
INSERT INTO sublink_tbl VALUES("44","Confirm Entry","15","Active","confirmrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:40:17pm","","");
INSERT INTO sublink_tbl VALUES("50","Daily Savings History","16","Active","dailysavings-history.php","Atansuyi emmanuel","2022-11-17","2022-11-17 01:23:14pm","","");
INSERT INTO sublink_tbl VALUES("47","View Jurisdiction","12","Active","viewjurisdiction.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:28:48am","","");
INSERT INTO sublink_tbl VALUES("46","Add Sub Link","12","Inactive","add-sublink.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:25:19am","","");
INSERT INTO sublink_tbl VALUES("45","View Reports","17","Active","reports.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:41:09pm","","");
INSERT INTO sublink_tbl VALUES("43","Loan Repayment","15","Active","loanrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:50pm","","");
INSERT INTO sublink_tbl VALUES("41","Loan History","15","Active","loanhistory.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:39pm","","");
INSERT INTO sublink_tbl VALUES("42","Initial Deposit","16","InActive","initialdeposit.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:19pm","","");
INSERT INTO sublink_tbl VALUES("40","Loan Request Status","15","Active","loan-request.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:09pm","","");
INSERT INTO sublink_tbl VALUES("39","Apply for Loan","15","Active","loangroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:37:22pm","","");
INSERT INTO sublink_tbl VALUES("38","View member","14","Active","member-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:51pm","","");
INSERT INTO sublink_tbl VALUES("37","Add Member","14","Active","account-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:16pm","","");
INSERT INTO sublink_tbl VALUES("36","View Staff","13","Active","view-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:35pm","","");
INSERT INTO sublink_tbl VALUES("35","Add Staff","13","Active","add-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:03pm","","");
INSERT INTO sublink_tbl VALUES("34","View Group","12","Active","viewgroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:34:17pm","","");
INSERT INTO sublink_tbl VALUES("33","Add Group","12","Active","add-group.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:06:11pm","","");
INSERT INTO sublink_tbl VALUES("32","Add Jurisdiction","12","Active","jurisdiction.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:02:54pm","","");
INSERT INTO sublink_tbl VALUES("53","Add Branch","12","Active","add-branch.php","Atansuyi emmanuel","2023-02-24","2023-02-24 07:05:07am","","");
INSERT INTO sublink_tbl VALUES("54","View Branch","12","Active","viewbranch.php","Atansuyi emmanuel","2023-02-24","2023-02-24 09:56:05am","","");
INSERT INTO sublink_tbl VALUES("55","Pending Loan Request","15","Active","pendingloan-request.php","Atansuyi emmanuel","2023-03-06","2023-03-06 04:32:37pm","","");



CREATE TABLE `temp_rep_tbl` (
  `temp_rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `applied_amount` double(10,2) DEFAULT '0.00',
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
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;


