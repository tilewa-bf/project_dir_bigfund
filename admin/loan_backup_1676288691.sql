

CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

INSERT INTO bank VALUES("58","419623","","","");
INSERT INTO bank VALUES("57","691137","","","");
INSERT INTO bank VALUES("56","561934","","","");
INSERT INTO bank VALUES("55","766492","","","");
INSERT INTO bank VALUES("59","707830","","","");



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
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=latin1;

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
  `status` varchar(8) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO group_tbl VALUES("11","IFEOLUWA","NA","08022222222","Active","ADEPOJU ABOSEDE","2022-12-06","","","undelete");
INSERT INTO group_tbl VALUES("10","GOODNESS GROUP","NA","08022222222","Active","ADEPOJU ABOSEDE","2022-11-28","Atansuyi emmanuel","2022-12-21","undelete");
INSERT INTO group_tbl VALUES("9","GOODNESS","NA","08022222222","Active","ADEPOJU ABOSEDE","2022-11-28","ADEPOJU ABOSEDE","2022-11-28","deleted");
INSERT INTO group_tbl VALUES("8","GODS FAVOUR","NA","08022222222","Active","OYEWO OYELADUN","2022-11-11","Atansuyi emmanuel","2022-12-21","undelete");
INSERT INTO group_tbl VALUES("7","OYE","ABOLAJI ISLAMIAT","08121749112","Active","OYEWO OYELADUN","2022-11-10","","","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO jurisdiction VALUES("10","Nigeria","OGUN","IFO","MATOGUN","Active","ADEPOJU ABOSEDE","2022-12-06","","","undelete");
INSERT INTO jurisdiction VALUES("9","Nigeria","OGUN","IFO","OLOMOWEWE","Active","ADEPOJU ABOSEDE","2022-11-28","","","undelete");
INSERT INTO jurisdiction VALUES("8","Nigeria","OGUN","IFO","AGBADO CROSING","Active","OYEWO OYELADUN","2022-11-11","Atansuyi emmanuel","2022-12-21","undelete");
INSERT INTO jurisdiction VALUES("7","Nigeria","OGUN","IFO","AGBADO","Active","Atansuyi emmanuel","2022-11-10","","","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=734 DEFAULT CHARSET=latin1;

INSERT INTO link_useraccess VALUES("710","13","36","11","True","2022-12-17");
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
INSERT INTO link_useraccess VALUES("709","14","37","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("708","14","38","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("707","15","39","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("706","15","40","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("705","15","41","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("704","15","43","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("703","17","45","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("702","12","47","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("701","16","50","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("700","15","44","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("699","16","48","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("698","16","49","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("697","16","51","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("696","16","52","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("728","14","37","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("727","14","38","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("726","15","39","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("725","15","40","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("724","15","41","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("723","15","43","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("722","17","45","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("721","12","47","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("720","16","50","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("719","15","44","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("718","16","48","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("717","16","49","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("716","16","51","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("715","16","52","23","True","2022-12-17");
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
INSERT INTO link_useraccess VALUES("711","13","35","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("712","12","34","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("713","12","33","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("714","12","32","11","True","2022-12-17");
INSERT INTO link_useraccess VALUES("729","13","36","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("730","13","35","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("731","12","34","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("732","12","33","23","True","2022-12-17");
INSERT INTO link_useraccess VALUES("733","12","32","23","True","2022-12-17");



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
  `loan_purpose` varchar(255) NOT NULL,
  `income` double(10,2) DEFAULT NULL,
  `loan_amount` double(10,2) NOT NULL,
  `compulsory_sav` double(10,2) NOT NULL,
  `total_payable` double(10,2) NOT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `date_granted` date NOT NULL,
  `expiry_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `status2` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

INSERT INTO loan_request VALUES("48","36648312","159602","KEMISOLA ADEOSUN FUNNMILAYO","08065138173","Choose Group","emmanuel","DAVID ADETORO","08027580601","Screenshot_20221221-095602.png","Available","brother","1, CAC STR. AMUBIOYA STR.","EDUCATION","International Passport","B234023923232323232","To augment my working capital for my business","90000.00","90000.00","5500.00","95500.00","loan and initial deposit","2023-02-09","2023-02-09","Atansuyi emmanuel","2023-02-09","","","pending","undelete","Not yet confirm");
INSERT INTO loan_request VALUES("47","42114432","694830","OLAGOKE TITILOPE NURIAT","08167429471","Choose Group","ABOSEDE","KEMI DADA","09099999099","images (4).jpeg","Available","SISTER","3, ABERENJA STREET, OKERUBE IKOTUN, LAGOS STATE","PRINTER","Voter Card","192333422323239898","To augment my working capital for my business","90000.00","90000.00","5500.00","95500.00","loan and initial deposit","2023-01-31","2023-03-03","Atansuyi emmanuel","2023-01-31","Atansuyi emmanuel","","confirmed","undelete","Not yet confirm");



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
  `group_name` varchar(100) DEFAULT NULL,
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
  `relationship` varchar(25) DEFAULT NULL,
  `kin_address` varchar(225) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `upd` date DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("53","164795","Oladokun","Iyabode","Aminat","08167429471","TRADER","2022-11-14","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","38954189912","22222222222","WIN_20221114_11_26_37_Pro.jpg","ABOSEDE","10, fagbohun street crossing water bus stopog","30, crossing market","OGUN","Nigeria","OLAIDE IDOWU","08148904150","DAUGHTER","14, MAO JUNCTION CROSSING","SSCE","2022-11-14","2022-11-14","ADEPOJU ABOSEDE","ADEPOJU ABOSEDE","undelete");
INSERT INTO member VALUES("52","694830","OLAGOKE","TITILOPE","NURIAT","08167429471","HAIR DRESSER","2022-11-11","donis@yahoo.com","Female","Choose Group","National Identity Number","22001263966","22222222222","WIN_20221111_12_14_33_Pro.jpg","ABOSEDE","12, WASIMI STREET ABULE OKEARO","43, AGBADO ROAD ZENITH BUS STOP OKE ARO","OGUN","Nigeria","AYARA EMMANUEL","08122578402","SON","43, AGBADO ROAD ZENITH BUS STOP OKE ARO","SSCE","2022-11-11","2022-11-17","ADEPOJU ABOSEDE","ADEPOJU ABOSEDE","deleted");
INSERT INTO member VALUES("51","230285","AKINSANYA","OLALEKAN","ABDULAI","09137787413","FURNITURE","2022-11-11","donis@yahoo.com","Male","GODS FAVOUR","Choose Means of ID","99595295292","22222222222","AKINSANYA OLALEKAN.jpg","ABOSEDE","36, IGBALAJOBI STREET, ASUJE BUS STOP","36, IGBALAJOBI STREET, ASUJE BUS STOP","OGUN","Nigeria","AKINSANYA ABDULRAZAQ","09137787413","SON","36, IGBALAJOBI STREET, ASUJE BUS STOP","NA","2022-11-11","2022-11-11","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("50","795628","RABIU","AFUSAT","MUMMY AYOBAMI","08052611061","TRADER","2022-11-10","donis@yahoo.com","Female","OYE","National Identity Number","99595295292","22222222222","roundloader.gif","OYELADUN","5 TITILOPE  SHOLAOYE STREET OKE-ARO","5 TITILOPE  SHOLAOYE STREET OKE-ARO","OGUN","Nigeria","RABIU AYOBAMI","08052611061","SON","5 TITILOPE SHOLAOYE STREET","NA","2022-11-10","2022-11-10","OYEWO OYELADUN","","undelete");
INSERT INTO member VALUES("54","546914","OBASETE","MOSES","MOGBADUNOLA","08167429471","","2022-11-15","donis@yahoo.com","Male","Choose Group","National Identity Number","66972560848","66972560848","","OYELADUN","9, SALAMI OJERINDE STREET AGBADO","9, SALAMI OJERINDE STREET AGBADO","OGUN","Nigeria","OMOWUNMI OBASETE","08024218397","DAUGHTER","9, SALAMI OJERINDE STREET AGBADO","SSCE","2022-11-15","2022-11-15","ADEPOJU ABOSEDE","ADEPOJU ABOSEDE","undelete");
INSERT INTO member VALUES("55","649805","OGUNYADE","NIKE","AFUSAT","07065385200","TRADER","2022-11-15","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","22222222222","22222222222","WIN_20221115_10_17_04_Pro.jpg","ABOSEDE","22, AYORINDE STREET OKE ARO ZENITH BUS STOP","22, AYORINDE STREET OKE ARO ZENITH BUS STOP","OGUN","Nigeria","OGUNYADE TOBI","07065385200","SON","22, AYORINDE STREET OKE ARO ZENITH BUS STOP","NA","2022-11-15","2022-11-15","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("56","998054","ALAO","OLUWABUNMI","TITILAYO","09066094972","HAIR DRESSER","2022-11-15","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","22222222222","22222222222","WIN_20221115_10_43_51_Pro.jpg","ABOSEDE","30, ISHAGA  ABOSULE STREET CROSSING","30, ISHAGA  ABOSULE STREET CROSSING","OGUN","Nigeria","ALAO OMOR","09066094972","SON","30, ISHAGA  ABOSULE STREET CROSSING","NA","2022-11-15","2022-11-15","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("57","457864","BABATUNDE","LIMOTA","TEMITOPE","08170409476","FRUIT SELLER","2022-11-15","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","46695863140","46695863140","WIN_20221115_11_26_10_Pro.jpg","ABOSEDE","26, AYORINDE STREET ZENITH BUS STOP OKE ARO","26, AYORINDE STREET ZENITH BUS STOP OKE ARO","OGUN","Nigeria","BABATUNDE HAMMED","08170409476","SON","26, AYORINDE STREET ZENITH BUS STOP OKE ARO","SSCE","2022-11-15","2022-11-15","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("58","570435","MURITALA","IYABODE","HABIBAT","07053337531","TRADER","2022-11-15","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","87717942896","87717942896","WIN_20221115_11_43_38_Pro.jpg","ABOSEDE","12B, OLATOYE POWERLINE STREET POWERLINE BUS STOP","12B, OLATOYE POWERLINE STREET POWERLINE BUS STOP","OGUN","Nigeria","MURITALA OLAMIDE","07053337531","SON","12B, OLATOYE POWERLINE STREET POWERLINE BUS STOP","SSCE","2022-11-15","2022-11-15","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("59","604841","OGUNJOBI","FELICIA","FUNKE","08167161356","PAINT PRODUCER","2022-11-16","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","23576553750","23576553750","WIN_20221116_10_40_14_Pro.jpg","ABOSEDE","2, ANUOLUWAPO STREET NEW IBARAGUN MOSAFEJO OGUN STATE","CROSSING MARKET OBE BUS STOP","OGUN","Nigeria","OLAWALE OLUWATOYIN","08167161356","DAUGHTER","2, ANUOLUWAPO STREET NEW IBARAGUN MOSAFEJO OGUN STATE","SSCE","2022-11-16","2022-11-16","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("60","257864","TITUS","GRACE","MUMMY NIFEMI","08121554795","TRADER","2022-11-16","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","22222222222","22222222222","WIN_20221116_11_06_52_Pro.jpg","ABOSEDE","3, ODUDUWA CRESENT OKE ARO","POWERLINE STREET","OGUN","Nigeria","TITUS OLUWANIFEMI","08121554795","DAUGHTER","3, ODUDUWA CRESENT OKE ARO","NA","2022-11-16","2022-11-16","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("61","846574","ADESANYA","RASHIDAT","AINA","08139377624","TRADER","2022-11-17","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","241005030","241005030","WIN_20221117_10_29_57_Pro.jpg","ABOSEDE","1, AYORINDE STREET ZENITH BUS STOP OKE ARO","1, AYORINDE STREET ZENITH BUS STOP OKE ARO","OGUN","Nigeria","ADESANYA OLAMIDE","08139377624","SON","1, AYORINDE STREET ZENITH BUS STOP OKE ARO","NA","2022-11-17","2022-11-17","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("62","362202","ODEYEMI","FUNKE","ARIKE","0934540973","TRADER","2022-11-17","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","44301563268","44301563268","WIN_20221117_10_44_28_Pro.jpg","ABOSEDE","47,AGBADO ROAD OKE ARO","47,AGBADO ROAD OKE AROADE","OGUN","Nigeria","ADEDAPO TOBILOBA","0934540973","SON","OTEMUYI","NA","2022-11-17","2022-11-17","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("63","967352","OLAGOKE","TITILOPE","NURIAT","08122578402","HAIR DRESSER","1987-09-21","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","22001263966","22222222222","WIN_20221111_12_14_33_Pro.jpg","ABOSEDE","12, WASIMI STREET ABULE OKEARO","43, AGBADO ROAD ZENITH BUS STOP OKE ARO","OGUN","Nigeria","AYARA EMMANUEL","08122578402","SON","12, WASIMI ABULE OKE ARO","NA","2022-11-17","2022-11-17","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("64","819849","ADEYEMI","ABIODUN","KAFAYAT","08130092656","TRADER","2022-11-17","donis@yahoo.com","Female","GODS FAVOUR","National Identity Number","68294583342","68294583342","WIN_20221117_11_20_40_Pro.jpg","ABOSEDE","18, WALE ADESHINA STREET ZENITH BUS STOP OKE ARO","18, WALE ADESHINA STREET ZENITH BUS STOP OKE ARO","OGUN","Nigeria","ADEYEMI MICHEAL","08130092656","SON","18, WALE ADESHINA STREET ZENITH BUS STOP OKE ARO","NA","2022-11-17","2022-11-17","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("65","108357","OLUFEMI","TEMITOPE","ADEWUNMI","07068407394","NURSE","2022-11-28","donis@yahoo.com","Female","GOODNESS","National Identity Number","95580235579","95580235579","WIN_20221128_10_28_57_Pro.jpg","FUNKE","44, IJEJA STREET ORUJU BUS STOP OFF MATOGUN ROAD","44, IJEJA STREET ORUJU BUS STOP OFF MATOGUN ROAD","OGUN","Nigeria","OLUFEMI MARTIN","07068407394","SON","44, IJEJA STREET ORUJU BUS STOP OFF MATOGUN ROAD","NA","2022-11-28","2022-11-28","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("66","018083","OLANREWAJU","KEMI","ALIMO","08188281474","HERBS SELLER","2022-11-28","donis@yahoo.com","Female","GOODNESS","National Identity Number","24596064463","2459604463","WIN_20221128_10_47_06_Pro.jpg","FUNKE","14, OGUNWALE STREET GALAXY BUS STOP OLOMOWEWE AROLANBO INSIDE","14, OGUNWALE STREET GALAXY BUS STOP OLOMOWEWE AROLANBO INSIDE","OGUN","Nigeria","OLANREWAJU OLAMILEKAN","08188281474","SON","14, OGUNWALE STREET GALAXY BUS STOP OLOMOWEWE AROLANBO INSIDE","NA","2022-11-28","2022-11-28","ADEPOJU ABOSEDE","","undelete");
INSERT INTO member VALUES("67","783609","OYEDEJI","BOSEDE","OLUWABUNMI","09061776842","TRADER","1963-04-28","DONIS@GMAIL.COM","Female","OYE","National Identity Number","50767725262","22341491163","OYEDEJI BOSEDE.jpg","OYELADUN","8,LAWAL STREET OLOJO CLOSE AGBADO","8,LAWAL STREET OLOJO CLOSE AGBADO","Ogun","Nigeria","ADEOSUN FOYEKE","09061776842","DAUGHTER","8,LAWAL STREET OLOJO CLOSE AGBADO","STUDENT","2022-12-17","2022-12-17","OYEWO OYELADUN","","undelete");
INSERT INTO member VALUES("68","285360","ADE","RIBIGBE","OLA","08023444555","BUSINESS","2023-01-16","ADE@YAHOO.COM","Male","IFEOLUWA","Driver Licence","101121212121","14565656565","pastor-adeboye.jpg","OYELADUN","MATOGUN","MATOGUN","ONDO","Nigeria","SEUN","08023444555","BRO","MATOGUN","HND","2023-01-16","2023-01-16","Atansuyi emmanuel","","undelete");
INSERT INTO member VALUES("69","565982","KEMI","DADA","FUNKE","09099929929","PRINTER","2023-01-17","dadakemi@gmail.com","Male","GOODNESS GROUP","Driver Licence","09090990000000000","22253260060","","ABOSEDE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OKE ADEBOSE","09099929929","Sister","Aladura B/Stop, Matogun Road, Ogun State.","HND COMPUTER SCIENCE","2023-02-01","2023-02-01","","","undelete");
INSERT INTO member VALUES("70","210847","KEMI","DADA","FUNKE","09099929929","PRINTER","2023-01-17","dadakemi@gmail.com","Male","GOODNESS GROUP","Driver Licence","09090990000000000","22253260060","","ABOSEDE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OKE ADEBOSE","09099929929","Sister","Aladura B/Stop, Matogun Road, Ogun State.","HND COMPUTER SCIENCE","2023-02-01","2023-02-01","Atansuyi emmanuel","","undelete");
INSERT INTO member VALUES("71","159602","KEMISOLA","ADEOSUN","FUNNMILAYO","08065138173","CATTLE SELLER","2002-01-22","adeosun@yahoo.com","Male","Choose Group","Choose Means of ID","09090990000000000","22253260060","","emmanuel","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OLAORE EMMANUEL","08092882883","BROTHER","Aladura B/Stop, Matogun Road, Ogun State.","HND COMPUTER SCIENCE","2023-02-02","2023-02-02","Atansuyi emmanuel","Atansuyi emmanuel","undelete");



CREATE TABLE `repayment_tbl` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `loan_amount` double(10,2) DEFAULT '0.00',
  `reverseamount` double(10,2) DEFAULT '0.00',
  `compulsory_sav` double(10,2) DEFAULT '0.00',
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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

INSERT INTO repayment_tbl VALUES("81","","846574","57851222","ADESANYA RASHIDAT AINA","30000.00","0.00","5500.00","35500.00","0.00","","loan and initial deposit","","","2022-10-21","","","","");
INSERT INTO repayment_tbl VALUES("80","","967352","47405276","OLAGOKE TITILOPE NURIAT","30000.00","0.00","5500.00","35500.00","0.00","","loan and initial deposit","","","2022-11-07","","","","");
INSERT INTO repayment_tbl VALUES("79","","362202","44612747","ODEYEMI FUNKE ARIKE","45000.00","0.00","9000.00","54000.00","0.00","","loan and initial deposit","","","2022-11-21","","","","");
INSERT INTO repayment_tbl VALUES("78","","257864","22184001","TITUS GRACE MUMMY NIFEMI","30000.00","0.00","5500.00","35500.00","0.00","","loan and initial deposit","","","2022-10-19","","","","");
INSERT INTO repayment_tbl VALUES("77","RP76257220230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:46:22pm","","","undelete");
INSERT INTO repayment_tbl VALUES("76","RP08295520230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:45:36pm","","","undelete");
INSERT INTO repayment_tbl VALUES("75","RP85082120230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:44:36pm","","","undelete");
INSERT INTO repayment_tbl VALUES("74","RP96046220230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:38:57pm","","","undelete");
INSERT INTO repayment_tbl VALUES("73","RP35653720230127","795628","53039855","RABIU AFUSAT MUMMY AYOBAMI","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-27","2023-01-27 01:46:50pm","","","undelete");
INSERT INTO repayment_tbl VALUES("72","RP49325220230126","108357","32420176","OLUFEMI TEMITOPE ADEWUNMI","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-26","2023-01-26 03:21:46pm","","","undelete");
INSERT INTO repayment_tbl VALUES("82","","819849","88136922","ADEYEMI ABIODUN KAFAYAT","30000.00","0.00","5500.00","35500.00","0.00","","loan and initial deposit","","","2022-10-30","","","","");
INSERT INTO repayment_tbl VALUES("83","","694830","42114432","OLAGOKE TITILOPE NURIAT","90000.00","0.00","5500.00","95500.00","0.00","","loan and initial deposit","","","2023-01-31","","","","");
INSERT INTO repayment_tbl VALUES("84","RP91705720230131","694830","42114432","OLAGOKE TITILOPE NURIAT","","0.00","","0.00","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-31","2023-01-31 04:29:25pm","","","undelete");



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
  `midno` varchar(20) DEFAULT NULL,
  `bvn` varchar(20) DEFAULT NULL,
  `admin_passport` varchar(255) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_type` varchar(25) NOT NULL,
  `jurisdiction` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `guarantor_name` varchar(50) DEFAULT NULL,
  `guarantor_address` varchar(255) DEFAULT NULL,
  `guarantor_phone` varchar(11) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `guarantor_passport` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `update_dt` date DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO staff_tbl VALUES("11","191970","Atansuyi","emmanuel","Oluwaseun","08065138173","Male","2022-07-21","Single","","Akwa Ibom","Driver Licence","99237320779","22253260060","UZOMA MIRACLE.jpeg","adura@yahoo.com","joshua123","Admin","Ayomide","Ogun","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN ADE","Aladura B/Stop, Matogun Road, Ogun State.","08027580601","brother","","","2021-03-20","2022-09-08","Atansuyi emmanuel","undelete");
INSERT INTO staff_tbl VALUES("23","766492","OYEWO","OYELADUN","BOSE","07037859520","Female","2022-11-10","Married","NA","Akwa Ibom","Choose Means of ID","","","IMG_20150808_142027-1.jpg","oyewoladun@gmail.com","unique","Sales Reps","AGBADO","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","NA","NA","08022222222","NA","Available","Atansuyi emmanuel","2022-11-10","","","undelete");
INSERT INTO staff_tbl VALUES("24","561934","ADEPOJU","ABOSEDE","TEMITOPE","08167429471","Female","2022-11-11","Married","NA","Akwa Ibom","National Identity Number","22222222222","22222222222","WIN_20221111_11_00_38_Pro.jpg","olufadejiabosede@gmail.com","Ola#1990","Sales Reps","AGBADO CROSING","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","ADEPOJU ADEYINKA","14, Ayorinde Str. Zenith Bus Stop, Oke-Aro, Ogun State","08166423223","HUSBAND","Available","Atansuyi emmanuel","2022-11-11","2022-11-11","ADEPOJU ABOSEDE","undelete");
INSERT INTO staff_tbl VALUES("25","691137","SHOBOWALE","FUNKE","KIKELOMO","09060084521","Female","2022-11-28","Married","NA","Akwa Ibom","National Identity Number","22222222222","22222222222","WIN_20221128_10_04_43_Pro.jpg","funkyshobo@gmail.com","IRE1852","Sales Reps","OLOMOWEWE","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","ADEBAYO OLADELE","15, TINUOLA STREET AGBADO CROSSING","08039694967","FATHER","Not Available","ADEPOJU ABOSEDE","2022-11-28","","","undelete");
INSERT INTO staff_tbl VALUES("26","419623","ALESANMIZA","ZAINAB","ATOKE","07080932983","Female","2022-12-06","Married","NA","Akwa Ibom","Not Available","22222222222","","WIN_20221206_11_00_44_Pro.jpg","Alesanmizainabatoke@gmail.com","PEMISIRE5095","Sales Reps","MATOGUN","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","ALESANMI OLASUKANMI","6, toluolpe street akande bus stop iju ishaga lagos state","07011805029","HUSBAND","Available","ADEPOJU ABOSEDE","2022-12-06","","","undelete");
INSERT INTO staff_tbl VALUES("27","707830","ORE","OLUWA","IBUKUN","09090909999","Male","2023-01-16","Single","HND","Akwa Ibom","National Identity Number","12125454545","21212121211","8.png","J@YAHOO.COM","ORE123","Sales Reps","MATOGUN","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN","MATOGUN","02021212121","SIS","Available","Atansuyi emmanuel","2023-01-16","","","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO sublink_tbl VALUES("52","Daily Savings Posting","16","Active","dailysaving-mcharges.php","Atansuyi EMMANUEL","2022-11-25","2022-11-25 09:00:22am","","");
INSERT INTO sublink_tbl VALUES("51","Daily Savings Posting","16","Inactive","postentries.php","Atansuyi emmanuel","2022-11-17","2022-11-17 02:45:54pm","","");
INSERT INTO sublink_tbl VALUES("49","Daily Savings Confirmation","16","Active","confirmdailysaving.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:34:08am","","");
INSERT INTO sublink_tbl VALUES("48","Daily Savings Deposit","16","Inactive","dailysaving-deposit.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:26:47am","","");
INSERT INTO sublink_tbl VALUES("44","Confirm Entry","15","Active","confirmrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:40:17pm","","");
INSERT INTO sublink_tbl VALUES("50","Daily Savings History","16","Active","dailysavings-history.php","Atansuyi emmanuel","2022-11-17","2022-11-17 01:23:14pm","","");
INSERT INTO sublink_tbl VALUES("47","View Jurisdiction","12","Active","viewjurisdiction.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:28:48am","","");
INSERT INTO sublink_tbl VALUES("46","Add Sub Link","12","Inactive","add-sublink.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:25:19am","","");
INSERT INTO sublink_tbl VALUES("45","View Reports","17","Active","reports.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:41:09pm","","");
INSERT INTO sublink_tbl VALUES("43","Post Entry","15","Active","loan-repayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:50pm","","");
INSERT INTO sublink_tbl VALUES("41","Loan History","15","Active","loan-history.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:39pm","","");
INSERT INTO sublink_tbl VALUES("42","Initial Deposit","16","inActive","initialdeposit.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:19pm","","");
INSERT INTO sublink_tbl VALUES("40","Pending Loan Request","15","Active","pendingloan-request.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:09pm","","");
INSERT INTO sublink_tbl VALUES("39","Apply for Loan","15","Active","loanapp.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:37:22pm","","");
INSERT INTO sublink_tbl VALUES("38","View member","14","Active","member-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:51pm","","");
INSERT INTO sublink_tbl VALUES("37","Add Member","14","Active","account-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:16pm","","");
INSERT INTO sublink_tbl VALUES("36","View Staff","13","Active","view-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:35pm","","");
INSERT INTO sublink_tbl VALUES("35","Add Staff","13","Active","add-staff.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:35:03pm","","");
INSERT INTO sublink_tbl VALUES("34","View Group","12","Active","viewgroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:34:17pm","","");
INSERT INTO sublink_tbl VALUES("33","Add Group","12","Active","add-group.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:06:11pm","","");
INSERT INTO sublink_tbl VALUES("32","Add Jurisdiction","12","Active","jurisdiction.php","Atansuyi emmanuel","2022-08-02","2022-08-02 03:02:54pm","","");



CREATE TABLE `temp_rep_tbl` (
  `temp_rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
  `member_id` varchar(6) NOT NULL,
  `loan_code` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `loan_amount` double(10,2) DEFAULT '0.00',
  `reverseamount` double(10,2) DEFAULT '0.00',
  `compulsory_sav` double(10,2) DEFAULT '0.00',
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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

INSERT INTO temp_rep_tbl VALUES("45","RP34618520220909","985113","61069763","alesanmi zainab atoke","","0.00","","","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 11:31:58am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("44","RP85047520220909","230495","79128020","OLAITAN OKE OLUTUNU","","0.00","","","5500.00","confirmed","initial deposit","","Atansuyi emmanuel","2022-09-09","2022-09-09 10:43:35am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("43","RP05238420220909","760832","04748593","YUSUF JOSHUA tunde","","0.00","","","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 09:34:10am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("42","RP42589520220909","760832","04748593","YUSUF JOSHUA tunde","","0.00","","","7000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 09:28:12am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("41","RP90684920220909","398150","91121156","YUSUF FUNKE DUPE","","0.00","","","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 08:04:20am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("40","RP17651320220909","230495","11764727","OLAITAN OKE OLUTUNU","","0.00","","","3000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 07:40:55am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("39","RP65401620220909","230495","11764727","OLAITAN OKE OLUTUNU","","0.00","","","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 06:10:52am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("38","RP49459120220909","230495","11764727","OLAITAN OKE OLUTUNU","","0.00","","","1000.00","pending","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 05:50:58am","","","deleted");
INSERT INTO temp_rep_tbl VALUES("46","RP80956520220909","985113","61069763","alesanmi zainab atoke","","0.00","","","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-09","2022-09-09 11:35:55am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("47","RP56634520220910","760832","83200456","YUSUF JOSHUA tunde","","0.00","","","7000.00","confirmed","initial deposit","","Atansuyi emmanuel","2022-09-10","2022-09-10 02:25:36pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("48","RP16131420220910","760832","83200456","YUSUF JOSHUA tunde","","0.00","","","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-10","2022-09-10 02:59:07pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("49","RP85215020220923","760832","83200456","YUSUF JOSHUA tunde","","0.00","","","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-23","2022-09-23 03:32:59pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("50","RP71932120220924","760832","83200456","YUSUF JOSHUA tunde","0.00","0.00","","","9500.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-24","2022-09-24 03:05:33pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("51","RP52529120220924","760832","83200456","YUSUF JOSHUA tunde","9500.00","9500.00","","","0.00","confirmed","reversal of wrong entry","","Atansuyi emmanuel","2022-09-24","2022-09-24 03:23:24pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("52","RP71294120220924","760832","83200456","YUSUF JOSHUA tunde","","0.00","","0.00","12000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-09-24","2022-09-24 04:09:34pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("53","RP79512120221109","985113","61069763","alesanmi zainab atoke","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2022-11-09","2022-11-09 08:36:37pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("54","RP93049820221111","230285","23043046","AKINSANYA OLALEKAN ABDULAI","","0.00","","0.00","4000.00","confirmed","LOAN REPAYMENT FOR FOUR DAYS","","ADEPOJU ABOSEDE","2022-11-11","2022-11-11 10:40:07am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("55","RP58473620221114","164795","31185468","Oladokun Iyabode Aminat","","0.00","","0.00","1000.00","confirmed","loan repayment for day 1","","ADEPOJU ABOSEDE","2022-11-14","2022-11-14 11:42:30am","","","undelete");
INSERT INTO temp_rep_tbl VALUES("56","RP86318820221217","998054","54840810","ALAO OLUWABUNMI TITILAYO","","0.00","","0.00","1000.00","pending","Loan Repayment","","Atansuyi emmanuel","2022-12-17","2022-12-17 11:24:00am","","","deleted");
INSERT INTO temp_rep_tbl VALUES("57","RP51615220230126","018083","33753916","OLANREWAJU KEMI ALIMO","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-26","2023-01-26 03:09:02pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("58","RP16943920230126","108357","32420176","OLUFEMI TEMITOPE ADEWUNMI","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-26","2023-01-26 03:12:16pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("59","RP49325220230126","108357","32420176","OLUFEMI TEMITOPE ADEWUNMI","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-26","2023-01-26 03:21:46pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("60","RP35653720230127","795628","53039855","RABIU AFUSAT MUMMY AYOBAMI","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-27","2023-01-27 01:46:50pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("61","RP96046220230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:38:57pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("62","RP85082120230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:44:36pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("63","RP08295520230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:45:36pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("64","RP76257220230131","604841","09217953","OGUNJOBI FELICIA FUNKE","","0.00","","0.00","1000.00","confirmed","loan rep.","","Atansuyi emmanuel","2023-01-31","2023-01-31 02:46:22pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("65","RP91705720230131","694830","42114432","OLAGOKE TITILOPE NURIAT","","0.00","","0.00","2000.00","confirmed","loan repayment","","Atansuyi emmanuel","2023-01-31","2023-01-31 04:29:25pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("66","RP93396620230203","159602","36648312","KEMISOLA ADEOSUN FUNNMILAYO","","0.00","","0.00","1000.00","pending","loan repayment","","Atansuyi emmanuel","2023-02-03","2023-02-03 03:14:07pm","","","undelete");

