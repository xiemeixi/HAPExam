DROP TABLE IF EXISTS SYS_USER;
CREATE TABLE `SYS_USER`(
    `USER_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `USER_TYPE` varchar(30) COMMENT '用户类型',
    `USER_NAME` varchar(40) COMMENT '用户名',
    `PASSWORD_ENCRYPTED` varchar(40) COMMENT '加密过的密码',
    `EMAIL` varchar(150) COMMENT '邮箱地址',
    `PHONE` varchar(40) COMMENT '电话号码',
    `START_ACTIVE_DATE` datetime COMMENT '有效期从',
    `END_ACTIVE_DATE` datetime COMMENT '有效期至',
    `STATUS` varchar(30) COMMENT '状态',
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
    PRIMARY KEY(`USER_ID`)
) COMMENT = '用户表';
alter table `SYS_USER` change `PHONE` `PHONE` varchar(40) binary;
alter table `SYS_USER` change `EMAIL` `EMAIL` varchar(150) binary;
alter table `SYS_USER` change `STATUS` `STATUS` varchar(30) binary;
alter table `SYS_USER` change `PASSWORD_ENCRYPTED` `PASSWORD_ENCRYPTED` varchar(40) binary;
alter table `SYS_USER` change `USER_NAME` `USER_NAME` varchar(40) binary;
alter table `SYS_USER` change `USER_TYPE` `USER_TYPE` varchar(30) binary;
