DROP TABLE IF EXISTS SYS_MESSAGE_TEMPLATE;
CREATE TABLE `SYS_MESSAGE_TEMPLATE`(
  `TEMPLATE_ID` bigint AUTO_INCREMENT COMMENT '主键',
  `SUBJECT` longtext COMMENT '模板标题',
  `CONTENT` longtext COMMENT '模板内容',
  `ACCOUNT_ID` bigint COMMENT '账号id',
  `TEMPLATE_CODE` varchar(50) COMMENT '模板编号',
  `TEMPLATE_TYPE` varchar(50) COMMENT '模板类型,邮件/SMS',
  `PRIORITY_LEVEL` varchar(50) COMMENT '优先级',
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
  PRIMARY KEY(`TEMPLATE_ID`),
  UNIQUE KEY `SYS_MESSAGE_TEMPLATE_U1`(`TEMPLATE_CODE`)
) COMMENT = '消息模板表';
alter table `SYS_MESSAGE_TEMPLATE` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_MESSAGE_TEMPLATE` change `TEMPLATE_TYPE` `TEMPLATE_TYPE` varchar(50) binary;
alter table `SYS_MESSAGE_TEMPLATE` change `TEMPLATE_CODE` `TEMPLATE_CODE` varchar(50) binary;
alter table `SYS_MESSAGE_TEMPLATE` change `PRIORITY_LEVEL` `PRIORITY_LEVEL` varchar(50) binary;


