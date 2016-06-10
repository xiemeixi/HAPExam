
DROP TABLE IF EXISTS SYS_MESSAGE_EMAIL_CONFIG;
CREATE TABLE `SYS_MESSAGE_EMAIL_CONFIG`(
  `CONFIG_ID` bigint AUTO_INCREMENT COMMENT '主键',
  `CONFIG_CODE` varchar(50) COMMENT '编号',
  `HOST` varchar(50) COMMENT '服务器',
  `PORT` varchar(10) COMMENT '端口',
  `TRY_TIMES` decimal(20,0) DEFAULT 3  COMMENT '重试次数',
  `DESCRIPTION` varchar(240) COMMENT '描述',
  `USE_WHITE_LIST` varchar(1) DEFAULT 'N' COMMENT '是否使用白名单',
  `USER_NAME` varchar(240) COMMENT '用户名',
  `PASSWORD` varchar(240) COMMENT '密码',
  `ENABLE` varchar(1) DEFAULT 'N',
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
  PRIMARY KEY(`CONFIG_ID`),
  UNIQUE KEY `SYS_MESSAGE_EMAIL_CONFIG_CODE`(`CONFIG_CODE`)
) COMMENT = '邮件账号表';
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `HOST` `HOST` varchar(50) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `CONFIG_CODE` `CONFIG_CODE` varchar(50) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `USE_WHITE_LIST` `USE_WHITE_LIST` varchar(1) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `PORT` `PORT` varchar(10) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `USER_NAME` `USER_NAME` varchar(240) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `ENABLE` `ENABLE` varchar(1) binary;
alter table `SYS_MESSAGE_EMAIL_CONFIG` change `PASSWORD` `PASSWORD` varchar(240) binary;

