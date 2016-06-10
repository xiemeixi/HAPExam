DROP TABLE IF EXISTS SYS_LOV;
CREATE TABLE `SYS_LOV`(
    `LOV_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键',
    `CODE` varchar(80) COMMENT 'LOV的code',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `SQL_ID` varchar(255) COMMENT 'SQL ID',
    `VALUE_FIELD` varchar(80) COMMENT 'VALUE_FIELD',
    `TEXT_FIELD` varchar(80) COMMENT 'TEXT_FIELD',
    `TITLE` varchar(255) COMMENT '标题',
    `WIDTH` decimal(20,0) COMMENT '宽度',
    `HEIGHT` decimal(20,0) COMMENT '高度',
    `PLACEHOLDER` varchar(80) COMMENT '提示',
    `DELAY_LOAD` varchar(1) DEFAULT 'N'  COMMENT '是否延迟加载',
    `NEED_QUERY_PARAM` varchar(1) DEFAULT 'N'  COMMENT '是否需要查询条件',
    `EDITABLE` varchar(1) DEFAULT 'N'  COMMENT '是否可编辑',
    `CAN_POPUP` varchar(1) DEFAULT 'Y'  COMMENT '是否可弹出',
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
    PRIMARY KEY(`LOV_ID`),
    UNIQUE KEY `SYS_LOV_U1`(`CODE`)
) COMMENT = '通用lov配置';
alter table `SYS_LOV` change `DELAY_LOAD` `DELAY_LOAD` varchar(1) binary;
alter table `SYS_LOV` change `EDITABLE` `EDITABLE` varchar(1) binary;
alter table `SYS_LOV` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_LOV` change `VALUE_FIELD` `VALUE_FIELD` varchar(80) binary;
alter table `SYS_LOV` change `CAN_POPUP` `CAN_POPUP` varchar(1) binary;
alter table `SYS_LOV` change `TEXT_FIELD` `TEXT_FIELD` varchar(80) binary;
alter table `SYS_LOV` change `PLACEHOLDER` `PLACEHOLDER` varchar(80) binary;
alter table `SYS_LOV` change `CODE` `CODE` varchar(80) binary;
alter table `SYS_LOV` change `SQL_ID` `SQL_ID` varchar(255) binary;
alter table `SYS_LOV` change `NEED_QUERY_PARAM` `NEED_QUERY_PARAM` varchar(1) binary;
alter table `SYS_LOV` change `TITLE` `TITLE` varchar(255) binary;
