DROP TABLE IF EXISTS SYS_PREFERENCES;
CREATE TABLE `SYS_PREFERENCES`(
  `PREFERENCES_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
  `PREFERENCES` varchar(30) COMMENT '首选项名',
  `PREFERENCES_LEVEL` decimal(20,0) COMMENT '逻辑分类：10 DSIS首选项, 20 MWS首选项',
  `PREFERENCES_VALUE` varchar(80) COMMENT '首选项值',
  `USER_ID` bigint COMMENT '账号ID',
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
  PRIMARY KEY(`PREFERENCES_ID`)
) COMMENT = '首选项';
alter table `SYS_PREFERENCES` change `PREFERENCES_VALUE` `PREFERENCES_VALUE` varchar(80) binary;
alter table `SYS_PREFERENCES` change `PREFERENCES` `PREFERENCES` varchar(30) binary;

