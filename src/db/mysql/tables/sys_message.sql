DROP TABLE IF EXISTS SYS_MESSAGE;
CREATE TABLE `SYS_MESSAGE`(
    `MESSAGE_ID` bigint AUTO_INCREMENT COMMENT '主键',
    `MESSAGE_TYPE` varchar(10) COMMENT '信息类型,email/sms',
    `MESSAGE_HOST` varchar(255) COMMENT '消息服务器',
    `MESSAGE_FROM` varchar(255) COMMENT '消息发出人',
    `SUBJECT` varchar(255) COMMENT '标题',
    `CONTENT` longtext COMMENT '内容',
    `PRIORITY_LEVEL` varchar(25) COMMENT '优先级',
    `SEND_FLAG` varchar(1) DEFAULT 'N'  COMMENT '发送标记',
    `MESSAGE_SOURCE` varchar(255) COMMENT '消息来源',
    `OBJECT_VERSION_NUMBER` bigint DEFAULT 1    ,
    `REQUEST_ID` bigint DEFAULT -1   ,
    `PROGRAM_ID` bigint DEFAULT -1   ,
    `CREATED_BY` bigint DEFAULT -1   ,
    `CREATION_DATE` datetime DEFAULT now()    ,
    `LAST_UPDATED_BY` bigint DEFAULT -1   ,
    `LAST_UPDATE_DATE` datetime DEFAULT now()    ,
    `ATTRIBUTE1` varchar(255),
    `ATTRIBUTE2` varchar(255),
    `ATTRIBUTE3` varchar(255),
    `ATTRIBUTE4` varchar(255),
    `ATTRIBUTE5` varchar(255),
    `ATTRIBUTE6` varchar(255),
    `ATTRIBUTE7` varchar(255),
    `ATTRIBUTE8` varchar(255),
    `ATTRIBUTE9` varchar(255),
    `ATTRIBUTE10` varchar(255),
    `ATTRIBUTE11` varchar(255),
    `ATTRIBUTE12` varchar(255),
    `ATTRIBUTE13` varchar(255),
    `ATTRIBUTE14` varchar(255),
    `ATTRIBUTE15` varchar(255),
    PRIMARY KEY(`MESSAGE_ID`),
    KEY `SYS_MESSAGE_N1`(`MESSAGE_TYPE`)
) COMMENT = '消息表';
alter table `SYS_MESSAGE` change `MESSAGE_SOURCE` `MESSAGE_SOURCE` varchar(255) binary;
alter table `SYS_MESSAGE` change `MESSAGE_TYPE` `MESSAGE_TYPE` varchar(10) binary;
alter table `SYS_MESSAGE` change `PRIORITY_LEVEL` `PRIORITY_LEVEL` varchar(25) binary;
alter table `SYS_MESSAGE` change `SEND_FLAG` `SEND_FLAG` varchar(1) binary;
alter table `SYS_MESSAGE` change `MESSAGE_FROM` `MESSAGE_FROM` varchar(255) binary;
alter table `SYS_MESSAGE` change `MESSAGE_HOST` `MESSAGE_HOST` varchar(255) binary;
alter table `SYS_MESSAGE` change `SUBJECT` `SUBJECT` varchar(255) binary;
