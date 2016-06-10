DROP TABLE IF EXISTS SYS_ATTACHMENT;
CREATE TABLE `SYS_ATTACHMENT`(
  `ATTACHMENT_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
  `CATEGORY_ID` bigint COMMENT '分类ID',
  `NAME` varchar(40) COMMENT '附件名称',
  `SOURCE_TYPE` varchar(30) COMMENT '对应业务类型',
  `SOURCE_KEY` varchar(30) COMMENT '业务主键',
  `STATUS` varchar(1) COMMENT '状态',
  `START_ACTIVE_DATE` datetime COMMENT '开始生效日期',
  `END_ACTIVE_DATE` datetime COMMENT '失效时间',
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
  PRIMARY KEY(`ATTACHMENT_ID`),
  KEY `SYS_ATTACHMENT_N1`(`CATEGORY_ID`),
  KEY `SYS_ATTACHMENT_N2`(`SOURCE_TYPE`,`SOURCE_KEY`)
) COMMENT = '附件表';
alter table `SYS_ATTACHMENT` change `STATUS` `STATUS` varchar(1) binary;
alter table `SYS_ATTACHMENT` change `SOURCE_TYPE` `SOURCE_TYPE` varchar(30) binary;
alter table `SYS_ATTACHMENT` change `SOURCE_KEY` `SOURCE_KEY` varchar(30) binary;
alter table `SYS_ATTACHMENT` change `NAME` `NAME` varchar(40) binary;

