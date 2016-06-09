DROP TABLE IF EXISTS SYS_LANG_B;
CREATE TABLE `SYS_LANG_B`(
    `LANG_CODE` varchar(10) COMMENT '表ID，主键，供其他表做外键',
    `BASE_LANG` varchar(10) COMMENT '基语言',
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
    PRIMARY KEY(`LANG_CODE`)
) COMMENT = '语言表';
alter table `SYS_LANG_B` change `BASE_LANG` `BASE_LANG` varchar(10) binary;
alter table `SYS_LANG_B` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_LANG_B` change `LANG_CODE` `LANG_CODE` varchar(10) binary;
