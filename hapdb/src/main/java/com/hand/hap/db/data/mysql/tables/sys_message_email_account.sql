
DROP TABLE IF EXISTS SYS_MESSAGE_EMAIL_ACCOUNT;
CREATE TABLE `SYS_MESSAGE_EMAIL_ACCOUNT`(
  `ACCOUNT_ID` bigint AUTO_INCREMENT,
  `ACCOUNT_CODE` varchar(50),
  `CONFIG_ID` bigint,
  `USER_NAME` varchar(240),
  `PASSWORD` varchar(240),
  `DESCRIPTION` varchar(240),
  `OBJECT_VERSION_NUMBER` decimal(20,0),
  `REQUEST_ID` bigint,
  `PROGRAM_ID` bigint,
  `CREATION_DATE` datetime,
  `CREATED_BY` decimal(20,0),
  `LAST_UPDATED_BY` decimal(20,0),
  `LAST_UPDATE_DATE` datetime,
  `LAST_UPDATE_LOGIN` decimal(20,0),
  `ATTRIBUTE_CATEGORY` varchar(30),
  `ATTRIBUTE1` varchar(240),
  `ATTRIBUTE2` varchar(240),
  `ATTRIBUTE3` varchar(240),
  `ATTRIBUTE4` varchar(240),
  `ATTRIBUTE5` varchar(240),
  `ATTRIBUTE6` varchar(240),
  `ATTRIBUTE7` varchar(240),
  `ATTRIBUTE8` varchar(240),
  `ATTRIBUTE9` varchar(240),
  `ATTRIBUTE10` varchar(240),
  `ATTRIBUTE11` varchar(240),
  `ATTRIBUTE12` varchar(240),
  `ATTRIBUTE13` varchar(240),
  `ATTRIBUTE14` varchar(240),
  `ATTRIBUTE15` varchar(240),
  PRIMARY KEY(`ACCOUNT_ID`),
  UNIQUE KEY `SYS_MESSAGE_EMAIL_ACCOUNT_U1`(`ACCOUNT_CODE`)
);
alter table `SYS_MESSAGE_EMAIL_ACCOUNT` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_ACCOUNT` change `USER_NAME` `USER_NAME` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_ACCOUNT` change `PASSWORD` `PASSWORD` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_ACCOUNT` change `ACCOUNT_CODE` `ACCOUNT_CODE` varchar(50) binary;

