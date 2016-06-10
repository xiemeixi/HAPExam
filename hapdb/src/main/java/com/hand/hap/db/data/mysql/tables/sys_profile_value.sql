DROP TABLE IF EXISTS SYS_PROFILE_VALUE;
CREATE TABLE `SYS_PROFILE_VALUE`(
    `PROFILE_VALUE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `PROFILE_ID` varchar(32) COMMENT '配置文件ID',
    `LEVEL_ID` varchar(32) COMMENT '层次ID',
    `LEVEL_VALUE` varchar(40) COMMENT '层次值',
    `PROFILE_VALUE` varchar(80) COMMENT '配置文件值',
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
    PRIMARY KEY(`PROFILE_VALUE_ID`)
) COMMENT = '配置文件值';
alter table `SYS_PROFILE_VALUE` change `LEVEL_ID` `LEVEL_ID` varchar(32) binary;
alter table `SYS_PROFILE_VALUE` change `LEVEL_VALUE` `LEVEL_VALUE` varchar(40) binary;
alter table `SYS_PROFILE_VALUE` change `PROFILE_ID` `PROFILE_ID` varchar(32) binary;
alter table `SYS_PROFILE_VALUE` change `PROFILE_VALUE` `PROFILE_VALUE` varchar(80) binary;
