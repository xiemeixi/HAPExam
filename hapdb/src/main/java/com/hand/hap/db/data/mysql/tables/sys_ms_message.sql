DROP TABLE IF EXISTS SYS_MS_MESSAGE;
CREATE TABLE `SYS_MS_MESSAGE`(
    `MS_MESSAGE_ID` bigint AUTO_INCREMENT COMMENT '表ID，主键，供其他表做外键',
    `MESSAGE_NAME` varchar(40) COMMENT '消息名称',
    `MESSAGE_TYPE` varchar(5) COMMENT '消息类型',
    `MESSAGE_STATUS` varchar(5) COMMENT '消息状态',
    `PUBLISH_CHANNEL` varchar(5) COMMENT '发布渠道',
    `PUBLISH_DATE_TYPE` varchar(5) COMMENT '发布时间类型（NOW或自定义）',
    `PUBLISH_DATE` datetime COMMENT '发布时间',
    `SENDER` decimal(20,0) COMMENT '发件人ID',
    `SENDER_CODE` varchar(30) COMMENT '发送人Code',
    `MESSAGE_CONTENT` longtext COMMENT '消息内容',
    `OBJECT_VERSION_NUMBER` decimal(20,0) DEFAULT 1  COMMENT '行版本号，用来处理锁',
    `REQUEST_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部请求id',
    `PROGRAM_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部程序id',
    `CREATION_DATE` datetime DEFAULT now() ,
    `CREATED_BY` decimal(20,0) DEFAULT -1 ,
    `LAST_UPDATED_BY` decimal(20,0) DEFAULT -1 ,
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
    PRIMARY KEY(`MS_MESSAGE_ID`)
) COMMENT = '消息定义';
alter table `SYS_MS_MESSAGE` change `SENDER_CODE` `SENDER_CODE` varchar(30) binary;
alter table `SYS_MS_MESSAGE` change `MESSAGE_NAME` `MESSAGE_NAME` varchar(40) binary;
alter table `SYS_MS_MESSAGE` change `PUBLISH_DATE_TYPE` `PUBLISH_DATE_TYPE` varchar(5) binary;
alter table `SYS_MS_MESSAGE` change `MESSAGE_TYPE` `MESSAGE_TYPE` varchar(5) binary;
alter table `SYS_MS_MESSAGE` change `MESSAGE_STATUS` `MESSAGE_STATUS` varchar(5) binary;
alter table `SYS_MS_MESSAGE` change `PUBLISH_CHANNEL` `PUBLISH_CHANNEL` varchar(5) binary;

