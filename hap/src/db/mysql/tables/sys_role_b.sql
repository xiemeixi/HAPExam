DROP TABLE IF EXISTS SYS_ROLE_B;
CREATE TABLE `SYS_ROLE_B`(
    `ROLE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `ROLE_CODE` varchar(40) COMMENT '角色编码',
    `ROLE_NAME` varchar(150) COMMENT '角色名称',
    `ROLE_DESCRIPTION` varchar(240) COMMENT '角色描述',
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
    PRIMARY KEY(`ROLE_ID`),
    UNIQUE KEY `SYS_ROLE_B_U1`(`ROLE_CODE`)
) COMMENT = '角色表';
alter table `SYS_ROLE_B` change `ROLE_CODE` `ROLE_CODE` varchar(40) binary;
alter table `SYS_ROLE_B` change `ROLE_DESCRIPTION` `ROLE_DESCRIPTION` varchar(240) binary;
alter table `SYS_ROLE_B` change `ROLE_NAME` `ROLE_NAME` varchar(150) binary;
DROP TABLE IF EXISTS SYS_ROLE_TL;
CREATE TABLE `SYS_ROLE_TL`(
    `ROLE_ID` bigint COMMENT '角色ID',
    `LANG` varchar(10) COMMENT '语言',
    `ROLE_NAME` varchar(150) COMMENT '角色名称',
    `ROLE_DESCRIPTION` varchar(240) COMMENT '角色描述',
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
    PRIMARY KEY(`ROLE_ID`,`LANG`)
) COMMENT = '角色表(多语言)';
alter table `SYS_ROLE_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_ROLE_TL` change `ROLE_DESCRIPTION` `ROLE_DESCRIPTION` varchar(240) binary;
alter table `SYS_ROLE_TL` change `ROLE_NAME` `ROLE_NAME` varchar(150) binary;
