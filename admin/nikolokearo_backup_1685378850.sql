

CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(100) DEFAULT NULL,
  `creation_date` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;




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
INSERT INTO general_ledger_tbl VALUES("16","100129","Loan Account","Asset","Active","undelete","2023-04-24","AKINSANYA TITILOPE");
INSERT INTO general_ledger_tbl VALUES("17","100180","Registration Fee","Income","Active","undelete","2023-05-22","AKINADE SENI");



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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO group_tbl VALUES("22","ORELOPE","AGBABIAKA OLADIMEJI","07080932983","AKINSANYA TITILOPE","Active","Atansuyi Emmanuel","2023-05-25","Atansuyi Emmanuel","2023-05-25","undelete");
INSERT INTO group_tbl VALUES("21","IWAJOWA","Mojisola Tosin Arewa","09023124354","YUSUF GABRIEL","Active","Atansuyi Emmanuel","2023-05-25","Atansuyi Emmanuel","2023-05-25","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;

INSERT INTO income_tbl VALUES("214","1651047920230529","100467","Savings Deposit","508729","SAMUEL IMOLE IYANU","1000.00","0.00","Confirmed","undelete","YUSUF GABRIEL","","2023-05-29","2023-05-29 02:46:33pm");
INSERT INTO income_tbl VALUES("213","938820230525","100129","Loan Account","240213","FOLAKE AGUNBIADE ADERIBIGBE","0.00","2000.00","Confirmed","undelete","AKINSANYA TITILOPE","Atansuyi Emmanuel","2023-05-25","2023-05-25 03:33:01pm");
INSERT INTO income_tbl VALUES("212","560320230525","100129","Loan Account","508729","SAMUEL IMOLE IYANU","0.00","1000.00","Confirmed","undelete","YUSUF GABRIEL","Atansuyi Emmanuel","2023-05-25","2023-05-25 03:15:45pm");



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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO jurisdiction VALUES("13","Nigeria","OGUN","IFO","ABULE EGBA","Active","Atansuyi Emmanuel","2023-05-25","Atansuyi Emmanuel","2023-05-25","undelete");
INSERT INTO jurisdiction VALUES("12","Nigeria","OGUN","IFO","OKE ARO","Active","Atansuyi emmanuel","2023-04-28","Atansuyi Emmanuel","2023-05-25","undelete");



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
INSERT INTO link_tbl VALUES("16","Deposit","Active","fas fa-fax","Atansuyi emmanuel","2022-08-02","2022-08-02 12:59:19pm","","");
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
) ENGINE=MyISAM AUTO_INCREMENT=1555 DEFAULT CHARSET=latin1;

