DROP TABLE IF EXISTS SYS_MESSAGE_READ;
CREATE TABLE `SYS_MESSAGE_READ`(
  `READ_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
  `MESSAGE_ID` bigint COMMENT '消息ID',
  `ACCOUNT_ID` bigint COMMENT '账号ID',
  `SENDER` decimal(20,0) COMMENT '发件人',
  `STATUS` varchar(5) COMMENT '状态',
  `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1  COMMENT '行版本号，用来处理锁',
  `REQUEST_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部请求id',
  `PROGRAM_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部程序id',
  `CREATION_DATE` datetime DEFAULT now() ,
  `CREATED_BY` decimal(20,0) DEFAULT -1 ,
  `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1 ,
  `LAST_UPDATE_DATE` datetime DEFAULT now() ,
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
  PRIMARY KEY(`READ_ID`),
  KEY `SYS_MESSAGE_READ_N1`(`MESSAGE_ID`,`ACCOUNT_ID`)
) COMMENT = '消息已读记录';
alter table `SYS_MESSAGE_READ` change `STATUS` `STATUS` varchar(5) binary;


