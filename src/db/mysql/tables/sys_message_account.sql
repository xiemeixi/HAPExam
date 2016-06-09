DROP TABLE IF EXISTS SYS_MESSAGE_ACCOUNT;
CREATE TABLE `SYS_MESSAGE_ACCOUNT`(
    `ACCOUNT_ID` bigint AUTO_INCREMENT COMMENT '主键',
    `ACCOUNT_TYPE` varchar(50) COMMENT '账号类型',
    `ACCOUNT_CODE` varchar(50) COMMENT '编号',
    `USER_NAME` varchar(240) COMMENT '用户名',
    `PASSWORD` varchar(240) COMMENT '密码',
    `DESCRIPTION` varchar(240) COMMENT '描述',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1     ,
    `REQUEST_ID` bigint DEFAULT -1    ,
    `PROGRAM_ID` bigint DEFAULT -1    ,
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
    PRIMARY KEY(`ACCOUNT_ID`)
) COMMENT = '邮件账号表';
alter table `SYS_MESSAGE_ACCOUNT` change `ACCOUNT_TYPE` `ACCOUNT_TYPE` varchar(50) binary;
alter table `SYS_MESSAGE_ACCOUNT` change `DESCRIPTION` `DESCRIPTION` varchar(240) binary;
alter table `SYS_MESSAGE_ACCOUNT` change `USER_NAME` `USER_NAME` varchar(240) binary;
alter table `SYS_MESSAGE_ACCOUNT` change `PASSWORD` `PASSWORD` varchar(240) binary;
alter table `SYS_MESSAGE_ACCOUNT` change `ACCOUNT_CODE` `ACCOUNT_CODE` varchar(50) binary;
