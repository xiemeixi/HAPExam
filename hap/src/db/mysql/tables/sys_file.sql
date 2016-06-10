DROP TABLE IF EXISTS SYS_FILE;
CREATE TABLE `SYS_FILE`(
  `FILE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
  `ATTACHMENT_ID` bigint COMMENT '附件ID',
  `FILE_NAME` varchar(255) COMMENT '文件名',
  `FILE_PATH` varchar(255) COMMENT '文件虚拟路径',
  `FILE_SIZE` decimal(20,2) COMMENT '文件大小',
  `FILE_TYPE` varchar(240) COMMENT '文件类型',
  `UPLOAD_DATE` datetime COMMENT '上传时间',
  `OBJECT_VERSION_NUMBER` decimal(20,2) DEFAULT 1  COMMENT '行版本号，用来处理锁',
  `REQUEST_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部请求id',
  `PROGRAM_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部程序id',
  `CREATION_DATE` datetime DEFAULT now() ,
  `CREATED_BY` decimal(20,2) DEFAULT -1 ,
  `LAST_UPDATED_BY` decimal(20,2) DEFAULT -1 ,
  `LAST_UPDATE_DATE` datetime DEFAULT now() ,
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
  PRIMARY KEY(`FILE_ID`),
  KEY `SYS_FILE_N1`(`ATTACHMENT_ID`)
) COMMENT = '文件表';
alter table `SYS_FILE` change `FILE_NAME` `FILE_NAME` varchar(255) binary;
alter table `SYS_FILE` change `FILE_PATH` `FILE_PATH` varchar(255) binary;
alter table `SYS_FILE` change `FILE_TYPE` `FILE_TYPE` varchar(240) binary;

