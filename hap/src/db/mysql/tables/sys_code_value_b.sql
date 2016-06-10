DROP TABLE IF EXISTS SYS_CODE_VALUE_B;
CREATE TABLE `SYS_CODE_VALUE_B`(
    `CODE_VALUE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `CODE_ID` bigint,
    `VALUE` varchar(150) COMMENT '快码值',
    `MEANING` varchar(150) COMMENT '快码意思',
    `DESCRIPTION` varchar(240) COMMENT '快码描述',
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
    PRIMARY KEY(`CODE_VALUE_ID`),
    UNIQUE KEY `SYS_CODE_VALUE_B_U1`(`CODE_ID`,`VALUE`)
) COMMENT = '快码值表';
alter table `SYS_CODE_VALUE_B` change `VALUE` `VALUE` varchar(150) binary;
alter table `SYS_CODE_VALUE_B` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_CODE_VALUE_B` change `MEANING` `MEANING` varchar(150) binary;
DROP TABLE IF EXISTS SYS_CODE_VALUE_TL;
CREATE TABLE `SYS_CODE_VALUE_TL`(
    `CODE_VALUE_ID` bigint COMMENT '表ID，主键，供其他表做外键',
    `LANG` varchar(10) COMMENT '语言',
    `MEANING` varchar(150) COMMENT '快码意思',
    `DESCRIPTION` varchar(240) COMMENT '快码描述',
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
    PRIMARY KEY(`CODE_VALUE_ID`,`LANG`)
) COMMENT = '快码值表(多语言)';
alter table `SYS_CODE_VALUE_TL` change `LANG` `LANG` varchar(10) binary;
alter table `SYS_CODE_VALUE_TL` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_CODE_VALUE_TL` change `MEANING` `MEANING` varchar(150) binary;
