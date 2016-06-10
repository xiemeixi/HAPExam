DROP TABLE IF EXISTS SYS_RESOURCE_ITEM_B;
CREATE TABLE `SYS_RESOURCE_ITEM_B`(
    `RESOURCE_ITEM_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `OWNER_RESOURCE_ID` bigint COMMENT '功能资源ID',
    `TARGET_RESOURCE_ID` bigint COMMENT '目标资源ID',
    `ITEM_ID` varchar(50) COMMENT 'HTML中控件ID',
    `ITEM_NAME` varchar(50) COMMENT '控件名称',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `ITEM_TYPE` varchar(10) COMMENT '控件类型',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1      COMMENT '行版本号，用来处理锁',
    `REQUEST_ID` bigint DEFAULT -1     COMMENT '对Record最后一次操作的系统内部请求id',
    `PROGRAM_ID` bigint DEFAULT -1     COMMENT '对Record最后一次操作的系统内部程序id',
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
    PRIMARY KEY(`RESOURCE_ITEM_ID`),
    UNIQUE KEY `SYS_RESOURCE_ITEM_B_U1`(`ITEM_ID`,`OWNER_RESOURCE_ID`),
    KEY `SYS_RESOURCE_ITEM_B_N1`(`OWNER_RESOURCE_ID`)
) COMMENT = '功能控件表';
alter table `SYS_RESOURCE_ITEM_B` change `ITEM_NAME` `ITEM_NAME` varchar(50) binary;
alter table `SYS_RESOURCE_ITEM_B` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_RESOURCE_ITEM_B` change `ITEM_TYPE` `ITEM_TYPE` varchar(10) binary;
alter table `SYS_RESOURCE_ITEM_B` change `ITEM_ID` `ITEM_ID` varchar(50) binary;
DROP TABLE IF EXISTS SYS_RESOURCE_ITEM_TL;
CREATE TABLE `SYS_RESOURCE_ITEM_TL`(
    `RESOURCE_ITEM_ID` bigint COMMENT '表ID，主键，供其他表做外键',
    `LANG` varchar(10) COMMENT '语言',
    `ITEM_NAME` varchar(150) COMMENT '控件名称',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1     ,
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
    PRIMARY KEY(`RESOURCE_ITEM_ID`,`LANG`)
) COMMENT = '功能控件表(多语言)';
alter table `SYS_RESOURCE_ITEM_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_RESOURCE_ITEM_TL` change `ITEM_NAME` `ITEM_NAME` varchar(150) binary;
alter table `SYS_RESOURCE_ITEM_TL` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