INSERT INTO link_useraccess VALUES("1005","12","58","11","True","2023-04-06");
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
INSERT INTO link_useraccess VALUES("1004","13","57","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("1003","13","56","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("1002","15","55","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("1001","12","54","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("1000","12","53","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("999","12","32","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("998","12","33","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("997","12","34","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("996","13","35","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("995","13","36","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("994","14","37","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("993","14","38","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("992","15","39","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("991","15","40","11","True","2023-04-06");
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
INSERT INTO link_useraccess VALUES("990","15","41","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("989","15","43","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("988","17","45","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("987","12","47","11","True","2023-04-06");
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
INSERT INTO link_useraccess VALUES("986","16","50","11","True","2023-04-06");
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
INSERT INTO link_useraccess VALUES("985","15","44","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("984","16","49","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("983","16","52","11","True","2023-04-06");
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
INSERT INTO link_useraccess VALUES("1006","14","59","11","True","2023-04-06");
INSERT INTO link_useraccess VALUES("1007","14","60","11","True","2023-04-06");
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
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

INSERT INTO loan_request VALUES("72","34296764","240213","FOLAKE AGUNBIADE ADERIBIGBE","09092992292","ORELOPE","AKINSANYA TITILOPE","ADEOLA TOBI","08027580601","4768488.jpeg","Available","BROTHER","Aladura B/Stop, Matogun Road, Ogun State.","BANKER","National Identity Number","22222222222222","Daily","To augment my working capital for my business","90000.00","20000.00","","","","2023-05-29","AKINSANYA TITILOPE","2023-05-29","","","","","pending","Inactive","undelete","Not Yet Approve");
INSERT INTO loan_request VALUES("71","62767429","240213","FOLAKE AGUNBIADE ADERIBIGBE","09092992292","ORELOPE","AKINSANYA TITILOPE","ADEOLA TOBI","08027580601","31.jpeg","Available","BROTHER","Aladura B/Stop, Matogun Road, Ogun State.","EDUCATION","International Passport","1223312312121","Weekly","To augment my working capital for my business","60000.00","50000.00","20000.00","24000.00","Loan Disbursed","2023-05-25","AKINSANYA TITILOPE","2023-05-25","2023-05-25","2023-08-24","Atansuyi Emmanuel","","Confirmed","Active","undelete","New Loan
                                                        ");
INSERT INTO loan_request VALUES("70","69718136","508729","SAMUEL IMOLE IYANU","08065138173","IWAJOWA","YUSUF GABRIEL","ATANSUYI ABOSEDE","09099299229","36.jpeg","Available","BROTHER'S","4, IREPODUN, ABULE EGBA, LAGOS STATE","EDUCATION","Driver Licence","98989898989","Daily","To augment my working capital for my business's at London","100000.00","20000.00","15000.00","18000.00","Loan Disbursed","2023-05-25","YUSUF GABRIEL","2023-05-25","2023-05-25","2023-06-24","Atansuyi Emmanuel","","Confirmed","Active","undelete","New Loan
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
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

INSERT INTO member VALUES("85","018618","AKINSANYA","ADENIKE","IFEOLUWA","09155555555","BUSINESS","2012-06-13","akinsanyaadenike@gmail.com","Female","ORELOPE","International Passport","99237320779","22253260060","5000.00","ADEWARA EMMANUEL.jpeg","AKINSANYA TITILOPE","5, ADERIBIGBE STR. IYANU OLUWA BUS STOP, IFO, LGA","5, ADERIBIGBE STR. IYANU OLUWA BUS STOP, IFO, LGA","OGUN","Nigeria","OGUNDIJO PRAISE","09155555555","SISTER","Aladura B/Stop, Matogun Road, Ogun State.","2023-05-29","2023-05-29","AKINSANYA TITILOPE","","undelete","Inactive");
INSERT INTO member VALUES("84","240213","FOLAKE","AGUNBIADE","ADERIBIGBE","09092992292","BANKER","2023-05-17","folake@yahoo.com","Female","ORELOPE","International Passport","A50441277","22253260060","4000.00","28.jpeg","AKINSANYA TITILOPE","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OKE ADEBOSE","09092992292","MOTHER","Aladura B/Stop, Matogun Road, Ogun State.","2023-05-25","2023-05-25","AKINSANYA TITILOPE","Atansuyi Emmanuel","undelete","Active");
INSERT INTO member VALUES("83","508729","SAMUEL","IMOLE","IYANU","08065138173","BUSINESS","2023-05-25","samuel@yahoo.com","Male","IWAJOWA","National Identity Number","99237320779","22253260060","3500.00","32.jpeg","YUSUF GABRIEL","Aladura B/Stop, Matogun Road, Ogun State.","Aladura B/Stop, Matogun Road, Ogun State.","Ogun","Nigeria","OKE ADEBOSE","08082828282","FRIEND","Aladura B/Stop, Matogun Road, Ogun State.","2023-05-25","2023-05-25","Atansuyi Emmanuel","Atansuyi Emmanuel","undelete","Active");



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
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;

INSERT INTO members_master_tbl VALUES("345","1651047920230529","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","1000.00","Deposit","N/A","XC","Credit","Cash","Confirmed","undelete","unmove","YUSUF GABRIEL","Atansuyi Emmanuel","2023-05-29 02:55:01pm","2023-05-29","2023-05-29 02:46:33pm");



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
) ENGINE=MyISAM AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;

INSERT INTO membersavings_tbl VALUES("343","1651047920230529","508729","SAMUEL IMOLE IYANU","YUSUF GABRIEL","1000.00","Deposit","N/A","XC","Credit","Cash","Confirmed","undelete","moved","YUSUF GABRIEL","Atansuyi Emmanuel","2023-05-29 02:55:01pm","2023-05-29","2023-05-29 02:46:33pm");



CREATE TABLE `pwd_reset` (
  `pwd_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `key` varchar(255) NOT NULL,
  `expDate` datetime NOT NULL,
  PRIMARY KEY (`pwd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO pwd_reset VALUES("1","joshua_atansuyi@yahoo.com","7480a7d87f879fef1bf959354f5e9786","2023-05-27 13:06:15");
INSERT INTO pwd_reset VALUES("2","joshua_atansuyi@yahoo.com","2f1bf1e0f89592f75741ddd071a3fd56","2023-05-27 13:57:32");
INSERT INTO pwd_reset VALUES("3","joshua_atansuyi@yahoo.com","72e4980d4446abeb03240f791b0d025e","2023-05-27 13:59:18");
INSERT INTO pwd_reset VALUES("4","joshua_atansuyi@yahoo.com","2b8e7eabd1fc253161f4cfff0b314b5d","2023-05-27 15:01:41");
INSERT INTO pwd_reset VALUES("5","joshua_atansuyi@yahoo.com","611eea6e29f0c9da59fe024d1aece955","2023-05-27 15:25:01");
INSERT INTO pwd_reset VALUES("6","joshua_atansuyi@yahoo.com","2e2392ab6fa925684132c5439cba6e8e","2023-05-27 15:29:59");
INSERT INTO pwd_reset VALUES("7","joshua_atansuyi@yahoo.com","4fca6c34f06774ea0798c19ccf2ab99f","2023-05-27 16:23:07");
INSERT INTO pwd_reset VALUES("8","joshua_atansuyi@yahoo.com","dc897154e77b20d6ec48a73e247ec96f","2023-05-27 16:27:48");
INSERT INTO pwd_reset VALUES("9","joshua_atansuyi@yahoo.com","aef1bdf3c30d436a36d1efa8047cbb25","2023-05-27 16:33:38");



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
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

INSERT INTO repayment_tbl VALUES("161","","240213","62767429","FOLAKE AGUNBIADE ADERIBIGBE","ORELOPE","AKINSANYA TITILOPE","50000.00","20000.00","0.00","24000.00","0.00","Confirmed","Loan Disbursed","","","2023-05-25","","","","");
INSERT INTO repayment_tbl VALUES("162","938820230525","240213","62767429","FOLAKE AGUNBIADE ADERIBIGBE","ORELOPE","AKINSANYA TITILOPE","50000.00","20000.00","0.00","0.00","2000.00","confirmed","LR","Atansuyi Emmanuel","AKINSANYA TITILOPE","2023-05-25","2023-05-25 03:33:01pm","","","undelete");
INSERT INTO repayment_tbl VALUES("159","","508729","69718136","SAMUEL IMOLE IYANU","IWAJOWA","YUSUF GABRIEL","20000.00","15000.00","0.00","18000.00","0.00","Confirmed","Loan Disbursed","","","2023-05-25","","","","");
INSERT INTO repayment_tbl VALUES("160","560320230525","508729","69718136","SAMUEL IMOLE IYANU","IWAJOWA","YUSUF GABRIEL","20000.00","15000.00","0.00","0.00","1000.00","confirmed","loan repayment","Atansuyi Emmanuel","YUSUF GABRIEL","2023-05-25","2023-05-25 03:15:45pm","","","undelete");



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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

INSERT INTO staff_tbl VALUES("11","191970","Atansuyi","Emmanuel","Oluwaseun","08065138173","Male","2022-07-21","Single","HND AGRIC EXTENSION","Akwa Ibom","Driver Licence","99237320779","22253260060","UZOMA MIRACLE.jpeg","joshua_atansuyi@yahoo.com","Joshua123","Admin","Ayomide","Ogun","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN ADE","Aladura B/Stop, Matogun Road, Ogun State.","08027580601","brother","","","2021-03-20","2022-09-08","Atansuyi emmanuel","deleted","Active");
INSERT INTO staff_tbl VALUES("43","462550","YUSUF","GABRIEL","OLUBUKUN","09028282822","Male","2011-03-25","Single","HND COMPUTER SCIENCE","Akwa Ibom","International Passport","19233342232323","22253260060","ballon 8.jpg","yusuf@yahoo.com","gabriel123","Credit Officer","ABULE EGBA","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","SEUN ADE","Aladura B/Stop, Matogun Road, Ogun State.","08027580601","SISTER","Available","Atansuyi Emmanuel","2023-05-25","2023-05-28","Atansuyi Emmanuel","undelete","Active");
INSERT INTO staff_tbl VALUES("44","775045","AKINSANYA","TITILOPE","GANIYAT","09022222222","Female","2019-10-27","Single","BSC ARTS","Akwa Ibom","International Passport","19233342232323","22222222222","25.jpeg","titilope@gmail.com","titi123","Credit Officer","OKE ARO","Akwa Ibom","Aladura B/Stop, Matogun Road, Ogun State.","Nigeria","TITILAYO YUSUF","Aladura B/Stop, Matogun Road, Ogun State.","09078979878","MOTHER","Available","Atansuyi Emmanuel","2023-05-25","","Atansuyi Emmanuel","undelete","Active");



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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

INSERT INTO sublink_tbl VALUES("52","Post Entry","16","Active","memsavingsdep.php","Atansuyi EMMANUEL","2022-11-25","2022-11-25 09:00:22am","","");
INSERT INTO sublink_tbl VALUES("51","Member Posting","16","Inactive","postentries.php","Atansuyi emmanuel","2022-11-17","2022-11-17 02:45:54pm","","");
INSERT INTO sublink_tbl VALUES("49","Posting Confirmation","16","Active","confirmmemsaving.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:34:08am","","");
INSERT INTO sublink_tbl VALUES("48","Daily Savings Deposit","16","Inactive","dailysaving-deposit.php","Atansuyi emmanuel","2022-11-17","2022-11-17 10:26:47am","","");
INSERT INTO sublink_tbl VALUES("44","Confirm Entry","15","Active","confirmrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:40:17pm","","");
INSERT INTO sublink_tbl VALUES("50","History","16","Active","memsavingshistory.php","Atansuyi emmanuel","2022-11-17","2022-11-17 01:23:14pm","","");
INSERT INTO sublink_tbl VALUES("47","View Jurisdiction","12","Active","viewjurisdiction.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:28:48am","","");
INSERT INTO sublink_tbl VALUES("46","Add Sub Link","12","Inactive","add-sublink.php","Atansuyi emmanuel","2022-08-09","2022-08-09 11:25:19am","","");
INSERT INTO sublink_tbl VALUES("45","View Reports","17","Active","reports.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:41:09pm","","");
INSERT INTO sublink_tbl VALUES("43","Loan Repayment","15","Active","loanrepayment.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:50pm","","");
INSERT INTO sublink_tbl VALUES("41","Loan History","15","Active","loanhistory.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:39pm","","");
INSERT INTO sublink_tbl VALUES("42","Initial Deposit","16","InActive","initialdeposit.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:39:19pm","","");
INSERT INTO sublink_tbl VALUES("40","Loan Application Status","15","Active","loan-request.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:38:09pm","","");
INSERT INTO sublink_tbl VALUES("39","Apply for Loan","15","Active","loangroup.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:37:22pm","","");
INSERT INTO sublink_tbl VALUES("38","View member","14","Active","member-type.php","Atansuyi emmanuel","2022-08-03","2022-08-03 05:36:51pm","","");
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



CREATE TABLE `temp_rep_tbl` (
  `temp_rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

INSERT INTO temp_rep_tbl VALUES("126","938820230525","240213","62767429","FOLAKE AGUNBIADE ADERIBIGBE","ORELOPE","AKINSANYA TITILOPE","50000.00","20000.00","0.00","24000.00","2000.00","confirmed","LR","Atansuyi Emmanuel","AKINSANYA TITILOPE","2023-05-25","2023-05-25 03:33:01pm","","","undelete");
INSERT INTO temp_rep_tbl VALUES("125","560320230525","508729","69718136","SAMUEL IMOLE IYANU","IWAJOWA","YUSUF GABRIEL","20000.00","15000.00","0.00","18000.00","1000.00","confirmed","loan repayment","Atansuyi Emmanuel","YUSUF GABRIEL","2023-05-25","2023-05-25 03:15:45pm","","","undelete");

