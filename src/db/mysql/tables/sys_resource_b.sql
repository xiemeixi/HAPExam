DROP TABLE IF EXISTS SYS_RESOURCE_B;
CREATE TABLE `SYS_RESOURCE_B`(
    `RESOURCE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `URL` varchar(255) COMMENT 'URL',
    `TYPE` varchar(15) COMMENT '资源类型',
    `NAME` varchar(40) COMMENT '资源名称',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `LOGIN_REQUIRE` varchar(1) DEFAULT 'Y'  COMMENT '是否需要登录',
    `ACCESS_CHECK` varchar(1) DEFAULT 'Y'   COMMENT '是否权限校验',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1        ,
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
    PRIMARY KEY(`RESOURCE_ID`),
    UNIQUE KEY `SYS_RESOURCE_B_U1`(`URL`)
) COMMENT = '功能资源表';
alter table `SYS_RESOURCE_B` change `URL` `URL` varchar(255) binary;
alter table `SYS_RESOURCE_B` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_RESOURCE_B` change `LOGIN_REQUIRE` `LOGIN_REQUIRE` varchar(1) binary;
alter table `SYS_RESOURCE_B` change `TYPE` `TYPE` varchar(15) binary;
alter table `SYS_RESOURCE_B` change `NAME` `NAME` varchar(40) binary;
alter table `SYS_RESOURCE_B` change `ACCESS_CHECK` `ACCESS_CHECK` varchar(1) binary;
DROP TABLE IF EXISTS SYS_RESOURCE_TL;
CREATE TABLE `SYS_RESOURCE_TL`(
    `RESOURCE_ID` bigint COMMENT '表ID，主键，供其他表做外键',
    `LANG` varchar(10) COMMENT '语言',
    `NAME` varchar(40) COMMENT '资源名称',
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
    PRIMARY KEY(`RESOURCE_ID`,`LANG`)
) COMMENT = '功能资源表(多语言)';
alter table `SYS_RESOURCE_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_RESOURCE_TL` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_RESOURCE_TL` change `NAME` `NAME` varchar(40) binary;
