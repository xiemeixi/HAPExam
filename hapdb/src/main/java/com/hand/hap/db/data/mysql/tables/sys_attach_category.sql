DROP TABLE IF EXISTS SYS_ATTACH_CATEGORY_B;
CREATE TABLE `SYS_ATTACH_CATEGORY_B`(
  `CATEGORY_ID` bigint AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(40),
  `LEAF_FLAG` varchar(1),
  `DESCRIPTION` varchar(240),
  `STATUS` varchar(1),
  `PARENT_CATEGORY_ID` bigint,
  `PATH` varchar(200) COMMENT '层级路径',
  `SOURCE_TYPE` varchar(30),
  `ALLOWED_FILE_TYPE` varchar(30),
  `ALLOWED_FILE_SIZE` decimal(20,2),
  `CATEGORY_PATH` varchar(255),
  `OBJECT_VERSION_NUMBER` decimal(20,2),
  `REQUEST_ID` bigint,
  `PROGRAM_ID` bigint,
  `CREATION_DATE` datetime,
  `CREATED_BY` decimal(20,2),
  `LAST_UPDATED_BY` decimal(20,2),
  `LAST_UPDATE_DATE` datetime,
  `LAST_UPDATE_LOGIN` decimal(20,2),
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
  primary key (`CATEGORY_ID`),
  `IS_UNIQUE` varchar(1)
);
alter table `SYS_ATTACH_CATEGORY_B` change `STATUS` `STATUS` varchar(1) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `SOURCE_TYPE` `SOURCE_TYPE` varchar(30) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `CATEGORY_NAME` `CATEGORY_NAME` varchar(40) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `IS_UNIQUE` `IS_UNIQUE` varchar(1) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `LEAF_FLAG` `LEAF_FLAG` varchar(1) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `ALLOWED_FILE_TYPE` `ALLOWED_FILE_TYPE` varchar(30) binary;
alter table `SYS_ATTACH_CATEGORY_B` change `CATEGORY_PATH` `CATEGORY_PATH` varchar(255) binary;


DROP TABLE IF EXISTS SYS_ATTACH_CATEGORY_TL;
CREATE TABLE `SYS_ATTACH_CATEGORY_TL`(
  `CATEGORY_ID` bigint COMMENT '表ID，主键，供其他表做外键',
  `CATEGORY_NAME` varchar(40) COMMENT '类别名称',
  `DESCRIPTION` varchar(240) COMMENT '描述',
  `LANG` varchar(10) COMMENT '语言',
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
  PRIMARY KEY(`CATEGORY_ID`,`LANG`)
) COMMENT = '附件分类多语言';
alter table `SYS_ATTACH_CATEGORY_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_ATTACH_CATEGORY_TL` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_ATTACH_CATEGORY_TL` change `CATEGORY_NAME` `CATEGORY_NAME` varchar(40) binary;


