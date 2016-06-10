DROP TABLE IF EXISTS SYS_MESSAGE_RECEIVER;
CREATE TABLE `SYS_MESSAGE_RECEIVER`(
  `RECEIVER_ID` bigint AUTO_INCREMENT COMMENT '主键',
  `MESSAGE_ID` bigint COMMENT '消息id',
  `MESSAGE_TYPE` varchar(25) COMMENT '消息类型,抄送/普通',
  `MESSAGE_ADDRESS` varchar(255) COMMENT '消息地址,邮箱/手机号',
  `OBJECT_VERSION_NUMBER` bigint DEFAULT 1  COMMENT 'Record的版本号，每发生update则自增',
  `REQUEST_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部请求id',
  `PROGRAM_ID` bigint DEFAULT -1  COMMENT '对Record最后一次操作的系统内部程序id',
  `CREATED_BY` bigint DEFAULT -1  COMMENT '被用户创建',
  `CREATION_DATE` datetime DEFAULT now()  COMMENT '创建日期',
  `LAST_UPDATED_BY` bigint DEFAULT -1  COMMENT '最后被用户修改',
  `LAST_UPDATE_DATE` datetime DEFAULT now()  COMMENT '最后修改日期',
  `ATTRIBUTE1` varchar(255) COMMENT '属性1',
  `ATTRIBUTE2` varchar(255) COMMENT '属性2',
  `ATTRIBUTE3` varchar(255) COMMENT '属性3',
  `ATTRIBUTE4` varchar(255) COMMENT '属性4',
  `ATTRIBUTE5` varchar(255) COMMENT '属性5',
  `ATTRIBUTE6` varchar(255) COMMENT '属性6',
  `ATTRIBUTE7` varchar(255) COMMENT '属性7',
  `ATTRIBUTE8` varchar(255) COMMENT '属性8',
  `ATTRIBUTE9` varchar(255) COMMENT '属性9',
  `ATTRIBUTE10` varchar(255) COMMENT '属性10',
  `ATTRIBUTE11` varchar(255) COMMENT '属性11',
  `ATTRIBUTE12` varchar(255) COMMENT '属性12',
  `ATTRIBUTE13` varchar(255) COMMENT '属性13',
  `ATTRIBUTE14` varchar(255) COMMENT '属性14',
  `ATTRIBUTE15` varchar(255) COMMENT '属性15',
  PRIMARY KEY(`RECEIVER_ID`),
  KEY `SYS_MESSAGE_RECEIVER_N1`(`MESSAGE_ID`)
) COMMENT = '消息收件人表';
alter table `SYS_MESSAGE_RECEIVER` change `MESSAGE_ADDRESS` `MESSAGE_ADDRESS` varchar(255) binary;
alter table `SYS_MESSAGE_RECEIVER` change `MESSAGE_TYPE` `MESSAGE_TYPE` varchar(25) binary;

