DROP TABLE IF EXISTS SYS_MESSAGE_EMAIL_WHITE_LT;
CREATE TABLE `SYS_MESSAGE_EMAIL_WHITE_LT`(
  `ID` bigint AUTO_INCREMENT COMMENT '主键',
  `ADDRESS` varchar(240) COMMENT '白名单地址',
  `CONFIG_ID` bigint COMMENT '邮箱配置id',
  `DESCRIPTION` varchar(240) COMMENT '描述',
  `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1  COMMENT 'Record的版本号，每发生update则自增',
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
  PRIMARY KEY(`ID`)
) COMMENT = '邮件账号表';
alter table `SYS_MESSAGE_EMAIL_WHITE_LT` change `ORGANIZATION` `ORGANIZATION` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_WHITE_LT` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_WHITE_LT` change `ADDRESS` `ADDRESS` varchar(240) binary;


