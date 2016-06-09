DROP TABLE IF EXISTS SYS_FUNCTION_B;
CREATE TABLE `SYS_FUNCTION_B`(
    `FUNCTION_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `MODULE_CODE` varchar(30) COMMENT '模块编码',
    `FUNCTION_ICON` varchar(100) COMMENT '功能图标',
    `FUNCTION_CODE` varchar(30) COMMENT '功能编码',
    `FUNCTION_NAME` varchar(150) COMMENT '功能名称',
    `FUNCTION_DESCRIPTION` varchar(240) COMMENT '描述',
    `RESOURCE_ID` bigint COMMENT '功能入口',
    `TYPE` varchar(30) COMMENT '功能类型',
    `PARENT_FUNCTION_ID` bigint COMMENT '父功能',
    `ENABLED_FLAG` varchar(1) DEFAULT 'Y'  COMMENT '是否启用',
    `FUNCTION_SEQUENCE` decimal(20,0) DEFAULT 1         COMMENT '排序号',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1,
    `REQUEST_ID` bigint DEFAULT -1,
    `PROGRAM_ID` bigint DEFAULT -1,
    `CREATION_DATE` datetime DEFAULT now()    ,
    `CREATED_BY` decimal(20,0) DEFAULT -1       ,
    `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1       ,
    `LAST_UPDATE_DATE` datetime DEFAULT now()    ,
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
    PRIMARY KEY(`FUNCTION_ID`),
    UNIQUE KEY `SYS_FUNCTION_B_U1`(`FUNCTION_CODE`),
    KEY `SYS_FUNCTION_B_N1`(`PARENT_FUNCTION_ID`)
) COMMENT = '功能表';
alter table `SYS_FUNCTION_B` change `FUNCTION_DESCRIPTION` `FUNCTION_DESCRIPTION` varchar(240) binary;
alter table `SYS_FUNCTION_B` change `FUNCTION_CODE` `FUNCTION_CODE` varchar(30) binary;
alter table `SYS_FUNCTION_B` change `TYPE` `TYPE` varchar(30) binary;
alter table `SYS_FUNCTION_B` change `FUNCTION_ICON` `FUNCTION_ICON` varchar(100) binary;
alter table `SYS_FUNCTION_B` change `ENABLED_FLAG` `ENABLED_FLAG` varchar(1) binary;
alter table `SYS_FUNCTION_B` change `FUNCTION_NAME` `FUNCTION_NAME` varchar(150) binary;
alter table `SYS_FUNCTION_B` change `MODULE_CODE` `MODULE_CODE` varchar(30) binary;
DROP TABLE IF EXISTS SYS_FUNCTION_TL;
CREATE TABLE `SYS_FUNCTION_TL`(
    `FUNCTION_ID` bigint COMMENT '功能ID',
    `LANG` varchar(10) COMMENT '语言',
    `FUNCTION_NAME` varchar(150) COMMENT '功能名',
    `FUNCTION_DESCRIPTION` varchar(240) COMMENT '功能描述',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1,
    `REQUEST_ID` bigint DEFAULT -1,
    `PROGRAM_ID` bigint DEFAULT -1,
    `CREATION_DATE` datetime DEFAULT now() ,
    `CREATED_BY` decimal(20,0) DEFAULT -1    ,
    `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1    ,
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
    PRIMARY KEY(`FUNCTION_ID`,`LANG`)
) COMMENT = '功能表（多语言）';
alter table `SYS_FUNCTION_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_FUNCTION_TL` change `FUNCTION_DESCRIPTION` `FUNCTION_DESCRIPTION` varchar(240) binary;
alter table `SYS_FUNCTION_TL` change `FUNCTION_NAME` `FUNCTION_NAME` varchar(150) binary;
